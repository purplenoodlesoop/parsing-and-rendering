// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'makefile_entry.dart';

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
mixin _$Makefile {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MetaInfo info, String value) variable,
    required TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)
        target,
    required TResult Function(List<String> parts) include,
    required TResult Function(
            String condition, List<String> onIf, List<String> onElse)
        conditional,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MetaInfo info, String value)? variable,
    TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)?
        target,
    TResult Function(List<String> parts)? include,
    TResult Function(String condition, List<String> onIf, List<String> onElse)?
        conditional,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MetaInfo info, String value)? variable,
    TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)?
        target,
    TResult Function(List<String> parts)? include,
    TResult Function(String condition, List<String> onIf, List<String> onElse)?
        conditional,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakefileVariable value) variable,
    required TResult Function(MakefileTarget value) target,
    required TResult Function(MakefileInclude value) include,
    required TResult Function(MakefileConditional value) conditional,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakefileVariable value)? variable,
    TResult Function(MakefileTarget value)? target,
    TResult Function(MakefileInclude value)? include,
    TResult Function(MakefileConditional value)? conditional,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakefileVariable value)? variable,
    TResult Function(MakefileTarget value)? target,
    TResult Function(MakefileInclude value)? include,
    TResult Function(MakefileConditional value)? conditional,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakefileCopyWith<$Res> {
  factory $MakefileCopyWith(Makefile value, $Res Function(Makefile) then) =
      _$MakefileCopyWithImpl<$Res>;
}

/// @nodoc
class _$MakefileCopyWithImpl<$Res> implements $MakefileCopyWith<$Res> {
  _$MakefileCopyWithImpl(this._value, this._then);

  final Makefile _value;
  // ignore: unused_field
  final $Res Function(Makefile) _then;
}

/// @nodoc
abstract class _$$MakefileVariableCopyWith<$Res> {
  factory _$$MakefileVariableCopyWith(
          _$MakefileVariable value, $Res Function(_$MakefileVariable) then) =
      __$$MakefileVariableCopyWithImpl<$Res>;
  $Res call({MetaInfo info, String value});

  $MetaInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$MakefileVariableCopyWithImpl<$Res>
    extends _$MakefileCopyWithImpl<$Res>
    implements _$$MakefileVariableCopyWith<$Res> {
  __$$MakefileVariableCopyWithImpl(
      _$MakefileVariable _value, $Res Function(_$MakefileVariable) _then)
      : super(_value, (v) => _then(v as _$MakefileVariable));

  @override
  _$MakefileVariable get _value => super._value as _$MakefileVariable;

  @override
  $Res call({
    Object? info = freezed,
    Object? value = freezed,
  }) {
    return _then(_$MakefileVariable(
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

class _$MakefileVariable implements MakefileVariable {
  const _$MakefileVariable({required this.info, required this.value});

  @override
  final MetaInfo info;
  @override
  final String value;

  @override
  String toString() {
    return 'Makefile.variable(info: $info, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakefileVariable &&
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
  _$$MakefileVariableCopyWith<_$MakefileVariable> get copyWith =>
      __$$MakefileVariableCopyWithImpl<_$MakefileVariable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MetaInfo info, String value) variable,
    required TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)
        target,
    required TResult Function(List<String> parts) include,
    required TResult Function(
            String condition, List<String> onIf, List<String> onElse)
        conditional,
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
    TResult Function(String condition, List<String> onIf, List<String> onElse)?
        conditional,
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
    TResult Function(String condition, List<String> onIf, List<String> onElse)?
        conditional,
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
    required TResult Function(MakefileVariable value) variable,
    required TResult Function(MakefileTarget value) target,
    required TResult Function(MakefileInclude value) include,
    required TResult Function(MakefileConditional value) conditional,
  }) {
    return variable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakefileVariable value)? variable,
    TResult Function(MakefileTarget value)? target,
    TResult Function(MakefileInclude value)? include,
    TResult Function(MakefileConditional value)? conditional,
  }) {
    return variable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakefileVariable value)? variable,
    TResult Function(MakefileTarget value)? target,
    TResult Function(MakefileInclude value)? include,
    TResult Function(MakefileConditional value)? conditional,
    required TResult orElse(),
  }) {
    if (variable != null) {
      return variable(this);
    }
    return orElse();
  }
}

abstract class MakefileVariable implements Makefile {
  const factory MakefileVariable(
      {required final MetaInfo info,
      required final String value}) = _$MakefileVariable;

