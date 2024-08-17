// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eb_form_configuration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EBFormConfigurationModel _$EBFormConfigurationModelFromJson(
    Map<String, dynamic> json) {
  return _EBFormConfigurationModel.fromJson(json);
}

/// @nodoc
mixin _$EBFormConfigurationModel {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "version")
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: "logoPosition")
  String? get logoPosition => throw _privateConstructorUsedError;
  @JsonKey(name: "formLayoutType")
  String? get formLayoutType => throw _privateConstructorUsedError;
  @JsonKey(name: "pages")
  List<Page>? get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EBFormConfigurationModelCopyWith<EBFormConfigurationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EBFormConfigurationModelCopyWith<$Res> {
  factory $EBFormConfigurationModelCopyWith(EBFormConfigurationModel value,
          $Res Function(EBFormConfigurationModel) then) =
      _$EBFormConfigurationModelCopyWithImpl<$Res, EBFormConfigurationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "version") String? version,
      @JsonKey(name: "logoPosition") String? logoPosition,
      @JsonKey(name: "formLayoutType") String? formLayoutType,
      @JsonKey(name: "pages") List<Page>? pages});
}

/// @nodoc
class _$EBFormConfigurationModelCopyWithImpl<$Res,
        $Val extends EBFormConfigurationModel>
    implements $EBFormConfigurationModelCopyWith<$Res> {
  _$EBFormConfigurationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? logoPosition = freezed,
    Object? formLayoutType = freezed,
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      logoPosition: freezed == logoPosition
          ? _value.logoPosition
          : logoPosition // ignore: cast_nullable_to_non_nullable
              as String?,
      formLayoutType: freezed == formLayoutType
          ? _value.formLayoutType
          : formLayoutType // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<Page>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EBFormConfigurationModelImplCopyWith<$Res>
    implements $EBFormConfigurationModelCopyWith<$Res> {
  factory _$$EBFormConfigurationModelImplCopyWith(
          _$EBFormConfigurationModelImpl value,
          $Res Function(_$EBFormConfigurationModelImpl) then) =
      __$$EBFormConfigurationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "version") String? version,
      @JsonKey(name: "logoPosition") String? logoPosition,
      @JsonKey(name: "formLayoutType") String? formLayoutType,
      @JsonKey(name: "pages") List<Page>? pages});
}

/// @nodoc
class __$$EBFormConfigurationModelImplCopyWithImpl<$Res>
    extends _$EBFormConfigurationModelCopyWithImpl<$Res,
        _$EBFormConfigurationModelImpl>
    implements _$$EBFormConfigurationModelImplCopyWith<$Res> {
  __$$EBFormConfigurationModelImplCopyWithImpl(
      _$EBFormConfigurationModelImpl _value,
      $Res Function(_$EBFormConfigurationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? logoPosition = freezed,
    Object? formLayoutType = freezed,
    Object? pages = freezed,
  }) {
    return _then(_$EBFormConfigurationModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      logoPosition: freezed == logoPosition
          ? _value.logoPosition
          : logoPosition // ignore: cast_nullable_to_non_nullable
              as String?,
      formLayoutType: freezed == formLayoutType
          ? _value.formLayoutType
          : formLayoutType // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: freezed == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<Page>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EBFormConfigurationModelImpl implements _EBFormConfigurationModel {
  const _$EBFormConfigurationModelImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "version") this.version,
      @JsonKey(name: "logoPosition") this.logoPosition,
      @JsonKey(name: "formLayoutType") this.formLayoutType,
      @JsonKey(name: "pages") final List<Page>? pages})
      : _pages = pages;

  factory _$EBFormConfigurationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EBFormConfigurationModelImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "version")
  final String? version;
  @override
  @JsonKey(name: "logoPosition")
  final String? logoPosition;
  @override
  @JsonKey(name: "formLayoutType")
  final String? formLayoutType;
  final List<Page>? _pages;
  @override
  @JsonKey(name: "pages")
  List<Page>? get pages {
    final value = _pages;
    if (value == null) return null;
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EBFormConfigurationModel(name: $name, version: $version, logoPosition: $logoPosition, formLayoutType: $formLayoutType, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EBFormConfigurationModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.logoPosition, logoPosition) ||
                other.logoPosition == logoPosition) &&
            (identical(other.formLayoutType, formLayoutType) ||
                other.formLayoutType == formLayoutType) &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, version, logoPosition,
      formLayoutType, const DeepCollectionEquality().hash(_pages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EBFormConfigurationModelImplCopyWith<_$EBFormConfigurationModelImpl>
      get copyWith => __$$EBFormConfigurationModelImplCopyWithImpl<
          _$EBFormConfigurationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EBFormConfigurationModelImplToJson(
      this,
    );
  }
}

