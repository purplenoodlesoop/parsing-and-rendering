// ignore_for_file: unused_element

import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:makefile/src/makefile.dart';

part 'makefile_parser.freezed.dart';

enum _EntryType {
  variable,
  target,
}

@freezed
class _State with _$_State {
  const factory _State({
    _EntryType? type,
    MetaInfo? info,
    String? value,
    @Default(<String>[]) List<String> prerequisites,
    @Default(<String>[]) List<String> recipe,
  }) = __State;
}

class _Context {
  _State _state = const _State();
  _State get state => _state;

  MetaInfo get _currentMeta =>
      state.info ?? const MetaInfo(name: '', comments: []);

  void setType(_EntryType type) {
    _state = _state.copyWith(type: type);
  }

  void setName(String name) {
    _state = _state.copyWith(
      info: _currentMeta.copyWith(name: name),
    );
  }

  void addComment(String comment) {
    _state = _state.copyWith(
      info: _currentMeta.copyWith(
        comments: [
          ..._currentMeta.comments,
          comment,
        ],
      ),
    );
  }

  void setValue(String value) {
    _state = _state.copyWith(value: value);
  }

  void setPrerequisites(List<String> prerequisites) {
    _state = _state.copyWith(
      prerequisites: prerequisites,
    );
  }

  void addRecipe(String recipe) {
    _state = _state.copyWith(
      recipe: [
        ..._state.recipe,
        recipe,
      ],
    );
  }

  void cleanState() {
    _state = const _State();
  }
}

mixin _Qualifier {
  static String comment = '#';
  static String variable = '=';
  static String target = ':';
}

class MakefileParser extends StreamTransformerBase<String, MakefileEntry> {
  const MakefileParser();

  static String _trim(String source) => source.trim();

  static Iterable<String> _extractParts(String qualifier, String line) =>
      line.split(qualifier).map(_trim);

  static MakefileEntry _assembleEntry(_State state) {
    final type = state.type;
    assert(type != null, 'Finished entry without determined context');
    final info = state.info!;

    return type == _EntryType.variable
        ? MakefileEntry.variable(
            info: info,
            value: state.value!,
          )
        : MakefileEntry.target(
            info: info,
            prerequisites: state.prerequisites,
            recipe: state.recipe,
          );
  }

  @override
  Stream<MakefileEntry> bind(Stream<String> stream) {
    final context = _Context();
    StreamSubscription<String>? subscription;

    void onPause() {
      subscription?.pause();
    }

    void onResume() {
      subscription?.resume();
    }

    final controller = stream.isBroadcast
        ? StreamController<MakefileEntry>.broadcast(sync: true)
        : StreamController<MakefileEntry>(
            sync: true,
            onPause: onPause,
            onResume: onResume,
          );

    void finishEntry() {
      controller.add(_assembleEntry(context.state));
      context.cleanState();
    }

    Future<void> onCancel() async {
      await subscription?.cancel();
      await controller.close();
    }

    void listener(String line) {
      if (line.isNotEmpty) {
        final type = context.state.type;
        final trimmed = line.trim();
        final contains = trimmed.contains;
        final isComment = trimmed.startsWith(_Qualifier.comment);
        final isVariable = contains(_Qualifier.variable);
        final isTarget = contains(_Qualifier.target);
        if (type != null && (isComment || isVariable || isTarget)) {
          finishEntry();
        }
        if (isComment) {
          context.addComment(trimmed.replaceAll(_Qualifier.comment, '').trim());
        } else if (isVariable) {
          final parts = _extractParts(_Qualifier.variable, trimmed);
          context
            ..setType(_EntryType.variable)
            ..setName(parts.elementAt(0))
            ..setValue(parts.elementAt(1));
        } else if (isTarget) {
          final parts = _extractParts(_Qualifier.target, trimmed);
          context
            ..setType(_EntryType.target)
            ..setName(parts.elementAt(0))
            ..setPrerequisites(parts.elementAt(1).split(' '));
        } else if (type == _EntryType.target) {
          context.addRecipe(trimmed);
        }
      }
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
