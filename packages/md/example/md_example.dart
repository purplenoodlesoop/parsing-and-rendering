import 'dart:io';

import 'package:md/md.dart';

Markdown exampleMarkdown() => const Markdown.section(
      header: 'Example',
      children: [
        Markdown.text(data: 'Example generated markdown'),
        Markdown.text(data: ''),
        Markdown.section(
          header: 'Text',
          children: [
            Markdown.text(data: 'Regular'),
            Markdown.text(data: 'Bold', style: TextStyle.bold),
            Markdown.text(data: 'Italic', style: TextStyle.italic),
            Markdown.text(data: 'Code', style: TextStyle.code),
          ],
        ),
        Markdown.section(
          header: 'List',
          children: [
            Markdown.list(
              style: ListStyle.ordered,
              children: [
                Markdown.text(data: 'First'),
                Markdown.text(data: 'Second'),
                Markdown.list(
                  style: ListStyle.ordered,
                  children: [
                    Markdown.text(data: 'Inner'),
                    Markdown.text(data: 'Ordered'),
                    Markdown.text(data: 'List'),
                  ],
                ),
                Markdown.link(label: 'Link', destination: '#link'),
                Markdown.list(
                  style: ListStyle.unordered,
                  children: [
                    Markdown.text(data: 'Inner'),
                    Markdown.text(data: 'Unordered'),
                    Markdown.text(data: 'List'),
                  ],
                ),
              ],
            ),
          ],
        ),
        Markdown.section(
          header: 'Code',
          children: [
            Markdown.text(data: 'And also some code'),
            Markdown.text(data: ''),
            Markdown.code(
              language: 'dart',
              data: [
                'void main() {',
                '  print("Hello, World!");',
                '}',
              ],
            )
          ],
        ),
      ],
    );

Future<void> main() {
  final example = exampleMarkdown();
  final file = File('./example.md');

  return file.writeAsString(renderMarkdown(example));
}