abstract class _EBFormConfigurationModel implements EBFormConfigurationModel {
  const factory _EBFormConfigurationModel(
          {@JsonKey(name: "name") final String? name,
          @JsonKey(name: "version") final String? version,
          @JsonKey(name: "logoPosition") final String? logoPosition,
          @JsonKey(name: "formLayoutType") final String? formLayoutType,
          @JsonKey(name: "pages") final List<Page>? pages}) =
      _$EBFormConfigurationModelImpl;

  factory _EBFormConfigurationModel.fromJson(Map<String, dynamic> json) =
      _$EBFormConfigurationModelImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "version")
  String? get version;
  @override
  @JsonKey(name: "logoPosition")
  String? get logoPosition;
  @override
  @JsonKey(name: "formLayoutType")
  String? get formLayoutType;
  @override
  @JsonKey(name: "pages")
  List<Page>? get pages;
  @override
  @JsonKey(ignore: true)
  _$$EBFormConfigurationModelImplCopyWith<_$EBFormConfigurationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Page _$PageFromJson(Map<String, dynamic> json) {
  return _Page.fromJson(json);
}

/// @nodoc
mixin _$Page {
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "pageNumber")
  int? get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "elements")
  List<Element>? get elements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageCopyWith<Page> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageCopyWith<$Res> {
  factory $PageCopyWith(Page value, $Res Function(Page) then) =
      _$PageCopyWithImpl<$Res, Page>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "pageNumber") int? pageNumber,
      @JsonKey(name: "elements") List<Element>? elements});
}

/// @nodoc
class _$PageCopyWithImpl<$Res, $Val extends Page>
    implements $PageCopyWith<$Res> {
  _$PageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? pageNumber = freezed,
    Object? elements = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      elements: freezed == elements
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageImplCopyWith<$Res> implements $PageCopyWith<$Res> {
  factory _$$PageImplCopyWith(
          _$PageImpl value, $Res Function(_$PageImpl) then) =
      __$$PageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "pageNumber") int? pageNumber,
      @JsonKey(name: "elements") List<Element>? elements});
}

/// @nodoc
class __$$PageImplCopyWithImpl<$Res>
    extends _$PageCopyWithImpl<$Res, _$PageImpl>
    implements _$$PageImplCopyWith<$Res> {
  __$$PageImplCopyWithImpl(_$PageImpl _value, $Res Function(_$PageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? pageNumber = freezed,
    Object? elements = freezed,
  }) {
    return _then(_$PageImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      elements: freezed == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageImpl implements _Page {
  const _$PageImpl(
      {@JsonKey(name: "title") this.title,
      @JsonKey(name: "pageNumber") this.pageNumber,
      @JsonKey(name: "elements") final List<Element>? elements})
      : _elements = elements;

  factory _$PageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageImplFromJson(json);

  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "pageNumber")
  final int? pageNumber;
  final List<Element>? _elements;
  @override
  @JsonKey(name: "elements")
  List<Element>? get elements {
    final value = _elements;
    if (value == null) return null;
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Page(title: $title, pageNumber: $pageNumber, elements: $elements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, pageNumber,
      const DeepCollectionEquality().hash(_elements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageImplCopyWith<_$PageImpl> get copyWith =>
      __$$PageImplCopyWithImpl<_$PageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageImplToJson(
      this,
    );
  }
}

abstract class _Page implements Page {
  const factory _Page(
      {@JsonKey(name: "title") final String? title,
      @JsonKey(name: "pageNumber") final int? pageNumber,
      @JsonKey(name: "elements") final List<Element>? elements}) = _$PageImpl;

  factory _Page.fromJson(Map<String, dynamic> json) = _$PageImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "pageNumber")
  int? get pageNumber;
  @override
  @JsonKey(name: "elements")
  List<Element>? get elements;
  @override
  @JsonKey(ignore: true)
  _$$PageImplCopyWith<_$PageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Element _$ElementFromJson(Map<String, dynamic> json) {
  return _Element.fromJson(json);
}

/// @nodoc
mixin _$Element {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "prefix")
  String? get prefix => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "repeats")
  bool? get repeats => throw _privateConstructorUsedError;
  @JsonKey(name: "minRepeat")
  int? get minRepeat => throw _privateConstructorUsedError;
  @JsonKey(name: "maxRepeat")
  int? get maxRepeat => throw _privateConstructorUsedError;
  @JsonKey(name: "elements")
  List<Element>? get elements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElementCopyWith<Element> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementCopyWith<$Res> {
  factory $ElementCopyWith(Element value, $Res Function(Element) then) =
      _$ElementCopyWithImpl<$Res, Element>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "prefix") String? prefix,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "repeats") bool? repeats,
      @JsonKey(name: "minRepeat") int? minRepeat,
      @JsonKey(name: "maxRepeat") int? maxRepeat,
      @JsonKey(name: "elements") List<Element>? elements});
}

