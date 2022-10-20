import 'dart:async';

import 'package:makefile/src/entry_type.dart';
import 'package:makefile/src/makefile.dart';
import 'package:makefile/src/parsing_context.dart';
import 'package:makefile/src/qualifier.dart';
import 'package:pure/pure.dart';

/// - All equals
/// - `include`
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
      final isComment = line.startsWith(Qualifier.comment);
      final isVariable = Qualifier.variable.map(contains).any(id);
      final isTarget = contains(Qualifier.target);
      if (type != null && (isComment || isVariable || isTarget)) {
        finishEntry();
      }
      if (isComment) {
        context.addComment(line.replaceAll(Qualifier.comment, '').trim());
      } else if (isVariable) {
        final parts = _extractParts(
          RegExp(
            Qualifier.variable
                .map((e) => e.startsWith(RegExp(r'\?|\+')) ? '\\$e' : e)
                .join('|'),
          ),
          line,
        );
        context
          ..setType(EntryType.variable)
          ..setName(parts.elementAt(0))
          ..setValue(parts.elementAt(1));
      } else if (isTarget) {
        final parts = _extractParts(Qualifier.target, line);
        context
          ..setType(EntryType.target)
          ..setName(parts.elementAt(0))
          ..setPrerequisites(parts.elementAt(1).split(' '));
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
