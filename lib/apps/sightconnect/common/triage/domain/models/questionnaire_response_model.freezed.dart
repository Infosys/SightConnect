/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionnaireResponseModel _$QuestionnaireResponseModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireResponseModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get approvalDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get lastReviewDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get effectiveFrom => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get effectiveTill => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;
  int? get publisherCode => throw _privateConstructorUsedError;
  String? get publisherType => throw _privateConstructorUsedError;
  List<QuestionResponseModel>? get questionResponseDTO =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireResponseModelCopyWith<QuestionnaireResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireResponseModelCopyWith<$Res> {
  factory $QuestionnaireResponseModelCopyWith(QuestionnaireResponseModel value,
          $Res Function(QuestionnaireResponseModel) then) =
      _$QuestionnaireResponseModelCopyWithImpl<$Res,
          QuestionnaireResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? version,
      @TimestampConverter() DateTime? approvalDate,
      @TimestampConverter() DateTime? lastReviewDate,
      @TimestampConverter() DateTime? effectiveFrom,
      @TimestampConverter() DateTime? effectiveTill,
      @TimestampConverter() DateTime? creationDate,
      @TimestampConverter() DateTime? lastModifiedDate,
      int? publisherCode,
      String? publisherType,
      List<QuestionResponseModel>? questionResponseDTO});
}

/// @nodoc
class _$QuestionnaireResponseModelCopyWithImpl<$Res,
        $Val extends QuestionnaireResponseModel>
    implements $QuestionnaireResponseModelCopyWith<$Res> {
  _$QuestionnaireResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? approvalDate = freezed,
    Object? lastReviewDate = freezed,
    Object? effectiveFrom = freezed,
    Object? effectiveTill = freezed,
    Object? creationDate = freezed,
    Object? lastModifiedDate = freezed,
    Object? publisherCode = freezed,
    Object? publisherType = freezed,
    Object? questionResponseDTO = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      effectiveFrom: freezed == effectiveFrom
          ? _value.effectiveFrom
          : effectiveFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      effectiveTill: freezed == effectiveTill
          ? _value.effectiveTill
          : effectiveTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisherCode: freezed == publisherCode
          ? _value.publisherCode
          : publisherCode // ignore: cast_nullable_to_non_nullable
              as int?,
      publisherType: freezed == publisherType
          ? _value.publisherType
          : publisherType // ignore: cast_nullable_to_non_nullable
              as String?,
      questionResponseDTO: freezed == questionResponseDTO
          ? _value.questionResponseDTO
          : questionResponseDTO // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionnaireResponseModelCopyWith<$Res>
    implements $QuestionnaireResponseModelCopyWith<$Res> {
  factory _$$_QuestionnaireResponseModelCopyWith(
          _$_QuestionnaireResponseModel value,
          $Res Function(_$_QuestionnaireResponseModel) then) =
      __$$_QuestionnaireResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? version,
      @TimestampConverter() DateTime? approvalDate,
      @TimestampConverter() DateTime? lastReviewDate,
      @TimestampConverter() DateTime? effectiveFrom,
      @TimestampConverter() DateTime? effectiveTill,
      @TimestampConverter() DateTime? creationDate,
      @TimestampConverter() DateTime? lastModifiedDate,
      int? publisherCode,
      String? publisherType,
      List<QuestionResponseModel>? questionResponseDTO});
}

