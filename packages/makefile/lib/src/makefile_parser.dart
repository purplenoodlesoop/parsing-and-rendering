import 'dart:async';

import 'package:makefile/src/entry_type.dart';
import 'package:makefile/src/makefile_entry.dart';
import 'package:makefile/src/parsing_context.dart';
import 'package:makefile/src/qualifier.dart';
import 'package:pure/pure.dart';

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
    final setType = context.setType;
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
      final trimmed = line.trim();
      final type = context.state.type;
      final contains = trimmed.contains;
      final startsWith = trimmed.startsWith;

      final isComment = startsWith(Qualifier.comment);
      final isVariable = contains(Qualifier.variable);
      final isTarget = contains(Qualifier.target);
      final isInclude = startsWith(Qualifier.include);
      final isIfeq = startsWith(Qualifier.conditionalIfeq);
      final isElse = startsWith(Qualifier.conditionalElse);
      final isEndif = startsWith(Qualifier.conditionalEndif);

      final isStartOfEntry =
          [isComment, isVariable, isTarget, isInclude, isIfeq].any(id) &&
              !line.startsWith('\t');

      void workOnParts(
        Pattern qualifier,
        EntryType type,
        void Function(Iterable<String> parts) body,
      ) {
        setType(type);
        body(
          _extractParts(qualifier, trimmed),
        );
      }

      if (type != null && isStartOfEntry) {
        finishEntry();
      }
      if (isComment) {
        context.addComment(trimmed.replaceAll(Qualifier.comment, '').trim());
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
      } else if (isIfeq) {
        workOnParts(
          Qualifier.conditionalIfeq,
          EntryType.conditionalIfeq,
          (parts) {
            final trimmed = parts.last.trim();

            context.setCondition(
              trimmed.substring(1, trimmed.length - 1),
            );
          },
        );
      } else if (isElse) {
        setType(EntryType.conditionalElse);
      } else if (isEndif) {
        setType(EntryType.conditionalEndif);
      } else {
        type
            ?.whenConst<void Function(String)?>(
              variable: null,
              target: context.addRecipe,
              include: null,
              conditionalIfeq: context.addIfeqLine,
              conditionalElse: context.addElseLine,
              conditionalEndif: null,
            )
            ?.call(trimmed);
      }
    }

    void listener(String line) {
      if (line.isNotEmpty) processLine(line);
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
