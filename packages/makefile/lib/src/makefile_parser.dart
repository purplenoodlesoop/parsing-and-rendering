// ignore_for_file: unused_element

import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:makefile/src/makefile.dart';
import 'package:shared/shared.dart';

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

class MakefileParser
    extends RedirectingStreamTransformer<String, MakefileEntry> {
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
  Translator<String, MakefileEntry> createTranslator() {
    final context = _Context();

    void finishEntry(EventSink<MakefileEntry> sink) {
      sink.add(_assembleEntry(context.state));
      context.cleanState();
    }

    return (line, sink) {
      if (line.isNotEmpty) {
        final type = context.state.type;
        final trimmed = line.trim();
        final contains = trimmed.contains;
        final isComment = trimmed.startsWith(_Qualifier.comment);
        final isVariable = contains(_Qualifier.variable);
        final isTarget = contains(_Qualifier.target);
        if (type != null && (isComment || isVariable || isTarget)) {
          finishEntry(sink);
        }
        if (isComment) {
          context.addComment(trimmed.replaceAll(_Qualifier.comment, ''));
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
    };
  }
}
