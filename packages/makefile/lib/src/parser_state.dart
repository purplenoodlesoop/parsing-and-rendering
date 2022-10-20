import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:makefile/src/entry_type.dart';
import 'package:makefile/src/makefile.dart';

part 'parser_state.freezed.dart';

@freezed
class ParserState with _$ParserState {
  const factory ParserState({
    EntryType? type,
    MetaInfo? info,
    String? value,
    @Default(<String>[]) List<String> prerequisites,
    @Default(<String>[]) List<String> recipe,
    @Default(<String>[]) List<String> includeParts,
  }) = _ParserState;
}
