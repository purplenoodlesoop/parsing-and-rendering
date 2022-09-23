// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'markdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Markdown {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, TextStyle? style) text,
    required TResult Function(String header, List<Markdown> children) section,
    required TResult Function(ListStyle style, List<Markdown> children) list,
    required TResult Function(String label, String destination) link,
    required TResult Function(List<String> data, String? language) code,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data, TextStyle? style)? text,
    TResult Function(String header, List<Markdown> children)? section,
    TResult Function(ListStyle style, List<Markdown> children)? list,
    TResult Function(String label, String destination)? link,
    TResult Function(List<String> data, String? language)? code,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, TextStyle? style)? text,
    TResult Function(String header, List<Markdown> children)? section,
    TResult Function(ListStyle style, List<Markdown> children)? list,
    TResult Function(String label, String destination)? link,
    TResult Function(List<String> data, String? language)? code,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkdownText value) text,
    required TResult Function(MarkdownSection value) section,
    required TResult Function(MarkdownList value) list,
    required TResult Function(MarkdownLink value) link,
    required TResult Function(MarkdownCode value) code,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MarkdownText value)? text,
    TResult Function(MarkdownSection value)? section,
    TResult Function(MarkdownList value)? list,
    TResult Function(MarkdownLink value)? link,
    TResult Function(MarkdownCode value)? code,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkdownText value)? text,
    TResult Function(MarkdownSection value)? section,
    TResult Function(MarkdownList value)? list,
    TResult Function(MarkdownLink value)? link,
    TResult Function(MarkdownCode value)? code,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkdownCopyWith<$Res> {
  factory $MarkdownCopyWith(Markdown value, $Res Function(Markdown) then) =
      _$MarkdownCopyWithImpl<$Res>;
}

/// @nodoc
class _$MarkdownCopyWithImpl<$Res> implements $MarkdownCopyWith<$Res> {
  _$MarkdownCopyWithImpl(this._value, this._then);

  final Markdown _value;
  // ignore: unused_field
  final $Res Function(Markdown) _then;
}

/// @nodoc
abstract class _$$MarkdownTextCopyWith<$Res> {
  factory _$$MarkdownTextCopyWith(
          _$MarkdownText value, $Res Function(_$MarkdownText) then) =
      __$$MarkdownTextCopyWithImpl<$Res>;
  $Res call({String data, TextStyle? style});
}

/// @nodoc
class __$$MarkdownTextCopyWithImpl<$Res> extends _$MarkdownCopyWithImpl<$Res>
    implements _$$MarkdownTextCopyWith<$Res> {
  __$$MarkdownTextCopyWithImpl(
      _$MarkdownText _value, $Res Function(_$MarkdownText) _then)
      : super(_value, (v) => _then(v as _$MarkdownText));

  @override
  _$MarkdownText get _value => super._value as _$MarkdownText;

  @override
  $Res call({
    Object? data = freezed,
    Object? style = freezed,
  }) {
    return _then(_$MarkdownText(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
    ));
  }
}

/// @nodoc

class _$MarkdownText implements MarkdownText {
  const _$MarkdownText({required this.data, this.style});

  @override
  final String data;
  @override
  final TextStyle? style;