/// @nodoc
class _$ElementCopyWithImpl<$Res, $Val extends Element>
    implements $ElementCopyWith<$Res> {
  _$ElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? prefix = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? repeats = freezed,
    Object? minRepeat = freezed,
    Object? maxRepeat = freezed,
    Object? elements = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      repeats: freezed == repeats
          ? _value.repeats
          : repeats // ignore: cast_nullable_to_non_nullable
              as bool?,
      minRepeat: freezed == minRepeat
          ? _value.minRepeat
          : minRepeat // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRepeat: freezed == maxRepeat
          ? _value.maxRepeat
          : maxRepeat // ignore: cast_nullable_to_non_nullable
              as int?,
      elements: freezed == elements
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElementImplCopyWith<$Res> implements $ElementCopyWith<$Res> {
  factory _$$ElementImplCopyWith(
          _$ElementImpl value, $Res Function(_$ElementImpl) then) =
      __$$ElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "prefix") String? prefix,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "repeats") bool? repeats,
      @JsonKey(name: "minRepeat") int? minRepeat,
      @JsonKey(name: "maxRepeat") int? maxRepeat,
      @JsonKey(name: "elements") List<Element>? elements});
}

/// @nodoc
class __$$ElementImplCopyWithImpl<$Res>
    extends _$ElementCopyWithImpl<$Res, _$ElementImpl>
    implements _$$ElementImplCopyWith<$Res> {
  __$$ElementImplCopyWithImpl(
      _$ElementImpl _value, $Res Function(_$ElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? prefix = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? repeats = freezed,
    Object? minRepeat = freezed,
    Object? maxRepeat = freezed,
    Object? elements = freezed,
  }) {
    return _then(_$ElementImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      repeats: freezed == repeats
          ? _value.repeats
          : repeats // ignore: cast_nullable_to_non_nullable
              as bool?,
      minRepeat: freezed == minRepeat
          ? _value.minRepeat
          : minRepeat // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRepeat: freezed == maxRepeat
          ? _value.maxRepeat
          : maxRepeat // ignore: cast_nullable_to_non_nullable
              as int?,
      elements: freezed == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<Element>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElementImpl implements _Element {
  const _$ElementImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "prefix") this.prefix,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "repeats") this.repeats,
      @JsonKey(name: "minRepeat") this.minRepeat,
      @JsonKey(name: "maxRepeat") this.maxRepeat,
      @JsonKey(name: "elements") final List<Element>? elements})
      : _elements = elements;

  factory _$ElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElementImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "prefix")
  final String? prefix;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "repeats")
  final bool? repeats;
  @override
  @JsonKey(name: "minRepeat")
  final int? minRepeat;
  @override
  @JsonKey(name: "maxRepeat")
  final int? maxRepeat;
  final List<Element>? _elements;
  @override
  @JsonKey(name: "elements")
  List<Element>? get elements {
    final value = _elements;
    if (value == null) return null;
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Element(name: $name, type: $type, prefix: $prefix, title: $title, description: $description, repeats: $repeats, minRepeat: $minRepeat, maxRepeat: $maxRepeat, elements: $elements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.repeats, repeats) || other.repeats == repeats) &&
            (identical(other.minRepeat, minRepeat) ||
                other.minRepeat == minRepeat) &&
            (identical(other.maxRepeat, maxRepeat) ||
                other.maxRepeat == maxRepeat) &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      type,
      prefix,
      title,
      description,
      repeats,
      minRepeat,
      maxRepeat,
      const DeepCollectionEquality().hash(_elements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementImplCopyWith<_$ElementImpl> get copyWith =>
      __$$ElementImplCopyWithImpl<_$ElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElementImplToJson(
      this,
    );
  }
}

abstract class _Element implements Element {
  const factory _Element(
          {@JsonKey(name: "name") final String? name,
          @JsonKey(name: "type") final String? type,
          @JsonKey(name: "prefix") final String? prefix,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "repeats") final bool? repeats,
          @JsonKey(name: "minRepeat") final int? minRepeat,
          @JsonKey(name: "maxRepeat") final int? maxRepeat,
          @JsonKey(name: "elements") final List<Element>? elements}) =
      _$ElementImpl;

  factory _Element.fromJson(Map<String, dynamic> json) = _$ElementImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "prefix")
  String? get prefix;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "repeats")
  bool? get repeats;
  @override
  @JsonKey(name: "minRepeat")
  int? get minRepeat;
  @override
  @JsonKey(name: "maxRepeat")
  int? get maxRepeat;
  @override
  @JsonKey(name: "elements")
  List<Element>? get elements;
  @override
  @JsonKey(ignore: true)
  _$$ElementImplCopyWith<_$ElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
