import 'dart:async';

import 'package:makefile/src/entry_type.dart';
import 'package:makefile/src/makefile.dart';
import 'package:makefile/src/parsing_context.dart';
import 'package:makefile/src/qualifier.dart';
import 'package:pure/pure.dart';

/// - if else then
/// - variables with bodies
/// - define

class MakefileParser extends StreamTransformerBase<String, MakefileEntry> {
  const MakefileParser();

  static Iterable<String> _extractParts(Pattern qualifier, String line) =>
      line.split(qualifier).map((source) => source.trim());

  @override
  Stream<MakefileEntry> bind(Stream<String> stream) {
    StreamSubscription<String>? subscription;

    void onPause() {
      subscription?.pause();
    }

    void onResume() {
      subscription?.resume();
    }

    final context = ParsingContext();
    final controller = stream.isBroadcast
        ? StreamController<MakefileEntry>.broadcast(sync: true)
        : StreamController<MakefileEntry>(
            sync: true,
            onPause: onPause,
            onResume: onResume,
          );

    void finishEntry() {
      controller.add(context.assembleEntry());
      context.cleanState();
    }

    void processLine(String line) {
      final type = context.state.type;
      final contains = line.contains;
      final startsWith = line.startsWith;
      final isComment = startsWith(Qualifier.comment);
      final isVariable = contains(Qualifier.variable);
      final isTarget = contains(Qualifier.target);
      final isInclude = startsWith(Qualifier.include);
      final isStartOfEntry =
          [isComment, isVariable, isTarget, isInclude].any(id);
      void workOnParts(
        Pattern qualifier,
        EntryType type,
        void Function(Iterable<String> parts) body,
      ) {
        final parts = _extractParts(qualifier, line);
        context.setType(type);
        body(parts);
      }

      if (type != null && isStartOfEntry) {
        finishEntry();
      }
      if (isComment) {
        context.addComment(line.replaceAll(Qualifier.comment, '').trim());
      } else if (isVariable) {
        workOnParts(
          Qualifier.variable,
          EntryType.variable,
          (parts) => context
            ..setName(parts.elementAt(0))
            ..setValue(parts.elementAt(1)),
        );
      } else if (isTarget) {
        workOnParts(
          Qualifier.target,
          EntryType.target,
          (parts) => context
            ..setName(parts.elementAt(0))
            ..setPrerequisites(parts.elementAt(1).split(' ')),
        );
      } else if (isInclude) {
        workOnParts(
          Qualifier.include,
          EntryType.include,
          (parts) => context.setIncludeParts(parts.last.split(' ')),
        );
      } else if (type == EntryType.target) {
        context.addRecipe(line);
      }
    }

    void listener(String line) {
      if (line.isNotEmpty) processLine(line.trim());
    }

    Future<void> onCancel() async {
      await subscription?.cancel();
      await controller.close();
    }

    void onDone() {
      finishEntry();
      onCancel();
    }

    void onListen() {
      subscription = stream.listen(
        listener,
        onDone: onDone,
        onError: controller.addError,
      );
    }

    controller
      ..onListen = onListen
      ..onCancel = onCancel;

    return controller.stream;
  }
}
