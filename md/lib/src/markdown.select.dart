// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'markdown.dart';

// **************************************************************************
// MatcherGenerator
// **************************************************************************

extension $TextStyleMatcherExtension on TextStyle {
  T when<T>({
    required T Function() bold,
    required T Function() italic,
    required T Function() code,
  }) {
    switch (this) {
      case TextStyle.bold:
        return bold();
      case TextStyle.italic:
        return italic();
      case TextStyle.code:
        return code();
    }
  }

  T whenConst<T>({
    required T bold,
    required T italic,
    required T code,
  }) {
    switch (this) {
      case TextStyle.bold:
        return bold;
      case TextStyle.italic:
        return italic;
      case TextStyle.code:
        return code;
    }
  }
}

extension $ListStyleMatcherExtension on ListStyle {
  T when<T>({
    required T Function() ordered,
    required T Function() unordered,
  }) {
    switch (this) {
      case ListStyle.ordered:
        return ordered();
      case ListStyle.unordered:
        return unordered();
    }
  }

  T whenConst<T>({
    required T ordered,
    required T unordered,
  }) {
    switch (this) {
      case ListStyle.ordered:
        return ordered;
      case ListStyle.unordered:
        return unordered;
    }
  }
}