  MetaInfo get info;
  String get value;
  @JsonKey(ignore: true)
  _$$MakefileVariableCopyWith<_$MakefileVariable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MakefileTargetCopyWith<$Res> {
  factory _$$MakefileTargetCopyWith(
          _$MakefileTarget value, $Res Function(_$MakefileTarget) then) =
      __$$MakefileTargetCopyWithImpl<$Res>;
  $Res call({MetaInfo info, List<String> prerequisites, List<String> recipe});

  $MetaInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$MakefileTargetCopyWithImpl<$Res> extends _$MakefileCopyWithImpl<$Res>
    implements _$$MakefileTargetCopyWith<$Res> {
  __$$MakefileTargetCopyWithImpl(
      _$MakefileTarget _value, $Res Function(_$MakefileTarget) _then)
      : super(_value, (v) => _then(v as _$MakefileTarget));

  @override
  _$MakefileTarget get _value => super._value as _$MakefileTarget;

  @override
  $Res call({
    Object? info = freezed,
    Object? prerequisites = freezed,
    Object? recipe = freezed,
  }) {
    return _then(_$MakefileTarget(
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

class _$MakefileTarget implements MakefileTarget {
  const _$MakefileTarget(
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
    return 'Makefile.target(info: $info, prerequisites: $prerequisites, recipe: $recipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakefileTarget &&
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
  _$$MakefileTargetCopyWith<_$MakefileTarget> get copyWith =>
      __$$MakefileTargetCopyWithImpl<_$MakefileTarget>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MetaInfo info, String value) variable,
    required TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)
        target,
    required TResult Function(List<String> parts) include,
    required TResult Function(
            String condition, List<String> onIf, List<String> onElse)
        conditional,
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
    TResult Function(String condition, List<String> onIf, List<String> onElse)?
        conditional,
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
    TResult Function(String condition, List<String> onIf, List<String> onElse)?
        conditional,
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
    required TResult Function(MakefileVariable value) variable,
    required TResult Function(MakefileTarget value) target,
    required TResult Function(MakefileInclude value) include,
    required TResult Function(MakefileConditional value) conditional,
  }) {
    return target(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakefileVariable value)? variable,
    TResult Function(MakefileTarget value)? target,
    TResult Function(MakefileInclude value)? include,
    TResult Function(MakefileConditional value)? conditional,
  }) {
    return target?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakefileVariable value)? variable,
    TResult Function(MakefileTarget value)? target,
    TResult Function(MakefileInclude value)? include,
    TResult Function(MakefileConditional value)? conditional,
    required TResult orElse(),
  }) {
    if (target != null) {
      return target(this);
    }
    return orElse();
  }
}

abstract class MakefileTarget implements Makefile {
  const factory MakefileTarget(
      {required final MetaInfo info,
      required final List<String> prerequisites,
      required final List<String> recipe}) = _$MakefileTarget;

  MetaInfo get info;
  List<String> get prerequisites;
  List<String> get recipe;
  @JsonKey(ignore: true)
  _$$MakefileTargetCopyWith<_$MakefileTarget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MakefileIncludeCopyWith<$Res> {
  factory _$$MakefileIncludeCopyWith(
          _$MakefileInclude value, $Res Function(_$MakefileInclude) then) =
      __$$MakefileIncludeCopyWithImpl<$Res>;
  $Res call({List<String> parts});
}

/// @nodoc
class __$$MakefileIncludeCopyWithImpl<$Res> extends _$MakefileCopyWithImpl<$Res>
    implements _$$MakefileIncludeCopyWith<$Res> {
  __$$MakefileIncludeCopyWithImpl(
      _$MakefileInclude _value, $Res Function(_$MakefileInclude) _then)
      : super(_value, (v) => _then(v as _$MakefileInclude));

  @override
  _$MakefileInclude get _value => super._value as _$MakefileInclude;

  @override
  $Res call({
    Object? parts = freezed,
  }) {
    return _then(_$MakefileInclude(
      parts: parts == freezed
          ? _value._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$MakefileInclude implements MakefileInclude {
  const _$MakefileInclude({required final List<String> parts}) : _parts = parts;

  final List<String> _parts;
  @override
  List<String> get parts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parts);
  }

  @override
  String toString() {
    return 'Makefile.include(parts: $parts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakefileInclude &&
            const DeepCollectionEquality().equals(other._parts, _parts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_parts));

  @JsonKey(ignore: true)
  @override
  _$$MakefileIncludeCopyWith<_$MakefileInclude> get copyWith =>
      __$$MakefileIncludeCopyWithImpl<_$MakefileInclude>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MetaInfo info, String value) variable,
    required TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)
        target,
    required TResult Function(List<String> parts) include,
    required TResult Function(
            String condition, List<String> onIf, List<String> onElse)
        conditional,
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
    TResult Function(String condition, List<String> onIf, List<String> onElse)?
        conditional,
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
    TResult Function(String condition, List<String> onIf, List<String> onElse)?
        conditional,
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
    required TResult Function(MakefileVariable value) variable,
    required TResult Function(MakefileTarget value) target,
    required TResult Function(MakefileInclude value) include,
    required TResult Function(MakefileConditional value) conditional,
  }) {
    return include(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakefileVariable value)? variable,
    TResult Function(MakefileTarget value)? target,
    TResult Function(MakefileInclude value)? include,
    TResult Function(MakefileConditional value)? conditional,
  }) {
    return include?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakefileVariable value)? variable,
    TResult Function(MakefileTarget value)? target,
    TResult Function(MakefileInclude value)? include,
    TResult Function(MakefileConditional value)? conditional,
    required TResult orElse(),
  }) {
    if (include != null) {
      return include(this);
    }
    return orElse();
  }
}

