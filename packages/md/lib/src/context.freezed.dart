// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Nesting {
  int get section => throw _privateConstructorUsedError;
  int get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NestingCopyWith<Nesting> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NestingCopyWith<$Res> {
  factory $NestingCopyWith(Nesting value, $Res Function(Nesting) then) =
      _$NestingCopyWithImpl<$Res>;
  $Res call({int section, int list});
}

/// @nodoc
class _$NestingCopyWithImpl<$Res> implements $NestingCopyWith<$Res> {
  _$NestingCopyWithImpl(this._value, this._then);

  final Nesting _value;
  // ignore: unused_field
  final $Res Function(Nesting) _then;

  @override
  $Res call({
    Object? section = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      section: section == freezed
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as int,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_NestingCopyWith<$Res> implements $NestingCopyWith<$Res> {
  factory _$$_NestingCopyWith(
          _$_Nesting value, $Res Function(_$_Nesting) then) =
      __$$_NestingCopyWithImpl<$Res>;
  @override
  $Res call({int section, int list});
}

/// @nodoc
class __$$_NestingCopyWithImpl<$Res> extends _$NestingCopyWithImpl<$Res>
    implements _$$_NestingCopyWith<$Res> {
  __$$_NestingCopyWithImpl(_$_Nesting _value, $Res Function(_$_Nesting) _then)
      : super(_value, (v) => _then(v as _$_Nesting));

  @override
  _$_Nesting get _value => super._value as _$_Nesting;

  @override
  $Res call({
    Object? section = freezed,
    Object? list = freezed,
  }) {
    return _then(_$_Nesting(
      section: section == freezed
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as int,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Nesting implements _Nesting {
  const _$_Nesting({this.section = 0, this.list = 0});

  @override
  @JsonKey()
  final int section;
  @override
  @JsonKey()
  final int list;

  @override
  String toString() {
    return 'Nesting(section: $section, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nesting &&
            const DeepCollectionEquality().equals(other.section, section) &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(section),
      const DeepCollectionEquality().hash(list));

  @JsonKey(ignore: true)
  @override
  _$$_NestingCopyWith<_$_Nesting> get copyWith =>
      __$$_NestingCopyWithImpl<_$_Nesting>(this, _$identity);
}

abstract class _Nesting implements Nesting {
  const factory _Nesting({final int section, final int list}) = _$_Nesting;

  @override
  int get section;
  @override
  int get list;
  @override
  @JsonKey(ignore: true)
  _$$_NestingCopyWith<_$_Nesting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Context {
  Nesting get nesting => throw _privateConstructorUsedError;
  int? get orderedListEntryCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContextCopyWith<Context> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextCopyWith<$Res> {
  factory $ContextCopyWith(Context value, $Res Function(Context) then) =
      _$ContextCopyWithImpl<$Res>;
  $Res call({Nesting nesting, int? orderedListEntryCount});

  $NestingCopyWith<$Res> get nesting;
}

/// @nodoc
class _$ContextCopyWithImpl<$Res> implements $ContextCopyWith<$Res> {
  _$ContextCopyWithImpl(this._value, this._then);

  final Context _value;
  // ignore: unused_field
  final $Res Function(Context) _then;

  @override
  $Res call({
    Object? nesting = freezed,
    Object? orderedListEntryCount = freezed,
  }) {
    return _then(_value.copyWith(
      nesting: nesting == freezed
          ? _value.nesting
          : nesting // ignore: cast_nullable_to_non_nullable
              as Nesting,
      orderedListEntryCount: orderedListEntryCount == freezed
          ? _value.orderedListEntryCount
          : orderedListEntryCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $NestingCopyWith<$Res> get nesting {
    return $NestingCopyWith<$Res>(_value.nesting, (value) {
      return _then(_value.copyWith(nesting: value));
    });
  }
}

/// @nodoc
abstract class _$$_ContextCopyWith<$Res> implements $ContextCopyWith<$Res> {
  factory _$$_ContextCopyWith(
          _$_Context value, $Res Function(_$_Context) then) =
      __$$_ContextCopyWithImpl<$Res>;
  @override
  $Res call({Nesting nesting, int? orderedListEntryCount});

  @override
  $NestingCopyWith<$Res> get nesting;
}

/// @nodoc
class __$$_ContextCopyWithImpl<$Res> extends _$ContextCopyWithImpl<$Res>
    implements _$$_ContextCopyWith<$Res> {
  __$$_ContextCopyWithImpl(_$_Context _value, $Res Function(_$_Context) _then)
      : super(_value, (v) => _then(v as _$_Context));

  @override
  _$_Context get _value => super._value as _$_Context;

  @override
  $Res call({
    Object? nesting = freezed,
    Object? orderedListEntryCount = freezed,
  }) {
    return _then(_$_Context(
      nesting: nesting == freezed
          ? _value.nesting
          : nesting // ignore: cast_nullable_to_non_nullable
              as Nesting,
      orderedListEntryCount: orderedListEntryCount == freezed
          ? _value.orderedListEntryCount
          : orderedListEntryCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Context implements _Context {
  const _$_Context(
      {this.nesting = const Nesting(), this.orderedListEntryCount});

  @override
  @JsonKey()
  final Nesting nesting;
  @override
  final int? orderedListEntryCount;

  @override
  String toString() {
    return 'Context(nesting: $nesting, orderedListEntryCount: $orderedListEntryCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Context &&
            const DeepCollectionEquality().equals(other.nesting, nesting) &&
            const DeepCollectionEquality()
                .equals(other.orderedListEntryCount, orderedListEntryCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nesting),
      const DeepCollectionEquality().hash(orderedListEntryCount));

  @JsonKey(ignore: true)
  @override
  _$$_ContextCopyWith<_$_Context> get copyWith =>
      __$$_ContextCopyWithImpl<_$_Context>(this, _$identity);
}

abstract class _Context implements Context {
  const factory _Context(
      {final Nesting nesting, final int? orderedListEntryCount}) = _$_Context;

  @override
  Nesting get nesting;
  @override
  int? get orderedListEntryCount;
  @override
  @JsonKey(ignore: true)
  _$$_ContextCopyWith<_$_Context> get copyWith =>
      throw _privateConstructorUsedError;
}
