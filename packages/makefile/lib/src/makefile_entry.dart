import 'package:freezed_annotation/freezed_annotation.dart';

part 'makefile_entry.freezed.dart';

@freezed
class MetaInfo with _$MetaInfo {
  const factory MetaInfo({
    required List<String> comments,
    required String name,
  }) = _MetaInfo;
}

@freezed
class Makefile with _$Makefile {
  const factory Makefile.variable({
    required MetaInfo info,
    required String value,
  }) = MakefileVariable;

  const factory Makefile.target({
    required MetaInfo info,
    required List<String> prerequisites,
    required List<String> recipe,
  }) = MakefileTarget;

  const factory Makefile.include({
    required List<String> parts,
  }) = MakefileInclude;

  const factory Makefile.conditional({
    required String condition,
    required List<String> onIf,
    required List<String> onElse,
  }) = MakefileConditional;
}
