import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:select_annotation/select_annotation.dart';

part 'markdown.freezed.dart';
part 'markdown.select.dart';

@matchable
enum TextStyle {
  bold,
  italic,
  code,
}

@matchable
enum ListStyle {
  ordered,
  unordered,
}

@freezed
class Markdown with _$Markdown {
  const factory Markdown.text({
    required String data,
    TextStyle? style,
  }) = MarkdownText;

  const factory Markdown.section({
    required String header,
    @Default(<Markdown>[]) List<Markdown> children,
  }) = MarkdownSection;

  const factory Markdown.list({
    required ListStyle style,
    required List<Markdown> children,
  }) = MarkdownList;

  const factory Markdown.link({
    required String label,
    required String destination,
  }) = MarkdownLink;

  const factory Markdown.code({
    required List<String> data,
    String? language,
  }) = MarkdownCode;
}
