// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'makefile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MetaInfo {
  List<String> get comments => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MetaInfoCopyWith<MetaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaInfoCopyWith<$Res> {
  factory $MetaInfoCopyWith(MetaInfo value, $Res Function(MetaInfo) then) =
      _$MetaInfoCopyWithImpl<$Res>;
  $Res call({List<String> comments, String name});
}

/// @nodoc
class _$MetaInfoCopyWithImpl<$Res> implements $MetaInfoCopyWith<$Res> {
  _$MetaInfoCopyWithImpl(this._value, this._then);

  final MetaInfo _value;
  // ignore: unused_field
  final $Res Function(MetaInfo) _then;

  @override
  $Res call({
    Object? comments = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MetaInfoCopyWith<$Res> implements $MetaInfoCopyWith<$Res> {
  factory _$$_MetaInfoCopyWith(
          _$_MetaInfo value, $Res Function(_$_MetaInfo) then) =
      __$$_MetaInfoCopyWithImpl<$Res>;
  @override
  $Res call({List<String> comments, String name});
}

/// @nodoc
class __$$_MetaInfoCopyWithImpl<$Res> extends _$MetaInfoCopyWithImpl<$Res>
    implements _$$_MetaInfoCopyWith<$Res> {
  __$$_MetaInfoCopyWithImpl(
      _$_MetaInfo _value, $Res Function(_$_MetaInfo) _then)
      : super(_value, (v) => _then(v as _$_MetaInfo));

  @override
  _$_MetaInfo get _value => super._value as _$_MetaInfo;

  @override
  $Res call({
    Object? comments = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_MetaInfo(
      comments: comments == freezed
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MetaInfo implements _MetaInfo {
  const _$_MetaInfo({required final List<String> comments, required this.name})
      : _comments = comments;

  final List<String> _comments;
  @override
  List<String> get comments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final String name;

  @override
  String toString() {
    return 'MetaInfo(comments: $comments, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaInfo &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_MetaInfoCopyWith<_$_MetaInfo> get copyWith =>
      __$$_MetaInfoCopyWithImpl<_$_MetaInfo>(this, _$identity);
}

abstract class _MetaInfo implements MetaInfo {
  const factory _MetaInfo(
      {required final List<String> comments,
      required final String name}) = _$_MetaInfo;

  @override
  List<String> get comments;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MetaInfoCopyWith<_$_MetaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MakefileEntry {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MetaInfo info, String value) variable,
    required TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)
        target,
    required TResult Function(List<String> parts) include,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MetaInfo info, String value)? variable,
    TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)?
        target,
    TResult Function(List<String> parts)? include,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MetaInfo info, String value)? variable,
    TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)?
        target,
    TResult Function(List<String> parts)? include,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakefileEntryVariable value) variable,
    required TResult Function(MakefileEntryTarget value) target,
    required TResult Function(MakefileEntryInclude value) include,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakefileEntryVariable value)? variable,
    TResult Function(MakefileEntryTarget value)? target,
    TResult Function(MakefileEntryInclude value)? include,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakefileEntryVariable value)? variable,
    TResult Function(MakefileEntryTarget value)? target,
    TResult Function(MakefileEntryInclude value)? include,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakefileEntryCopyWith<$Res> {
  factory $MakefileEntryCopyWith(
          MakefileEntry value, $Res Function(MakefileEntry) then) =
      _$MakefileEntryCopyWithImpl<$Res>;
}

/// @nodoc
class _$MakefileEntryCopyWithImpl<$Res>
    implements $MakefileEntryCopyWith<$Res> {
  _$MakefileEntryCopyWithImpl(this._value, this._then);

  final MakefileEntry _value;
  // ignore: unused_field
  final $Res Function(MakefileEntry) _then;
}

/// @nodoc
abstract class _$$MakefileEntryVariableCopyWith<$Res> {
  factory _$$MakefileEntryVariableCopyWith(_$MakefileEntryVariable value,
          $Res Function(_$MakefileEntryVariable) then) =
      __$$MakefileEntryVariableCopyWithImpl<$Res>;
  $Res call({MetaInfo info, String value});