abstract class MakefileInclude implements Makefile {
  const factory MakefileInclude({required final List<String> parts}) =
      _$MakefileInclude;

  List<String> get parts;
  @JsonKey(ignore: true)
  _$$MakefileIncludeCopyWith<_$MakefileInclude> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MakefileConditionalCopyWith<$Res> {
  factory _$$MakefileConditionalCopyWith(_$MakefileConditional value,
          $Res Function(_$MakefileConditional) then) =
      __$$MakefileConditionalCopyWithImpl<$Res>;
  $Res call({String condition, List<String> onIf, List<String> onElse});
}

/// @nodoc
class __$$MakefileConditionalCopyWithImpl<$Res>
    extends _$MakefileCopyWithImpl<$Res>
    implements _$$MakefileConditionalCopyWith<$Res> {
  __$$MakefileConditionalCopyWithImpl(
      _$MakefileConditional _value, $Res Function(_$MakefileConditional) _then)
      : super(_value, (v) => _then(v as _$MakefileConditional));

  @override
  _$MakefileConditional get _value => super._value as _$MakefileConditional;

  @override
  $Res call({
    Object? condition = freezed,
    Object? onIf = freezed,
    Object? onElse = freezed,
  }) {
    return _then(_$MakefileConditional(
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      onIf: onIf == freezed
          ? _value._onIf
          : onIf // ignore: cast_nullable_to_non_nullable
              as List<String>,
      onElse: onElse == freezed
          ? _value._onElse
          : onElse // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$MakefileConditional implements MakefileConditional {
  const _$MakefileConditional(
      {required this.condition,
      required final List<String> onIf,
      required final List<String> onElse})
      : _onIf = onIf,
        _onElse = onElse;

  @override
  final String condition;
  final List<String> _onIf;
  @override
  List<String> get onIf {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onIf);
  }

  final List<String> _onElse;
  @override
  List<String> get onElse {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onElse);
  }

  @override
  String toString() {
    return 'Makefile.conditional(condition: $condition, onIf: $onIf, onElse: $onElse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakefileConditional &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality().equals(other._onIf, _onIf) &&
            const DeepCollectionEquality().equals(other._onElse, _onElse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(_onIf),
      const DeepCollectionEquality().hash(_onElse));

  @JsonKey(ignore: true)
  @override
  _$$MakefileConditionalCopyWith<_$MakefileConditional> get copyWith =>
      __$$MakefileConditionalCopyWithImpl<_$MakefileConditional>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MetaInfo info, String value) variable,
    required TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)
        target,
    required TResult Function(List<String> parts) include,
    required TResult Function(
            String condition, List<String> onIf, List<String> onElse)
        conditional,
  }) {
    return conditional(condition, onIf, onElse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MetaInfo info, String value)? variable,
    TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)?
        target,
    TResult Function(List<String> parts)? include,
    TResult Function(String condition, List<String> onIf, List<String> onElse)?
        conditional,
  }) {
    return conditional?.call(condition, onIf, onElse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MetaInfo info, String value)? variable,
    TResult Function(
            MetaInfo info, List<String> prerequisites, List<String> recipe)?
        target,
    TResult Function(List<String> parts)? include,
    TResult Function(String condition, List<String> onIf, List<String> onElse)?
        conditional,
    required TResult orElse(),
  }) {
    if (conditional != null) {
      return conditional(condition, onIf, onElse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakefileVariable value) variable,
    required TResult Function(MakefileTarget value) target,
    required TResult Function(MakefileInclude value) include,
    required TResult Function(MakefileConditional value) conditional,
  }) {
    return conditional(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MakefileVariable value)? variable,
    TResult Function(MakefileTarget value)? target,
    TResult Function(MakefileInclude value)? include,
    TResult Function(MakefileConditional value)? conditional,
  }) {
    return conditional?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakefileVariable value)? variable,
    TResult Function(MakefileTarget value)? target,
    TResult Function(MakefileInclude value)? include,
    TResult Function(MakefileConditional value)? conditional,
    required TResult orElse(),
  }) {
    if (conditional != null) {
      return conditional(this);
    }
    return orElse();
  }
}

abstract class MakefileConditional implements Makefile {
  const factory MakefileConditional(
      {required final String condition,
      required final List<String> onIf,
      required final List<String> onElse}) = _$MakefileConditional;

  String get condition;
  List<String> get onIf;
  List<String> get onElse;
  @JsonKey(ignore: true)
  _$$MakefileConditionalCopyWith<_$MakefileConditional> get copyWith =>
      throw _privateConstructorUsedError;
}
