import 'package:md/src/context.dart';
import 'package:md/src/markdown.dart';
import 'package:pure/pure.dart';

Iterable<Object> _renderAsListEntry(
  Context context,
  Iterable<String> Function() write,
) sync* {
  final listNesting = context.nesting.list;

  if (listNesting != 0) {
    yield* Iterable<String>.generate(listNesting - 1, '\t'.constant);
    yield context.orderedListEntryCount?.pipe((count) => '$count.') ?? '-';
    yield ' ';
  }

  yield* write();
}

Iterable<Object> _renderText(
  Context context,
  String text,
  TextStyle? style,
) {
  final surround = style?.whenConst(
    bold: '*',
    italic: '_',
    code: '`',
  );

  return _renderAsListEntry(
    context,
    () => [
      if (surround != null) surround,
      text,
      if (surround != null) surround,
      '\n',
    ],
  );
}

Iterable<Object> _renderSection(
  Context context,
  String header,
  List<Markdown> children,
) sync* {
  final newSectionsNesting = context.nesting.section + 1;
  final newContext = context.copyWith.nesting(section: newSectionsNesting);

  yield* Iterable<String>.generate(newSectionsNesting, '#'.constant);
  yield ' ';
  yield header;
  yield '\n\n';

  yield* children.expand(
    _render.apply(newContext),
  );

  yield '\n';
}

Iterable<Object> _renderList(
  Context context,
  ListStyle style,
  List<Markdown> entries,
) sync* {
  var listsCount = 0;

  for (var i = 0; i < entries.length; i++) {
    final entry = entries.elementAt(i);

    if (entry is MarkdownList) listsCount++;

    yield* _render(
      context.copyWith(
        nesting: context.nesting.copyWith(list: context.nesting.list + 1),
        orderedListEntryCount: style.when(
          ordered: () => i - listsCount + 1,
          unordered: () => null,
        ),
      ),
      entry,
    );
  }
}

Iterable<Object> _renderLink(
  Context context,
  String label,
  String destination,
) =>
    _renderAsListEntry(
      context,
      () => ['[', label, '](', destination, ')\n'],
    );

Iterable<String> _renderCode(
  String code,
  String? language,
) =>
    [
      '```',
      if (language != null) language,
      '\n',
      code,
      '\n',
      '```',
    ];

Iterable<Object> _render(Context context, Markdown node) => node.when(
      text: _renderText.apply(context),
      section: _renderSection.apply(context),
      list: _renderList.apply(context),
      link: _renderLink.apply(context),
      code: _renderCode,
    );

String renderNode(Markdown node) {
  final buffer = StringBuffer();

  _render(const Context(), node).pipe(buffer.writeAll);

  return buffer.toString();
}