  $MetaInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$MakefileEntryVariableCopyWithImpl<$Res>
    extends _$MakefileEntryCopyWithImpl<$Res>
    implements _$$MakefileEntryVariableCopyWith<$Res> {
  __$$MakefileEntryVariableCopyWithImpl(_$MakefileEntryVariable _value,
      $Res Function(_$MakefileEntryVariable) _then)
      : super(_value, (v) => _then(v as _$MakefileEntryVariable));

  @override
  _$MakefileEntryVariable get _value => super._value as _$MakefileEntryVariable;

  @override
  $Res call({
    Object? info = freezed,
    Object? value = freezed,
  }) {
    return _then(_$MakefileEntryVariable(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as MetaInfo,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $MetaInfoCopyWith<$Res> get info {
    return $MetaInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$MakefileEntryVariable implements MakefileEntryVariable {
  const _$MakefileEntryVariable({required this.info, required this.value});

  @override
  final MetaInfo info;
  @override
  final String value;

  @override
  String toString() {
    return 'MakefileEntry.variable(info: $info, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakefileEntryVariable &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$MakefileEntryVariableCopyWith<_$MakefileEntryVariable> get copyWith =>
      __$$MakefileEntryVariableCopyWithImpl<_$MakefileEntryVariable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MetaInfo info, String value) variable,
    required TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)
        target,
    required TResult Function(List<String> parts) include,
  }) {
    return variable(info, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MetaInfo info, String value)? variable,
    TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)?
        target,
    TResult Function(List<String> parts)? include,
  }) {
    return variable?.call(info, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MetaInfo info, String value)? variable,
    TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)?
        target,
    TResult Function(List<String> parts)? include,
    required TResult orElse(),
  }) {
    if (variable != null) {
      return variable(info, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakefileEntryVariable value) variable,
    required TResult Function(MakefileEntryTarget value) target,
    required TResult Function(MakefileEntryInclude value) include,
  }) {
    return variable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakefileEntryVariable value)? variable,
    TResult Function(MakefileEntryTarget value)? target,
    TResult Function(MakefileEntryInclude value)? include,
  }) {
    return variable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakefileEntryVariable value)? variable,
    TResult Function(MakefileEntryTarget value)? target,
    TResult Function(MakefileEntryInclude value)? include,
    required TResult orElse(),
  }) {
    if (variable != null) {
      return variable(this);
    }
    return orElse();
  }
}

abstract class MakefileEntryVariable implements MakefileEntry {
  const factory MakefileEntryVariable(
      {required final MetaInfo info,
      required final String value}) = _$MakefileEntryVariable;

  MetaInfo get info;
  String get value;
  @JsonKey(ignore: true)
  _$$MakefileEntryVariableCopyWith<_$MakefileEntryVariable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MakefileEntryTargetCopyWith<$Res> {
  factory _$$MakefileEntryTargetCopyWith(_$MakefileEntryTarget value,
          $Res Function(_$MakefileEntryTarget) then) =
      __$$MakefileEntryTargetCopyWithImpl<$Res>;
  $Res call({MetaInfo info, List<String> prerequisites, List<String> recipe});

  $MetaInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$MakefileEntryTargetCopyWithImpl<$Res>
    extends _$MakefileEntryCopyWithImpl<$Res>
    implements _$$MakefileEntryTargetCopyWith<$Res> {
  __$$MakefileEntryTargetCopyWithImpl(
      _$MakefileEntryTarget _value, $Res Function(_$MakefileEntryTarget) _then)
      : super(_value, (v) => _then(v as _$MakefileEntryTarget));

  @override
  _$MakefileEntryTarget get _value => super._value as _$MakefileEntryTarget;

  @override
  $Res call({
    Object? info = freezed,
    Object? prerequisites = freezed,
    Object? recipe = freezed,
  }) {
    return _then(_$MakefileEntryTarget(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as MetaInfo,
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

  @override
  $MetaInfoCopyWith<$Res> get info {
    return $MetaInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$MakefileEntryTarget implements MakefileEntryTarget {
  const _$MakefileEntryTarget(
      {required this.info,
      required final List<String> prerequisites,
      required final List<String> recipe})
      : _prerequisites = prerequisites,
        _recipe = recipe;

  @override
  final MetaInfo info;
  final List<String> _prerequisites;
  @override
  List<String> get prerequisites {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prerequisites);
  }

  final List<String> _recipe;
  @override
  List<String> get recipe {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipe);
  }

  @override
  String toString() {
    return 'MakefileEntry.target(info: $info, prerequisites: $prerequisites, recipe: $recipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakefileEntryTarget &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality()
                .equals(other._prerequisites, _prerequisites) &&
            const DeepCollectionEquality().equals(other._recipe, _recipe));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(_prerequisites),
      const DeepCollectionEquality().hash(_recipe));

  @JsonKey(ignore: true)
  @override
  _$$MakefileEntryTargetCopyWith<_$MakefileEntryTarget> get copyWith =>
      __$$MakefileEntryTargetCopyWithImpl<_$MakefileEntryTarget>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MetaInfo info, String value) variable,
    required TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)
        target,
    required TResult Function(List<String> parts) include,
  }) {
    return target(info, prerequisites, recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MetaInfo info, String value)? variable,
    TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)?
        target,
    TResult Function(List<String> parts)? include,
  }) {
    return target?.call(info, prerequisites, recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MetaInfo info, String value)? variable,
    TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)?
        target,
    TResult Function(List<String> parts)? include,
    required TResult orElse(),
  }) {
    if (target != null) {
      return target(info, prerequisites, recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakefileEntryVariable value) variable,
    required TResult Function(MakefileEntryTarget value) target,
    required TResult Function(MakefileEntryInclude value) include,
  }) {
    return target(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakefileEntryVariable value)? variable,
    TResult Function(MakefileEntryTarget value)? target,
    TResult Function(MakefileEntryInclude value)? include,
  }) {
    return target?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakefileEntryVariable value)? variable,
    TResult Function(MakefileEntryTarget value)? target,
    TResult Function(MakefileEntryInclude value)? include,
    required TResult orElse(),
  }) {
    if (target != null) {
      return target(this);
    }
    return orElse();
  }
}