  @override
  String toString() {
    return 'Markdown.text(data: $data, style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkdownText &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.style, style));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(style));

  @JsonKey(ignore: true)
  @override
  _$$MarkdownTextCopyWith<_$MarkdownText> get copyWith =>
      __$$MarkdownTextCopyWithImpl<_$MarkdownText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, TextStyle? style) text,
    required TResult Function(String header, List<Markdown> children) section,
    required TResult Function(ListStyle style, List<Markdown> children) list,
    required TResult Function(String label, String destination) link,
    required TResult Function(List<String> data, String? language) code,
  }) {
    return text(data, style);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data, TextStyle? style)? text,
    TResult Function(String header, List<Markdown> children)? section,
    TResult Function(ListStyle style, List<Markdown> children)? list,
    TResult Function(String label, String destination)? link,
    TResult Function(List<String> data, String? language)? code,
  }) {
    return text?.call(data, style);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, TextStyle? style)? text,
    TResult Function(String header, List<Markdown> children)? section,
    TResult Function(ListStyle style, List<Markdown> children)? list,
    TResult Function(String label, String destination)? link,
    TResult Function(List<String> data, String? language)? code,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(data, style);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkdownText value) text,
    required TResult Function(MarkdownSection value) section,
    required TResult Function(MarkdownList value) list,
    required TResult Function(MarkdownLink value) link,
    required TResult Function(MarkdownCode value) code,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MarkdownText value)? text,
    TResult Function(MarkdownSection value)? section,
    TResult Function(MarkdownList value)? list,
    TResult Function(MarkdownLink value)? link,
    TResult Function(MarkdownCode value)? code,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkdownText value)? text,
    TResult Function(MarkdownSection value)? section,
    TResult Function(MarkdownList value)? list,
    TResult Function(MarkdownLink value)? link,
    TResult Function(MarkdownCode value)? code,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class MarkdownText implements Markdown {
  const factory MarkdownText(
      {required final String data, final TextStyle? style}) = _$MarkdownText;

  String get data;
  TextStyle? get style;
  @JsonKey(ignore: true)
  _$$MarkdownTextCopyWith<_$MarkdownText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkdownSectionCopyWith<$Res> {
  factory _$$MarkdownSectionCopyWith(
          _$MarkdownSection value, $Res Function(_$MarkdownSection) then) =
      __$$MarkdownSectionCopyWithImpl<$Res>;
  $Res call({String header, List<Markdown> children});
}

/// @nodoc
class __$$MarkdownSectionCopyWithImpl<$Res> extends _$MarkdownCopyWithImpl<$Res>
    implements _$$MarkdownSectionCopyWith<$Res> {
  __$$MarkdownSectionCopyWithImpl(
      _$MarkdownSection _value, $Res Function(_$MarkdownSection) _then)
      : super(_value, (v) => _then(v as _$MarkdownSection));

  @override
  _$MarkdownSection get _value => super._value as _$MarkdownSection;

  @override
  $Res call({
    Object? header = freezed,
    Object? children = freezed,
  }) {
    return _then(_$MarkdownSection(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      children: children == freezed
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Markdown>,
    ));
  }
}

/// @nodoc

class _$MarkdownSection implements MarkdownSection {
  const _$MarkdownSection(
      {required this.header,
      final List<Markdown> children = const <Markdown>[]})
      : _children = children;

  @override
  final String header;
  final List<Markdown> _children;
  @override
  @JsonKey()
  List<Markdown> get children {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'Markdown.section(header: $header, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkdownSection &&
            const DeepCollectionEquality().equals(other.header, header) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(header),
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  _$$MarkdownSectionCopyWith<_$MarkdownSection> get copyWith =>
      __$$MarkdownSectionCopyWithImpl<_$MarkdownSection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, TextStyle? style) text,
    required TResult Function(String header, List<Markdown> children) section,
    required TResult Function(ListStyle style, List<Markdown> children) list,
    required TResult Function(String label, String destination) link,
    required TResult Function(List<String> data, String? language) code,
  }) {
    return section(header, children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data, TextStyle? style)? text,
    TResult Function(String header, List<Markdown> children)? section,
    TResult Function(ListStyle style, List<Markdown> children)? list,
    TResult Function(String label, String destination)? link,
    TResult Function(List<String> data, String? language)? code,
  }) {
    return section?.call(header, children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, TextStyle? style)? text,
    TResult Function(String header, List<Markdown> children)? section,
    TResult Function(ListStyle style, List<Markdown> children)? list,
    TResult Function(String label, String destination)? link,
    TResult Function(List<String> data, String? language)? code,
    required TResult orElse(),
  }) {
    if (section != null) {
      return section(header, children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkdownText value) text,
    required TResult Function(MarkdownSection value) section,
    required TResult Function(MarkdownList value) list,
    required TResult Function(MarkdownLink value) link,
    required TResult Function(MarkdownCode value) code,
  }) {
    return section(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MarkdownText value)? text,
    TResult Function(MarkdownSection value)? section,
    TResult Function(MarkdownList value)? list,
    TResult Function(MarkdownLink value)? link,
    TResult Function(MarkdownCode value)? code,
  }) {
    return section?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkdownText value)? text,
    TResult Function(MarkdownSection value)? section,
    TResult Function(MarkdownList value)? list,
    TResult Function(MarkdownLink value)? link,
    TResult Function(MarkdownCode value)? code,
    required TResult orElse(),
  }) {
    if (section != null) {
      return section(this);
    }
    return orElse();
  }
}

abstract class MarkdownSection implements Markdown {
  const factory MarkdownSection(
      {required final String header,
      final List<Markdown> children}) = _$MarkdownSection;

  String get header;
  List<Markdown> get children;
  @JsonKey(ignore: true)
  _$$MarkdownSectionCopyWith<_$MarkdownSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkdownListCopyWith<$Res> {
  factory _$$MarkdownListCopyWith(
          _$MarkdownList value, $Res Function(_$MarkdownList) then) =
      __$$MarkdownListCopyWithImpl<$Res>;
  $Res call({ListStyle style, List<Markdown> children});
}

/// @nodoc
class __$$MarkdownListCopyWithImpl<$Res> extends _$MarkdownCopyWithImpl<$Res>
    implements _$$MarkdownListCopyWith<$Res> {
  __$$MarkdownListCopyWithImpl(
      _$MarkdownList _value, $Res Function(_$MarkdownList) _then)
      : super(_value, (v) => _then(v as _$MarkdownList));

  @override
  _$MarkdownList get _value => super._value as _$MarkdownList;

  @override
  $Res call({
    Object? style = freezed,
    Object? children = freezed,
  }) {
    return _then(_$MarkdownList(
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ListStyle,
      children: children == freezed
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Markdown>,
    ));
  }
}

/// @nodoc

class _$MarkdownList implements MarkdownList {
  const _$MarkdownList(
      {required this.style, required final List<Markdown> children})
      : _children = children;

