// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parser_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParserState {
  EntryType? get type => throw _privateConstructorUsedError;
  MetaInfo? get info => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  List<String> get prerequisites => throw _privateConstructorUsedError;
  List<String> get recipe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParserStateCopyWith<ParserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParserStateCopyWith<$Res> {
  factory $ParserStateCopyWith(
          ParserState value, $Res Function(ParserState) then) =
      _$ParserStateCopyWithImpl<$Res>;
  $Res call(
      {EntryType? type,
      MetaInfo? info,
      String? value,
      List<String> prerequisites,
      List<String> recipe});

  $MetaInfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$ParserStateCopyWithImpl<$Res> implements $ParserStateCopyWith<$Res> {
  _$ParserStateCopyWithImpl(this._value, this._then);

  final ParserState _value;
  // ignore: unused_field
  final $Res Function(ParserState) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? info = freezed,
    Object? value = freezed,
    Object? prerequisites = freezed,
    Object? recipe = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntryType?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as MetaInfo?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisites: prerequisites == freezed
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $MetaInfoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $MetaInfoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$$_ParserStateCopyWith<$Res>
    implements $ParserStateCopyWith<$Res> {
  factory _$$_ParserStateCopyWith(
          _$_ParserState value, $Res Function(_$_ParserState) then) =
      __$$_ParserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EntryType? type,
      MetaInfo? info,
      String? value,
      List<String> prerequisites,
      List<String> recipe});

  @override
  $MetaInfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$_ParserStateCopyWithImpl<$Res> extends _$ParserStateCopyWithImpl<$Res>
    implements _$$_ParserStateCopyWith<$Res> {
  __$$_ParserStateCopyWithImpl(
      _$_ParserState _value, $Res Function(_$_ParserState) _then)
      : super(_value, (v) => _then(v as _$_ParserState));

  @override
  _$_ParserState get _value => super._value as _$_ParserState;

  @override
  $Res call({
    Object? type = freezed,
    Object? info = freezed,
    Object? value = freezed,
    Object? prerequisites = freezed,
    Object? recipe = freezed,
  }) {
    return _then(_$_ParserState(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntryType?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as MetaInfo?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisites: prerequisites == freezed
          ? _value._prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recipe: recipe == freezed
          ? _value._recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ParserState implements _ParserState {
  const _$_ParserState(
      {this.type,
      this.info,
      this.value,
      final List<String> prerequisites = const <String>[],
      final List<String> recipe = const <String>[]})
      : _prerequisites = prerequisites,
        _recipe = recipe;

  @override
  final EntryType? type;
  @override
  final MetaInfo? info;
  @override
  final String? value;
  final List<String> _prerequisites;
  @override
  @JsonKey()
  List<String> get prerequisites {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prerequisites);
  }

  final List<String> _recipe;
  @override
  @JsonKey()
  List<String> get recipe {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipe);
  }

  @override
  String toString() {
    return 'ParserState(type: $type, info: $info, value: $value, prerequisites: $prerequisites, recipe: $recipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParserState &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other._prerequisites, _prerequisites) &&
            const DeepCollectionEquality().equals(other._recipe, _recipe));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(_prerequisites),
      const DeepCollectionEquality().hash(_recipe));

  @JsonKey(ignore: true)
  @override
  _$$_ParserStateCopyWith<_$_ParserState> get copyWith =>
      __$$_ParserStateCopyWithImpl<_$_ParserState>(this, _$identity);
}

abstract class _ParserState implements ParserState {
  const factory _ParserState(
      {final EntryType? type,
      final MetaInfo? info,
      final String? value,
      final List<String> prerequisites,
      final List<String> recipe}) = _$_ParserState;

  @override
  EntryType? get type;
  @override
  MetaInfo? get info;
  @override
  String? get value;
  @override
  List<String> get prerequisites;
  @override
  List<String> get recipe;
  @override
  @JsonKey(ignore: true)
  _$$_ParserStateCopyWith<_$_ParserState> get copyWith =>
      throw _privateConstructorUsedError;
}