abstract class MakefileEntryTarget implements MakefileEntry {
  const factory MakefileEntryTarget(
      {required final MetaInfo info,
      required final List<String> prerequisites,
      required final List<String> recipe}) = _$MakefileEntryTarget;

  MetaInfo get info;
  List<String> get prerequisites;
  List<String> get recipe;
  @JsonKey(ignore: true)
  _$$MakefileEntryTargetCopyWith<_$MakefileEntryTarget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MakefileEntryIncludeCopyWith<$Res> {
  factory _$$MakefileEntryIncludeCopyWith(_$MakefileEntryInclude value,
          $Res Function(_$MakefileEntryInclude) then) =
      __$$MakefileEntryIncludeCopyWithImpl<$Res>;
  $Res call({List<String> parts});
}

/// @nodoc
class __$$MakefileEntryIncludeCopyWithImpl<$Res>
    extends _$MakefileEntryCopyWithImpl<$Res>
    implements _$$MakefileEntryIncludeCopyWith<$Res> {
  __$$MakefileEntryIncludeCopyWithImpl(_$MakefileEntryInclude _value,
      $Res Function(_$MakefileEntryInclude) _then)
      : super(_value, (v) => _then(v as _$MakefileEntryInclude));

  @override
  _$MakefileEntryInclude get _value => super._value as _$MakefileEntryInclude;

  @override
  $Res call({
    Object? parts = freezed,
  }) {
    return _then(_$MakefileEntryInclude(
      parts: parts == freezed
          ? _value._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$MakefileEntryInclude implements MakefileEntryInclude {
  const _$MakefileEntryInclude({required final List<String> parts})
      : _parts = parts;

  final List<String> _parts;
  @override
  List<String> get parts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parts);
  }

  @override
  String toString() {
    return 'MakefileEntry.include(parts: $parts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakefileEntryInclude &&
            const DeepCollectionEquality().equals(other._parts, _parts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_parts));

  @JsonKey(ignore: true)
  @override
  _$$MakefileEntryIncludeCopyWith<_$MakefileEntryInclude> get copyWith =>
      __$$MakefileEntryIncludeCopyWithImpl<_$MakefileEntryInclude>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MetaInfo info, String value) variable,
    required TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)
        target,
    required TResult Function(List<String> parts) include,
  }) {
    return include(parts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MetaInfo info, String value)? variable,
    TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)?
        target,
    TResult Function(List<String> parts)? include,
  }) {
    return include?.call(parts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MetaInfo info, String value)? variable,
    TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)?
        target,
    TResult Function(List<String> parts)? include,
    required TResult orElse(),
  }) {
    if (include != null) {
      return include(parts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakefileEntryVariable value) variable,
    required TResult Function(MakefileEntryTarget value) target,
    required TResult Function(MakefileEntryInclude value) include,
  }) {
    return include(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakefileEntryVariable value)? variable,
    TResult Function(MakefileEntryTarget value)? target,
    TResult Function(MakefileEntryInclude value)? include,
  }) {
    return include?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakefileEntryVariable value)? variable,
    TResult Function(MakefileEntryTarget value)? target,
    TResult Function(MakefileEntryInclude value)? include,
    required TResult orElse(),
  }) {
    if (include != null) {
      return include(this);
    }
    return orElse();
  }
}

abstract class MakefileEntryInclude implements MakefileEntry {
  const factory MakefileEntryInclude({required final List<String> parts}) =
      _$MakefileEntryInclude;

  List<String> get parts;
  @JsonKey(ignore: true)
  _$$MakefileEntryIncludeCopyWith<_$MakefileEntryInclude> get copyWith =>
      throw _privateConstructorUsedError;
}
