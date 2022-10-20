// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'entry_type.dart';

// **************************************************************************
// MatcherGenerator
// **************************************************************************

extension $EntryTypeMatcherExtension on EntryType {
  T when<T>({
    required T Function() variable,
    required T Function() target,
    required T Function() include,
  }) {
    switch (this) {
      case EntryType.variable:
        return variable();
      case EntryType.target:
        return target();
      case EntryType.include:
        return include();
    }
  }

  T whenConst<T>({
    required T variable,
    required T target,
    required T include,
  }) {
    switch (this) {
      case EntryType.variable:
        return variable;
      case EntryType.target:
        return target;
      case EntryType.include:
        return include;
    }
  }
}
