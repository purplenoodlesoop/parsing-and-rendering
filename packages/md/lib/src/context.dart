import 'package:freezed_annotation/freezed_annotation.dart';

part 'context.freezed.dart';

@freezed
class Nesting with _$Nesting {
  const factory Nesting({
    @Default(0) int section,
    @Default(0) int list,
  }) = _Nesting;
}

@freezed
class Context with _$Context {
  const factory Context({
    @Default(Nesting()) Nesting nesting,
    int? orderedListEntryCount,
  }) = _Context;
}