/// @nodoc
class __$$_QuestionnaireResponseModelCopyWithImpl<$Res>
    extends _$QuestionnaireResponseModelCopyWithImpl<$Res,
        _$_QuestionnaireResponseModel>
    implements _$$_QuestionnaireResponseModelCopyWith<$Res> {
  __$$_QuestionnaireResponseModelCopyWithImpl(
      _$_QuestionnaireResponseModel _value,
      $Res Function(_$_QuestionnaireResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? approvalDate = freezed,
    Object? lastReviewDate = freezed,
    Object? effectiveFrom = freezed,
    Object? effectiveTill = freezed,
    Object? creationDate = freezed,
    Object? lastModifiedDate = freezed,
    Object? publisherCode = freezed,
    Object? publisherType = freezed,
    Object? questionResponseDTO = freezed,
  }) {
    return _then(_$_QuestionnaireResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      effectiveFrom: freezed == effectiveFrom
          ? _value.effectiveFrom
          : effectiveFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      effectiveTill: freezed == effectiveTill
          ? _value.effectiveTill
          : effectiveTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisherCode: freezed == publisherCode
          ? _value.publisherCode
          : publisherCode // ignore: cast_nullable_to_non_nullable
              as int?,
      publisherType: freezed == publisherType
          ? _value.publisherType
          : publisherType // ignore: cast_nullable_to_non_nullable
              as String?,
      questionResponseDTO: freezed == questionResponseDTO
          ? _value._questionResponseDTO
          : questionResponseDTO // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionnaireResponseModel implements _QuestionnaireResponseModel {
  const _$_QuestionnaireResponseModel(
      {this.id,
      this.name,
      this.description,
      this.version,
      @TimestampConverter() this.approvalDate,
      @TimestampConverter() this.lastReviewDate,
      @TimestampConverter() this.effectiveFrom,
      @TimestampConverter() this.effectiveTill,
      @TimestampConverter() this.creationDate,
      @TimestampConverter() this.lastModifiedDate,
      this.publisherCode,
      this.publisherType,
      final List<QuestionResponseModel>? questionResponseDTO})
      : _questionResponseDTO = questionResponseDTO;

  factory _$_QuestionnaireResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? version;
  @override
  @TimestampConverter()
  final DateTime? approvalDate;
  @override
  @TimestampConverter()
  final DateTime? lastReviewDate;
  @override
  @TimestampConverter()
  final DateTime? effectiveFrom;
  @override
  @TimestampConverter()
  final DateTime? effectiveTill;
  @override
  @TimestampConverter()
  final DateTime? creationDate;
  @override
  @TimestampConverter()
  final DateTime? lastModifiedDate;
  @override
  final int? publisherCode;
  @override
  final String? publisherType;
  final List<QuestionResponseModel>? _questionResponseDTO;
  @override
  List<QuestionResponseModel>? get questionResponseDTO {
    final value = _questionResponseDTO;
    if (value == null) return null;
    if (_questionResponseDTO is EqualUnmodifiableListView)
      return _questionResponseDTO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionnaireResponseModel(id: $id, name: $name, description: $description, version: $version, approvalDate: $approvalDate, lastReviewDate: $lastReviewDate, effectiveFrom: $effectiveFrom, effectiveTill: $effectiveTill, creationDate: $creationDate, lastModifiedDate: $lastModifiedDate, publisherCode: $publisherCode, publisherType: $publisherType, questionResponseDTO: $questionResponseDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.approvalDate, approvalDate) ||
                other.approvalDate == approvalDate) &&
            (identical(other.lastReviewDate, lastReviewDate) ||
                other.lastReviewDate == lastReviewDate) &&
            (identical(other.effectiveFrom, effectiveFrom) ||
                other.effectiveFrom == effectiveFrom) &&
            (identical(other.effectiveTill, effectiveTill) ||
                other.effectiveTill == effectiveTill) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate) &&
            (identical(other.publisherCode, publisherCode) ||
                other.publisherCode == publisherCode) &&
            (identical(other.publisherType, publisherType) ||
                other.publisherType == publisherType) &&
            const DeepCollectionEquality()
                .equals(other._questionResponseDTO, _questionResponseDTO));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      version,
      approvalDate,
      lastReviewDate,
      effectiveFrom,
      effectiveTill,
      creationDate,
      lastModifiedDate,
      publisherCode,
      publisherType,
      const DeepCollectionEquality().hash(_questionResponseDTO));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireResponseModelCopyWith<_$_QuestionnaireResponseModel>
      get copyWith => __$$_QuestionnaireResponseModelCopyWithImpl<
          _$_QuestionnaireResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireResponseModelToJson(
      this,
    );
  }
}

abstract class _QuestionnaireResponseModel
    implements QuestionnaireResponseModel {
  const factory _QuestionnaireResponseModel(
          {final int? id,
          final String? name,
          final String? description,
          final String? version,
          @TimestampConverter() final DateTime? approvalDate,
          @TimestampConverter() final DateTime? lastReviewDate,
          @TimestampConverter() final DateTime? effectiveFrom,
          @TimestampConverter() final DateTime? effectiveTill,
          @TimestampConverter() final DateTime? creationDate,
          @TimestampConverter() final DateTime? lastModifiedDate,
          final int? publisherCode,
          final String? publisherType,
          final List<QuestionResponseModel>? questionResponseDTO}) =
      _$_QuestionnaireResponseModel;

  factory _QuestionnaireResponseModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionnaireResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get version;
  @override
  @TimestampConverter()
  DateTime? get approvalDate;
  @override
  @TimestampConverter()
  DateTime? get lastReviewDate;
  @override
  @TimestampConverter()
  DateTime? get effectiveFrom;
  @override
  @TimestampConverter()
  DateTime? get effectiveTill;
  @override
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  @TimestampConverter()
  DateTime? get lastModifiedDate;
  @override
  int? get publisherCode;
  @override
  String? get publisherType;
  @override
  List<QuestionResponseModel>? get questionResponseDTO;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireResponseModelCopyWith<_$_QuestionnaireResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
