import 'package:makefile/src/entry_type.dart';
import 'package:makefile/src/makefile_entry.dart';
import 'package:makefile/src/parser_state.dart';

class ParsingContext {
  ParserState _state = const ParserState();
  ParserState get state => _state;

  MetaInfo get _currentMeta =>
      state.info ?? const MetaInfo(name: '', comments: []);

  EntryType? get _type => state.type;

  Never _incorrectAssembly() => throw StateError(
        'Incorrect assembly: cant assemble entry in $_type state',
      );

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
      recipe: [..._state.recipe, recipe],
    );
  }

  void setCondition(String condition) {
    _state = _state.copyWith(condition: condition);
  }

  void addIfeqLine(String line) {
    _state = _state.copyWith(
      onIf: [..._state.onIf, line],
    );
  }

  void addElseLine(String line) {
    _state = _state.copyWith(
      onElse: [..._state.onElse, line],
    );
  }

  void cleanState() {
    _state = const ParserState();
  }

  Makefile assembleEntry() {
    assert(_type != null, 'Finished entry without determined context');
    late final info = state.info!;

    return _type!.when(
      variable: () => Makefile.variable(
        info: info,
        value: state.value!,
      ),
      target: () => Makefile.target(
        info: info,
        prerequisites: state.prerequisites,
        recipe: state.recipe,
      ),
      include: () => Makefile.include(
        parts: state.includeParts,
      ),
      conditionalIfeq: _incorrectAssembly,
      conditionalElse: _incorrectAssembly,
      conditionalEndif: () => Makefile.conditional(
        condition: state.condition!,
        onIf: state.onIf,
        onElse: state.onElse,
      ),
    );
  }
}
