// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:makefile/src/makefile_parser.dart';

Future<void> main() async {
  await File('./Makefile')
      .openRead()
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .transform(const MakefileParser())
      .forEach(print);
}
