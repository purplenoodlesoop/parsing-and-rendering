import 'package:makefile/src/entry_type.dart';
import 'package:makefile/src/makefile.dart';
import 'package:makefile/src/parser_state.dart';

class ParsingContext {
  ParserState _state = const ParserState();
  ParserState get state => _state;

  MetaInfo get _currentMeta =>
      state.info ?? const MetaInfo(name: '', comments: []);

  void setType(EntryType type) {
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

  void setIncludeParts(List<String> parts) {
    _state = _state.copyWith(
      includeParts: parts,
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
    _state = const ParserState();
  }

  MakefileEntry assembleEntry() {
    final type = state.type;
    assert(type != null, 'Finished entry without determined context');
    late final info = state.info!;

    return type!.when(
      variable: () => MakefileEntry.variable(
        info: info,
        value: state.value!,
      ),
      target: () => MakefileEntry.target(
        info: info,
        prerequisites: state.prerequisites,
        recipe: state.recipe,
      ),
      include: () => MakefileEntry.include(
        parts: state.includeParts,
      ),
    );
  }
}