  @override
  final ListStyle style;
  final List<Markdown> _children;
  @override
  List<Markdown> get children {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'Markdown.list(style: $style, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkdownList &&
            const DeepCollectionEquality().equals(other.style, style) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(style),
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  _$$MarkdownListCopyWith<_$MarkdownList> get copyWith =>
      __$$MarkdownListCopyWithImpl<_$MarkdownList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, TextStyle? style) text,
    required TResult Function(String header, List<Markdown> children) section,
    required TResult Function(ListStyle style, List<Markdown> children) list,
    required TResult Function(String label, String destination) link,
    required TResult Function(List<String> data, String? language) code,
  }) {
    return list(style, children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data, TextStyle? style)? text,
    TResult Function(String header, List<Markdown> children)? section,
    TResult Function(ListStyle style, List<Markdown> children)? list,
    TResult Function(String label, String destination)? link,
    TResult Function(List<String> data, String? language)? code,
  }) {
    return list?.call(style, children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, TextStyle? style)? text,
    TResult Function(String header, List<Markdown> children)? section,
    TResult Function(ListStyle style, List<Markdown> children)? list,
    TResult Function(String label, String destination)? link,
    TResult Function(List<String> data, String? language)? code,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(style, children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkdownText value) text,
    required TResult Function(MarkdownSection value) section,
    required TResult Function(MarkdownList value) list,
    required TResult Function(MarkdownLink value) link,
    required TResult Function(MarkdownCode value) code,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MarkdownText value)? text,
    TResult Function(MarkdownSection value)? section,
    TResult Function(MarkdownList value)? list,
    TResult Function(MarkdownLink value)? link,
    TResult Function(MarkdownCode value)? code,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkdownText value)? text,
    TResult Function(MarkdownSection value)? section,
    TResult Function(MarkdownList value)? list,
    TResult Function(MarkdownLink value)? link,
    TResult Function(MarkdownCode value)? code,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class MarkdownList implements Markdown {
  const factory MarkdownList(
      {required final ListStyle style,
      required final List<Markdown> children}) = _$MarkdownList;

  ListStyle get style;
  List<Markdown> get children;
  @JsonKey(ignore: true)
  _$$MarkdownListCopyWith<_$MarkdownList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkdownLinkCopyWith<$Res> {
  factory _$$MarkdownLinkCopyWith(
          _$MarkdownLink value, $Res Function(_$MarkdownLink) then) =
      __$$MarkdownLinkCopyWithImpl<$Res>;
  $Res call({String label, String destination});
}

/// @nodoc
class __$$MarkdownLinkCopyWithImpl<$Res> extends _$MarkdownCopyWithImpl<$Res>
    implements _$$MarkdownLinkCopyWith<$Res> {
  __$$MarkdownLinkCopyWithImpl(
      _$MarkdownLink _value, $Res Function(_$MarkdownLink) _then)
      : super(_value, (v) => _then(v as _$MarkdownLink));

  @override
  _$MarkdownLink get _value => super._value as _$MarkdownLink;

  @override
  $Res call({
    Object? label = freezed,
    Object? destination = freezed,
  }) {
    return _then(_$MarkdownLink(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkdownLink implements MarkdownLink {
  const _$MarkdownLink({required this.label, required this.destination});

  @override
  final String label;
  @override
  final String destination;

  @override
  String toString() {
    return 'Markdown.link(label: $label, destination: $destination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkdownLink &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(destination));

  @JsonKey(ignore: true)
  @override
  _$$MarkdownLinkCopyWith<_$MarkdownLink> get copyWith =>
      __$$MarkdownLinkCopyWithImpl<_$MarkdownLink>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, TextStyle? style) text,
    required TResult Function(String header, List<Markdown> children) section,
    required TResult Function(ListStyle style, List<Markdown> children) list,
    required TResult Function(String label, String destination) link,
    required TResult Function(List<String> data, String? language) code,
  }) {
    return link(label, destination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data, TextStyle? style)? text,
    TResult Function(String header, List<Markdown> children)? section,
    TResult Function(ListStyle style, List<Markdown> children)? list,
    TResult Function(String label, String destination)? link,
    TResult Function(List<String> data, String? language)? code,
  }) {
    return link?.call(label, destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, TextStyle? style)? text,
    TResult Function(String header, List<Markdown> children)? section,
    TResult Function(ListStyle style, List<Markdown> children)? list,
    TResult Function(String label, String destination)? link,
    TResult Function(List<String> data, String? language)? code,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(label, destination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkdownText value) text,
    required TResult Function(MarkdownSection value) section,
    required TResult Function(MarkdownList value) list,
    required TResult Function(MarkdownLink value) link,
    required TResult Function(MarkdownCode value) code,
  }) {
    return link(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MarkdownText value)? text,
    TResult Function(MarkdownSection value)? section,
    TResult Function(MarkdownList value)? list,
    TResult Function(MarkdownLink value)? link,
    TResult Function(MarkdownCode value)? code,
  }) {
    return link?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkdownText value)? text,
    TResult Function(MarkdownSection value)? section,
    TResult Function(MarkdownList value)? list,
    TResult Function(MarkdownLink value)? link,
    TResult Function(MarkdownCode value)? code,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(this);
    }
    return orElse();
  }
}

