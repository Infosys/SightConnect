// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eb_form_intimation_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EBFormIntimationResponseModel _$EBFormIntimationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _EBFormIntimationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$EBFormIntimationResponseModel {
  String? get timelineName => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get timelineVersion => throw _privateConstructorUsedError;
  Stage? get stage => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EBFormIntimationResponseModelCopyWith<EBFormIntimationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EBFormIntimationResponseModelCopyWith<$Res> {
  factory $EBFormIntimationResponseModelCopyWith(
          EBFormIntimationResponseModel value,
          $Res Function(EBFormIntimationResponseModel) then) =
      _$EBFormIntimationResponseModelCopyWithImpl<$Res,
          EBFormIntimationResponseModel>;
  @useResult
  $Res call(
      {String? timelineName,
      String? version,
      String? timelineVersion,
      Stage? stage,
      String? name});

  $StageCopyWith<$Res>? get stage;
}

/// @nodoc
class _$EBFormIntimationResponseModelCopyWithImpl<$Res,
        $Val extends EBFormIntimationResponseModel>
    implements $EBFormIntimationResponseModelCopyWith<$Res> {
  _$EBFormIntimationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timelineName = freezed,
    Object? version = freezed,
    Object? timelineVersion = freezed,
    Object? stage = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      timelineName: freezed == timelineName
          ? _value.timelineName
          : timelineName // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      timelineVersion: freezed == timelineVersion
          ? _value.timelineVersion
          : timelineVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StageCopyWith<$Res>? get stage {
    if (_value.stage == null) {
      return null;
    }

    return $StageCopyWith<$Res>(_value.stage!, (value) {
      return _then(_value.copyWith(stage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EBFormIntimationResponseModelImplCopyWith<$Res>
    implements $EBFormIntimationResponseModelCopyWith<$Res> {
  factory _$$EBFormIntimationResponseModelImplCopyWith(
          _$EBFormIntimationResponseModelImpl value,
          $Res Function(_$EBFormIntimationResponseModelImpl) then) =
      __$$EBFormIntimationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? timelineName,
      String? version,
      String? timelineVersion,
      Stage? stage,
      String? name});

  @override
  $StageCopyWith<$Res>? get stage;
}

/// @nodoc
class __$$EBFormIntimationResponseModelImplCopyWithImpl<$Res>
    extends _$EBFormIntimationResponseModelCopyWithImpl<$Res,
        _$EBFormIntimationResponseModelImpl>
    implements _$$EBFormIntimationResponseModelImplCopyWith<$Res> {
  __$$EBFormIntimationResponseModelImplCopyWithImpl(
      _$EBFormIntimationResponseModelImpl _value,
      $Res Function(_$EBFormIntimationResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timelineName = freezed,
    Object? version = freezed,
    Object? timelineVersion = freezed,
    Object? stage = freezed,
    Object? name = freezed,
  }) {
    return _then(_$EBFormIntimationResponseModelImpl(
      timelineName: freezed == timelineName
          ? _value.timelineName
          : timelineName // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      timelineVersion: freezed == timelineVersion
          ? _value.timelineVersion
          : timelineVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EBFormIntimationResponseModelImpl
    implements _EBFormIntimationResponseModel {
  const _$EBFormIntimationResponseModelImpl(
      {this.timelineName,
      this.version,
      this.timelineVersion,
      this.stage,
      this.name});

  factory _$EBFormIntimationResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EBFormIntimationResponseModelImplFromJson(json);

  @override
  final String? timelineName;
  @override
  final String? version;
  @override
  final String? timelineVersion;
  @override
  final Stage? stage;
  @override
  final String? name;

  @override
  String toString() {
    return 'EBFormIntimationResponseModel(timelineName: $timelineName, version: $version, timelineVersion: $timelineVersion, stage: $stage, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EBFormIntimationResponseModelImpl &&
            (identical(other.timelineName, timelineName) ||
                other.timelineName == timelineName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.timelineVersion, timelineVersion) ||
                other.timelineVersion == timelineVersion) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, timelineName, version, timelineVersion, stage, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EBFormIntimationResponseModelImplCopyWith<
          _$EBFormIntimationResponseModelImpl>
      get copyWith => __$$EBFormIntimationResponseModelImplCopyWithImpl<
          _$EBFormIntimationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EBFormIntimationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _EBFormIntimationResponseModel
    implements EBFormIntimationResponseModel {
  const factory _EBFormIntimationResponseModel(
      {final String? timelineName,
      final String? version,
      final String? timelineVersion,
      final Stage? stage,
      final String? name}) = _$EBFormIntimationResponseModelImpl;

  factory _EBFormIntimationResponseModel.fromJson(Map<String, dynamic> json) =
      _$EBFormIntimationResponseModelImpl.fromJson;

  @override
  String? get timelineName;
  @override
  String? get version;
  @override
  String? get timelineVersion;
  @override
  Stage? get stage;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$EBFormIntimationResponseModelImplCopyWith<
          _$EBFormIntimationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Stage _$StageFromJson(Map<String, dynamic> json) {
  return _Stage.fromJson(json);
}

/// @nodoc
mixin _$Stage {
  String? get name => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  dynamic get titleDisplay => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get descriptionDisplay => throw _privateConstructorUsedError;
  bool? get repeats => throw _privateConstructorUsedError;
  int? get minRepeat => throw _privateConstructorUsedError;
  int? get maxRepeat => throw _privateConstructorUsedError;
  dynamic get differentiator => throw _privateConstructorUsedError;
  String? get logoPosition => throw _privateConstructorUsedError;
  String? get formLayoutType => throw _privateConstructorUsedError;
  List<Page>? get pages => throw _privateConstructorUsedError;
  String? get stageName => throw _privateConstructorUsedError;
  String? get stageVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StageCopyWith<Stage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageCopyWith<$Res> {
  factory $StageCopyWith(Stage value, $Res Function(Stage) then) =
      _$StageCopyWithImpl<$Res, Stage>;
  @useResult
  $Res call(
      {String? name,
      String? version,
      String? title,
      dynamic titleDisplay,
      dynamic description,
      dynamic descriptionDisplay,
      bool? repeats,
      int? minRepeat,
      int? maxRepeat,
      dynamic differentiator,
      String? logoPosition,
      String? formLayoutType,
      List<Page>? pages,
      String? stageName,
      String? stageVersion});
}

/// @nodoc
class _$StageCopyWithImpl<$Res, $Val extends Stage>
    implements $StageCopyWith<$Res> {
  _$StageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? title = freezed,
    Object? titleDisplay = freezed,
    Object? description = freezed,
    Object? descriptionDisplay = freezed,
    Object? repeats = freezed,
    Object? minRepeat = freezed,
    Object? maxRepeat = freezed,
    Object? differentiator = freezed,
    Object? logoPosition = freezed,
    Object? formLayoutType = freezed,
    Object? pages = freezed,
    Object? stageName = freezed,
    Object? stageVersion = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleDisplay: freezed == titleDisplay
          ? _value.titleDisplay
          : titleDisplay // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      descriptionDisplay: freezed == descriptionDisplay
          ? _value.descriptionDisplay
          : descriptionDisplay // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      differentiator: freezed == differentiator
          ? _value.differentiator
          : differentiator // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      stageName: freezed == stageName
          ? _value.stageName
          : stageName // ignore: cast_nullable_to_non_nullable
              as String?,
      stageVersion: freezed == stageVersion
          ? _value.stageVersion
          : stageVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StageImplCopyWith<$Res> implements $StageCopyWith<$Res> {
  factory _$$StageImplCopyWith(
          _$StageImpl value, $Res Function(_$StageImpl) then) =
      __$$StageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? version,
      String? title,
      dynamic titleDisplay,
      dynamic description,
      dynamic descriptionDisplay,
      bool? repeats,
      int? minRepeat,
      int? maxRepeat,
      dynamic differentiator,
      String? logoPosition,
      String? formLayoutType,
      List<Page>? pages,
      String? stageName,
      String? stageVersion});
}

/// @nodoc
class __$$StageImplCopyWithImpl<$Res>
    extends _$StageCopyWithImpl<$Res, _$StageImpl>
    implements _$$StageImplCopyWith<$Res> {
  __$$StageImplCopyWithImpl(
      _$StageImpl _value, $Res Function(_$StageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? title = freezed,
    Object? titleDisplay = freezed,
    Object? description = freezed,
    Object? descriptionDisplay = freezed,
    Object? repeats = freezed,
    Object? minRepeat = freezed,
    Object? maxRepeat = freezed,
    Object? differentiator = freezed,
    Object? logoPosition = freezed,
    Object? formLayoutType = freezed,
    Object? pages = freezed,
    Object? stageName = freezed,
    Object? stageVersion = freezed,
  }) {
    return _then(_$StageImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleDisplay: freezed == titleDisplay
          ? _value.titleDisplay
          : titleDisplay // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      descriptionDisplay: freezed == descriptionDisplay
          ? _value.descriptionDisplay
          : descriptionDisplay // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      differentiator: freezed == differentiator
          ? _value.differentiator
          : differentiator // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      stageName: freezed == stageName
          ? _value.stageName
          : stageName // ignore: cast_nullable_to_non_nullable
              as String?,
      stageVersion: freezed == stageVersion
          ? _value.stageVersion
          : stageVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StageImpl implements _Stage {
  const _$StageImpl(
      {this.name,
      this.version,
      this.title,
      this.titleDisplay,
      this.description,
      this.descriptionDisplay,
      this.repeats,
      this.minRepeat,
      this.maxRepeat,
      this.differentiator,
      this.logoPosition,
      this.formLayoutType,
      final List<Page>? pages,
      this.stageName,
      this.stageVersion})
      : _pages = pages;

  factory _$StageImpl.fromJson(Map<String, dynamic> json) =>
      _$$StageImplFromJson(json);

  @override
  final String? name;
  @override
  final String? version;
  @override
  final String? title;
  @override
  final dynamic titleDisplay;
  @override
  final dynamic description;
  @override
  final dynamic descriptionDisplay;
  @override
  final bool? repeats;
  @override
  final int? minRepeat;
  @override
  final int? maxRepeat;
  @override
  final dynamic differentiator;
  @override
  final String? logoPosition;
  @override
  final String? formLayoutType;
  final List<Page>? _pages;
  @override
  List<Page>? get pages {
    final value = _pages;
    if (value == null) return null;
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? stageName;
  @override
  final String? stageVersion;

  @override
  String toString() {
    return 'Stage(name: $name, version: $version, title: $title, titleDisplay: $titleDisplay, description: $description, descriptionDisplay: $descriptionDisplay, repeats: $repeats, minRepeat: $minRepeat, maxRepeat: $maxRepeat, differentiator: $differentiator, logoPosition: $logoPosition, formLayoutType: $formLayoutType, pages: $pages, stageName: $stageName, stageVersion: $stageVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StageImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other.titleDisplay, titleDisplay) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.descriptionDisplay, descriptionDisplay) &&
            (identical(other.repeats, repeats) || other.repeats == repeats) &&
            (identical(other.minRepeat, minRepeat) ||
                other.minRepeat == minRepeat) &&
            (identical(other.maxRepeat, maxRepeat) ||
                other.maxRepeat == maxRepeat) &&
            const DeepCollectionEquality()
                .equals(other.differentiator, differentiator) &&
            (identical(other.logoPosition, logoPosition) ||
                other.logoPosition == logoPosition) &&
            (identical(other.formLayoutType, formLayoutType) ||
                other.formLayoutType == formLayoutType) &&
            const DeepCollectionEquality().equals(other._pages, _pages) &&
            (identical(other.stageName, stageName) ||
                other.stageName == stageName) &&
            (identical(other.stageVersion, stageVersion) ||
                other.stageVersion == stageVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      version,
      title,
      const DeepCollectionEquality().hash(titleDisplay),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(descriptionDisplay),
      repeats,
      minRepeat,
      maxRepeat,
      const DeepCollectionEquality().hash(differentiator),
      logoPosition,
      formLayoutType,
      const DeepCollectionEquality().hash(_pages),
      stageName,
      stageVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StageImplCopyWith<_$StageImpl> get copyWith =>
      __$$StageImplCopyWithImpl<_$StageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StageImplToJson(
      this,
    );
  }
}

abstract class _Stage implements Stage {
  const factory _Stage(
      {final String? name,
      final String? version,
      final String? title,
      final dynamic titleDisplay,
      final dynamic description,
      final dynamic descriptionDisplay,
      final bool? repeats,
      final int? minRepeat,
      final int? maxRepeat,
      final dynamic differentiator,
      final String? logoPosition,
      final String? formLayoutType,
      final List<Page>? pages,
      final String? stageName,
      final String? stageVersion}) = _$StageImpl;

  factory _Stage.fromJson(Map<String, dynamic> json) = _$StageImpl.fromJson;

  @override
  String? get name;
  @override
  String? get version;
  @override
  String? get title;
  @override
  dynamic get titleDisplay;
  @override
  dynamic get description;
  @override
  dynamic get descriptionDisplay;
  @override
  bool? get repeats;
  @override
  int? get minRepeat;
  @override
  int? get maxRepeat;
  @override
  dynamic get differentiator;
  @override
  String? get logoPosition;
  @override
  String? get formLayoutType;
  @override
  List<Page>? get pages;
  @override
  String? get stageName;
  @override
  String? get stageVersion;
  @override
  @JsonKey(ignore: true)
  _$$StageImplCopyWith<_$StageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Page _$PageFromJson(Map<String, dynamic> json) {
  return _Page.fromJson(json);
}

/// @nodoc
mixin _$Page {
  String? get name => throw _privateConstructorUsedError;
  dynamic get version => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  dynamic get titleDisplay => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get descriptionDisplay => throw _privateConstructorUsedError;
  List<PageElement>? get elements => throw _privateConstructorUsedError;

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
      {String? name,
      dynamic version,
      String? title,
      dynamic titleDisplay,
      dynamic description,
      dynamic descriptionDisplay,
      List<PageElement>? elements});
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
    Object? name = freezed,
    Object? version = freezed,
    Object? title = freezed,
    Object? titleDisplay = freezed,
    Object? description = freezed,
    Object? descriptionDisplay = freezed,
    Object? elements = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleDisplay: freezed == titleDisplay
          ? _value.titleDisplay
          : titleDisplay // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      descriptionDisplay: freezed == descriptionDisplay
          ? _value.descriptionDisplay
          : descriptionDisplay // ignore: cast_nullable_to_non_nullable
              as dynamic,
      elements: freezed == elements
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<PageElement>?,
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
      {String? name,
      dynamic version,
      String? title,
      dynamic titleDisplay,
      dynamic description,
      dynamic descriptionDisplay,
      List<PageElement>? elements});
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
    Object? name = freezed,
    Object? version = freezed,
    Object? title = freezed,
    Object? titleDisplay = freezed,
    Object? description = freezed,
    Object? descriptionDisplay = freezed,
    Object? elements = freezed,
  }) {
    return _then(_$PageImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleDisplay: freezed == titleDisplay
          ? _value.titleDisplay
          : titleDisplay // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      descriptionDisplay: freezed == descriptionDisplay
          ? _value.descriptionDisplay
          : descriptionDisplay // ignore: cast_nullable_to_non_nullable
              as dynamic,
      elements: freezed == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<PageElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageImpl implements _Page {
  const _$PageImpl(
      {this.name,
      this.version,
      this.title,
      this.titleDisplay,
      this.description,
      this.descriptionDisplay,
      final List<PageElement>? elements})
      : _elements = elements;

  factory _$PageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageImplFromJson(json);

  @override
  final String? name;
  @override
  final dynamic version;
  @override
  final String? title;
  @override
  final dynamic titleDisplay;
  @override
  final dynamic description;
  @override
  final dynamic descriptionDisplay;
  final List<PageElement>? _elements;
  @override
  List<PageElement>? get elements {
    final value = _elements;
    if (value == null) return null;
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Page(name: $name, version: $version, title: $title, titleDisplay: $titleDisplay, description: $description, descriptionDisplay: $descriptionDisplay, elements: $elements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other.titleDisplay, titleDisplay) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.descriptionDisplay, descriptionDisplay) &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(version),
      title,
      const DeepCollectionEquality().hash(titleDisplay),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(descriptionDisplay),
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
      {final String? name,
      final dynamic version,
      final String? title,
      final dynamic titleDisplay,
      final dynamic description,
      final dynamic descriptionDisplay,
      final List<PageElement>? elements}) = _$PageImpl;

  factory _Page.fromJson(Map<String, dynamic> json) = _$PageImpl.fromJson;

  @override
  String? get name;
  @override
  dynamic get version;
  @override
  String? get title;
  @override
  dynamic get titleDisplay;
  @override
  dynamic get description;
  @override
  dynamic get descriptionDisplay;
  @override
  List<PageElement>? get elements;
  @override
  @JsonKey(ignore: true)
  _$$PageImplCopyWith<_$PageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageElement _$PageElementFromJson(Map<String, dynamic> json) {
  return _PageElement.fromJson(json);
}

/// @nodoc
mixin _$PageElement {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get prefix => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get titleDisplay => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get descriptionDisplay => throw _privateConstructorUsedError;
  bool? get repeats => throw _privateConstructorUsedError;
  int? get minRepeat => throw _privateConstructorUsedError;
  int? get maxRepeat => throw _privateConstructorUsedError;
  List<ElementElementClass>? get elements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageElementCopyWith<PageElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageElementCopyWith<$Res> {
  factory $PageElementCopyWith(
          PageElement value, $Res Function(PageElement) then) =
      _$PageElementCopyWithImpl<$Res, PageElement>;
  @useResult
  $Res call(
      {String? name,
      String? type,
      String? prefix,
      String? title,
      String? titleDisplay,
      String? description,
      String? descriptionDisplay,
      bool? repeats,
      int? minRepeat,
      int? maxRepeat,
      List<ElementElementClass>? elements});
}

/// @nodoc
class _$PageElementCopyWithImpl<$Res, $Val extends PageElement>
    implements $PageElementCopyWith<$Res> {
  _$PageElementCopyWithImpl(this._value, this._then);

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
    Object? titleDisplay = freezed,
    Object? description = freezed,
    Object? descriptionDisplay = freezed,
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
      titleDisplay: freezed == titleDisplay
          ? _value.titleDisplay
          : titleDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionDisplay: freezed == descriptionDisplay
          ? _value.descriptionDisplay
          : descriptionDisplay // ignore: cast_nullable_to_non_nullable
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
              as List<ElementElementClass>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageElementImplCopyWith<$Res>
    implements $PageElementCopyWith<$Res> {
  factory _$$PageElementImplCopyWith(
          _$PageElementImpl value, $Res Function(_$PageElementImpl) then) =
      __$$PageElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? type,
      String? prefix,
      String? title,
      String? titleDisplay,
      String? description,
      String? descriptionDisplay,
      bool? repeats,
      int? minRepeat,
      int? maxRepeat,
      List<ElementElementClass>? elements});
}

/// @nodoc
class __$$PageElementImplCopyWithImpl<$Res>
    extends _$PageElementCopyWithImpl<$Res, _$PageElementImpl>
    implements _$$PageElementImplCopyWith<$Res> {
  __$$PageElementImplCopyWithImpl(
      _$PageElementImpl _value, $Res Function(_$PageElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? prefix = freezed,
    Object? title = freezed,
    Object? titleDisplay = freezed,
    Object? description = freezed,
    Object? descriptionDisplay = freezed,
    Object? repeats = freezed,
    Object? minRepeat = freezed,
    Object? maxRepeat = freezed,
    Object? elements = freezed,
  }) {
    return _then(_$PageElementImpl(
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
      titleDisplay: freezed == titleDisplay
          ? _value.titleDisplay
          : titleDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionDisplay: freezed == descriptionDisplay
          ? _value.descriptionDisplay
          : descriptionDisplay // ignore: cast_nullable_to_non_nullable
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
              as List<ElementElementClass>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageElementImpl implements _PageElement {
  const _$PageElementImpl(
      {this.name,
      this.type,
      this.prefix,
      this.title,
      this.titleDisplay,
      this.description,
      this.descriptionDisplay,
      this.repeats,
      this.minRepeat,
      this.maxRepeat,
      final List<ElementElementClass>? elements})
      : _elements = elements;

  factory _$PageElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageElementImplFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? prefix;
  @override
  final String? title;
  @override
  final String? titleDisplay;
  @override
  final String? description;
  @override
  final String? descriptionDisplay;
  @override
  final bool? repeats;
  @override
  final int? minRepeat;
  @override
  final int? maxRepeat;
  final List<ElementElementClass>? _elements;
  @override
  List<ElementElementClass>? get elements {
    final value = _elements;
    if (value == null) return null;
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PageElement(name: $name, type: $type, prefix: $prefix, title: $title, titleDisplay: $titleDisplay, description: $description, descriptionDisplay: $descriptionDisplay, repeats: $repeats, minRepeat: $minRepeat, maxRepeat: $maxRepeat, elements: $elements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageElementImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleDisplay, titleDisplay) ||
                other.titleDisplay == titleDisplay) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionDisplay, descriptionDisplay) ||
                other.descriptionDisplay == descriptionDisplay) &&
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
      titleDisplay,
      description,
      descriptionDisplay,
      repeats,
      minRepeat,
      maxRepeat,
      const DeepCollectionEquality().hash(_elements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageElementImplCopyWith<_$PageElementImpl> get copyWith =>
      __$$PageElementImplCopyWithImpl<_$PageElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageElementImplToJson(
      this,
    );
  }
}

abstract class _PageElement implements PageElement {
  const factory _PageElement(
      {final String? name,
      final String? type,
      final String? prefix,
      final String? title,
      final String? titleDisplay,
      final String? description,
      final String? descriptionDisplay,
      final bool? repeats,
      final int? minRepeat,
      final int? maxRepeat,
      final List<ElementElementClass>? elements}) = _$PageElementImpl;

  factory _PageElement.fromJson(Map<String, dynamic> json) =
      _$PageElementImpl.fromJson;

  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get prefix;
  @override
  String? get title;
  @override
  String? get titleDisplay;
  @override
  String? get description;
  @override
  String? get descriptionDisplay;
  @override
  bool? get repeats;
  @override
  int? get minRepeat;
  @override
  int? get maxRepeat;
  @override
  List<ElementElementClass>? get elements;
  @override
  @JsonKey(ignore: true)
  _$$PageElementImplCopyWith<_$PageElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ElementElementClass _$ElementElementClassFromJson(Map<String, dynamic> json) {
  return _ElementElementClass.fromJson(json);
}

/// @nodoc
mixin _$ElementElementClass {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get prefix => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get titleDisplay => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get descriptionDisplay => throw _privateConstructorUsedError;
  bool? get repeats => throw _privateConstructorUsedError;
  int? get minRepeat => throw _privateConstructorUsedError;
  int? get maxRepeat => throw _privateConstructorUsedError;
  bool? get isRequired => throw _privateConstructorUsedError;
  String? get requiredErrorText => throw _privateConstructorUsedError;
  bool? get readOnly => throw _privateConstructorUsedError;
  String? get inputType => throw _privateConstructorUsedError;
  List<Validator>? get validators => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElementElementClassCopyWith<ElementElementClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementElementClassCopyWith<$Res> {
  factory $ElementElementClassCopyWith(
          ElementElementClass value, $Res Function(ElementElementClass) then) =
      _$ElementElementClassCopyWithImpl<$Res, ElementElementClass>;
  @useResult
  $Res call(
      {String? name,
      String? type,
      String? prefix,
      String? title,
      String? titleDisplay,
      String? description,
      String? descriptionDisplay,
      bool? repeats,
      int? minRepeat,
      int? maxRepeat,
      bool? isRequired,
      String? requiredErrorText,
      bool? readOnly,
      String? inputType,
      List<Validator>? validators});
}

/// @nodoc
class _$ElementElementClassCopyWithImpl<$Res, $Val extends ElementElementClass>
    implements $ElementElementClassCopyWith<$Res> {
  _$ElementElementClassCopyWithImpl(this._value, this._then);

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
    Object? titleDisplay = freezed,
    Object? description = freezed,
    Object? descriptionDisplay = freezed,
    Object? repeats = freezed,
    Object? minRepeat = freezed,
    Object? maxRepeat = freezed,
    Object? isRequired = freezed,
    Object? requiredErrorText = freezed,
    Object? readOnly = freezed,
    Object? inputType = freezed,
    Object? validators = freezed,
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
      titleDisplay: freezed == titleDisplay
          ? _value.titleDisplay
          : titleDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionDisplay: freezed == descriptionDisplay
          ? _value.descriptionDisplay
          : descriptionDisplay // ignore: cast_nullable_to_non_nullable
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
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      requiredErrorText: freezed == requiredErrorText
          ? _value.requiredErrorText
          : requiredErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      readOnly: freezed == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      inputType: freezed == inputType
          ? _value.inputType
          : inputType // ignore: cast_nullable_to_non_nullable
              as String?,
      validators: freezed == validators
          ? _value.validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<Validator>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElementElementClassImplCopyWith<$Res>
    implements $ElementElementClassCopyWith<$Res> {
  factory _$$ElementElementClassImplCopyWith(_$ElementElementClassImpl value,
          $Res Function(_$ElementElementClassImpl) then) =
      __$$ElementElementClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? type,
      String? prefix,
      String? title,
      String? titleDisplay,
      String? description,
      String? descriptionDisplay,
      bool? repeats,
      int? minRepeat,
      int? maxRepeat,
      bool? isRequired,
      String? requiredErrorText,
      bool? readOnly,
      String? inputType,
      List<Validator>? validators});
}

/// @nodoc
class __$$ElementElementClassImplCopyWithImpl<$Res>
    extends _$ElementElementClassCopyWithImpl<$Res, _$ElementElementClassImpl>
    implements _$$ElementElementClassImplCopyWith<$Res> {
  __$$ElementElementClassImplCopyWithImpl(_$ElementElementClassImpl _value,
      $Res Function(_$ElementElementClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? prefix = freezed,
    Object? title = freezed,
    Object? titleDisplay = freezed,
    Object? description = freezed,
    Object? descriptionDisplay = freezed,
    Object? repeats = freezed,
    Object? minRepeat = freezed,
    Object? maxRepeat = freezed,
    Object? isRequired = freezed,
    Object? requiredErrorText = freezed,
    Object? readOnly = freezed,
    Object? inputType = freezed,
    Object? validators = freezed,
  }) {
    return _then(_$ElementElementClassImpl(
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
      titleDisplay: freezed == titleDisplay
          ? _value.titleDisplay
          : titleDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionDisplay: freezed == descriptionDisplay
          ? _value.descriptionDisplay
          : descriptionDisplay // ignore: cast_nullable_to_non_nullable
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
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      requiredErrorText: freezed == requiredErrorText
          ? _value.requiredErrorText
          : requiredErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      readOnly: freezed == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      inputType: freezed == inputType
          ? _value.inputType
          : inputType // ignore: cast_nullable_to_non_nullable
              as String?,
      validators: freezed == validators
          ? _value._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<Validator>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElementElementClassImpl implements _ElementElementClass {
  const _$ElementElementClassImpl(
      {this.name,
      this.type,
      this.prefix,
      this.title,
      this.titleDisplay,
      this.description,
      this.descriptionDisplay,
      this.repeats,
      this.minRepeat,
      this.maxRepeat,
      this.isRequired,
      this.requiredErrorText,
      this.readOnly,
      this.inputType,
      final List<Validator>? validators})
      : _validators = validators;

  factory _$ElementElementClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElementElementClassImplFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? prefix;
  @override
  final String? title;
  @override
  final String? titleDisplay;
  @override
  final String? description;
  @override
  final String? descriptionDisplay;
  @override
  final bool? repeats;
  @override
  final int? minRepeat;
  @override
  final int? maxRepeat;
  @override
  final bool? isRequired;
  @override
  final String? requiredErrorText;
  @override
  final bool? readOnly;
  @override
  final String? inputType;
  final List<Validator>? _validators;
  @override
  List<Validator>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ElementElementClass(name: $name, type: $type, prefix: $prefix, title: $title, titleDisplay: $titleDisplay, description: $description, descriptionDisplay: $descriptionDisplay, repeats: $repeats, minRepeat: $minRepeat, maxRepeat: $maxRepeat, isRequired: $isRequired, requiredErrorText: $requiredErrorText, readOnly: $readOnly, inputType: $inputType, validators: $validators)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementElementClassImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleDisplay, titleDisplay) ||
                other.titleDisplay == titleDisplay) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionDisplay, descriptionDisplay) ||
                other.descriptionDisplay == descriptionDisplay) &&
            (identical(other.repeats, repeats) || other.repeats == repeats) &&
            (identical(other.minRepeat, minRepeat) ||
                other.minRepeat == minRepeat) &&
            (identical(other.maxRepeat, maxRepeat) ||
                other.maxRepeat == maxRepeat) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.requiredErrorText, requiredErrorText) ||
                other.requiredErrorText == requiredErrorText) &&
            (identical(other.readOnly, readOnly) ||
                other.readOnly == readOnly) &&
            (identical(other.inputType, inputType) ||
                other.inputType == inputType) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      type,
      prefix,
      title,
      titleDisplay,
      description,
      descriptionDisplay,
      repeats,
      minRepeat,
      maxRepeat,
      isRequired,
      requiredErrorText,
      readOnly,
      inputType,
      const DeepCollectionEquality().hash(_validators));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementElementClassImplCopyWith<_$ElementElementClassImpl> get copyWith =>
      __$$ElementElementClassImplCopyWithImpl<_$ElementElementClassImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElementElementClassImplToJson(
      this,
    );
  }
}

abstract class _ElementElementClass implements ElementElementClass {
  const factory _ElementElementClass(
      {final String? name,
      final String? type,
      final String? prefix,
      final String? title,
      final String? titleDisplay,
      final String? description,
      final String? descriptionDisplay,
      final bool? repeats,
      final int? minRepeat,
      final int? maxRepeat,
      final bool? isRequired,
      final String? requiredErrorText,
      final bool? readOnly,
      final String? inputType,
      final List<Validator>? validators}) = _$ElementElementClassImpl;

  factory _ElementElementClass.fromJson(Map<String, dynamic> json) =
      _$ElementElementClassImpl.fromJson;

  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get prefix;
  @override
  String? get title;
  @override
  String? get titleDisplay;
  @override
  String? get description;
  @override
  String? get descriptionDisplay;
  @override
  bool? get repeats;
  @override
  int? get minRepeat;
  @override
  int? get maxRepeat;
  @override
  bool? get isRequired;
  @override
  String? get requiredErrorText;
  @override
  bool? get readOnly;
  @override
  String? get inputType;
  @override
  List<Validator>? get validators;
  @override
  @JsonKey(ignore: true)
  _$$ElementElementClassImplCopyWith<_$ElementElementClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Validator _$ValidatorFromJson(Map<String, dynamic> json) {
  return _Validator.fromJson(json);
}

/// @nodoc
mixin _$Validator {
  String? get type => throw _privateConstructorUsedError;
  String? get regex => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidatorCopyWith<Validator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidatorCopyWith<$Res> {
  factory $ValidatorCopyWith(Validator value, $Res Function(Validator) then) =
      _$ValidatorCopyWithImpl<$Res, Validator>;
  @useResult
  $Res call({String? type, String? regex, String? text});
}

/// @nodoc
class _$ValidatorCopyWithImpl<$Res, $Val extends Validator>
    implements $ValidatorCopyWith<$Res> {
  _$ValidatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? regex = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      regex: freezed == regex
          ? _value.regex
          : regex // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidatorImplCopyWith<$Res>
    implements $ValidatorCopyWith<$Res> {
  factory _$$ValidatorImplCopyWith(
          _$ValidatorImpl value, $Res Function(_$ValidatorImpl) then) =
      __$$ValidatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? regex, String? text});
}

/// @nodoc
class __$$ValidatorImplCopyWithImpl<$Res>
    extends _$ValidatorCopyWithImpl<$Res, _$ValidatorImpl>
    implements _$$ValidatorImplCopyWith<$Res> {
  __$$ValidatorImplCopyWithImpl(
      _$ValidatorImpl _value, $Res Function(_$ValidatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? regex = freezed,
    Object? text = freezed,
  }) {
    return _then(_$ValidatorImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      regex: freezed == regex
          ? _value.regex
          : regex // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidatorImpl implements _Validator {
  const _$ValidatorImpl({this.type, this.regex, this.text});

  factory _$ValidatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidatorImplFromJson(json);

  @override
  final String? type;
  @override
  final String? regex;
  @override
  final String? text;

  @override
  String toString() {
    return 'Validator(type: $type, regex: $regex, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidatorImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.regex, regex) || other.regex == regex) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, regex, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidatorImplCopyWith<_$ValidatorImpl> get copyWith =>
      __$$ValidatorImplCopyWithImpl<_$ValidatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidatorImplToJson(
      this,
    );
  }
}

abstract class _Validator implements Validator {
  const factory _Validator(
      {final String? type,
      final String? regex,
      final String? text}) = _$ValidatorImpl;

  factory _Validator.fromJson(Map<String, dynamic> json) =
      _$ValidatorImpl.fromJson;

  @override
  String? get type;
  @override
  String? get regex;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$ValidatorImplCopyWith<_$ValidatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
