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
class MakefileEntry with _$MakefileEntry {
  const factory MakefileEntry.variable({
    required MetaInfo info,
    required String value,
  }) = MakefileEntryVariable;

  const factory MakefileEntry.target({
    required MetaInfo info,
    required List<String> prerequisites,
    required List<String> recipe,
  }) = MakefileEntryTarget;

  const factory MakefileEntry.include({
    required List<String> parts,
  }) = MakefileEntryInclude;

  const factory MakefileEntry.conditional({
    required String condition,
    required List<String> onIf,
    required List<String> onElse,
  }) = MakefileEntryConditional;
}