abstract class MarkdownLink implements Markdown {
  const factory MarkdownLink(
      {required final String label,
      required final String destination}) = _$MarkdownLink;

  String get label;
  String get destination;
  @JsonKey(ignore: true)
  _$$MarkdownLinkCopyWith<_$MarkdownLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkdownCodeCopyWith<$Res> {
  factory _$$MarkdownCodeCopyWith(
          _$MarkdownCode value, $Res Function(_$MarkdownCode) then) =
      __$$MarkdownCodeCopyWithImpl<$Res>;
  $Res call({List<String> data, String? language});
}

/// @nodoc
class __$$MarkdownCodeCopyWithImpl<$Res> extends _$MarkdownCopyWithImpl<$Res>
    implements _$$MarkdownCodeCopyWith<$Res> {
  __$$MarkdownCodeCopyWithImpl(
      _$MarkdownCode _value, $Res Function(_$MarkdownCode) _then)
      : super(_value, (v) => _then(v as _$MarkdownCode));

  @override
  _$MarkdownCode get _value => super._value as _$MarkdownCode;

  @override
  $Res call({
    Object? data = freezed,
    Object? language = freezed,
  }) {
    return _then(_$MarkdownCode(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MarkdownCode implements MarkdownCode {
  const _$MarkdownCode({required final List<String> data, this.language})
      : _data = data;

  final List<String> _data;
  @override
  List<String> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String? language;

  @override
  String toString() {
    return 'Markdown.code(data: $data, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkdownCode &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.language, language));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(language));

  @JsonKey(ignore: true)
  @override
  _$$MarkdownCodeCopyWith<_$MarkdownCode> get copyWith =>
      __$$MarkdownCodeCopyWithImpl<_$MarkdownCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, TextStyle? style) text,
    required TResult Function(String header, List<Markdown> children) section,
    required TResult Function(ListStyle style, List<Markdown> children) list,
    required TResult Function(String label, String destination) link,
    required TResult Function(List<String> data, String? language) code,
  }) {
    return code(data, language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data, TextStyle? style)? text,
    TResult Function(String header, List<Markdown> children)? section,
    TResult Function(ListStyle style, List<Markdown> children)? list,
    TResult Function(String label, String destination)? link,
    TResult Function(List<String> data, String? language)? code,
  }) {
    return code?.call(data, language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, TextStyle? style)? text,
    TResult Function(String header, List<Markdown> children)? section,
    TResult Function(ListStyle style, List<Markdown> children)? list,
    TResult Function(String label, String destination)? link,
    TResult Function(List<String> data, String? language)? code,
    required TResult orElse(),
  }) {
    if (code != null) {
      return code(data, language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarkdownText value) text,
    required TResult Function(MarkdownSection value) section,
    required TResult Function(MarkdownList value) list,
    required TResult Function(MarkdownLink value) link,
    required TResult Function(MarkdownCode value) code,
  }) {
    return code(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MarkdownText value)? text,
    TResult Function(MarkdownSection value)? section,
    TResult Function(MarkdownList value)? list,
    TResult Function(MarkdownLink value)? link,
    TResult Function(MarkdownCode value)? code,
  }) {
    return code?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkdownText value)? text,
    TResult Function(MarkdownSection value)? section,
    TResult Function(MarkdownList value)? list,
    TResult Function(MarkdownLink value)? link,
    TResult Function(MarkdownCode value)? code,
    required TResult orElse(),
  }) {
    if (code != null) {
      return code(this);
    }
    return orElse();
  }
}

abstract class MarkdownCode implements Markdown {
  const factory MarkdownCode(
      {required final List<String> data,
      final String? language}) = _$MarkdownCode;

  List<String> get data;
  String? get language;
  @JsonKey(ignore: true)
  _$$MarkdownCodeCopyWith<_$MarkdownCode> get copyWith =>
      throw _privateConstructorUsedError;
}
