/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TriageResponseModel _$TriageResponseModelFromJson(Map<String, dynamic> json) {
  return _TriageResponseModel.fromJson(json);
}

/// @nodoc
mixin _$TriageResponseModel {
  int? get patientId => throw _privateConstructorUsedError;
  int? get encounterId => throw _privateConstructorUsedError;
  ServiceType? get serviceType => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  int? get tenantCode => throw _privateConstructorUsedError;
  List<PerformerModel>? get performer => throw _privateConstructorUsedError;
  int? get assessmentCode => throw _privateConstructorUsedError;
  String? get assessmentVersion => throw _privateConstructorUsedError;
  DateTime? get issued => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get userStartDate => throw _privateConstructorUsedError;
  Source? get source => throw _privateConstructorUsedError;
  String? get sourceVersion => throw _privateConstructorUsedError;
  List<IncompleteTestModel>? get incompleteSection =>
      throw _privateConstructorUsedError;
  double? get cummulativeScore => throw _privateConstructorUsedError;
  List<Map<String, int>>? get score => throw _privateConstructorUsedError;
  List<PostImagingSelectionModel>? get imagingSelection =>
      throw _privateConstructorUsedError;
  List<PostObservationsModel>? get observations =>
      throw _privateConstructorUsedError;
  List<PostQuestionResponseModel>? get questionResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriageResponseModelCopyWith<TriageResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriageResponseModelCopyWith<$Res> {
  factory $TriageResponseModelCopyWith(
          TriageResponseModel value, $Res Function(TriageResponseModel) then) =
      _$TriageResponseModelCopyWithImpl<$Res, TriageResponseModel>;
  @useResult
  $Res call(
      {int? patientId,
      int? encounterId,
      ServiceType? serviceType,
      int? organizationCode,
      int? tenantCode,
      List<PerformerModel>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      String? sourceVersion,
      List<IncompleteTestModel>? incompleteSection,
      double? cummulativeScore,
      List<Map<String, int>>? score,
      List<PostImagingSelectionModel>? imagingSelection,
      List<PostObservationsModel>? observations,
      List<PostQuestionResponseModel>? questionResponse});
}

/// @nodoc
class _$TriageResponseModelCopyWithImpl<$Res, $Val extends TriageResponseModel>
    implements $TriageResponseModelCopyWith<$Res> {
  _$TriageResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? encounterId = freezed,
    Object? serviceType = freezed,
    Object? organizationCode = freezed,
    Object? tenantCode = freezed,
    Object? performer = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? issued = freezed,
    Object? userStartDate = freezed,
    Object? source = freezed,
    Object? sourceVersion = freezed,
    Object? incompleteSection = freezed,
    Object? cummulativeScore = freezed,
    Object? score = freezed,
    Object? imagingSelection = freezed,
    Object? observations = freezed,
    Object? questionResponse = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantCode: freezed == tenantCode
          ? _value.tenantCode
          : tenantCode // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<PerformerModel>?,
      assessmentCode: freezed == assessmentCode
          ? _value.assessmentCode
          : assessmentCode // ignore: cast_nullable_to_non_nullable
              as int?,
      assessmentVersion: freezed == assessmentVersion
          ? _value.assessmentVersion
          : assessmentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userStartDate: freezed == userStartDate
          ? _value.userStartDate
          : userStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source?,
      sourceVersion: freezed == sourceVersion
          ? _value.sourceVersion
          : sourceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      incompleteSection: freezed == incompleteSection
          ? _value.incompleteSection
          : incompleteSection // ignore: cast_nullable_to_non_nullable
              as List<IncompleteTestModel>?,
      cummulativeScore: freezed == cummulativeScore
          ? _value.cummulativeScore
          : cummulativeScore // ignore: cast_nullable_to_non_nullable
              as double?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as List<Map<String, int>>?,
      imagingSelection: freezed == imagingSelection
          ? _value.imagingSelection
          : imagingSelection // ignore: cast_nullable_to_non_nullable
              as List<PostImagingSelectionModel>?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<PostObservationsModel>?,
      questionResponse: freezed == questionResponse
          ? _value.questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<PostQuestionResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TriageResponseModelImplCopyWith<$Res>
    implements $TriageResponseModelCopyWith<$Res> {
  factory _$$TriageResponseModelImplCopyWith(_$TriageResponseModelImpl value,
          $Res Function(_$TriageResponseModelImpl) then) =
      __$$TriageResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? patientId,
      int? encounterId,
      ServiceType? serviceType,
      int? organizationCode,
      int? tenantCode,
      List<PerformerModel>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      String? sourceVersion,
      List<IncompleteTestModel>? incompleteSection,
      double? cummulativeScore,
      List<Map<String, int>>? score,
      List<PostImagingSelectionModel>? imagingSelection,
      List<PostObservationsModel>? observations,
      List<PostQuestionResponseModel>? questionResponse});
}

/// @nodoc
class __$$TriageResponseModelImplCopyWithImpl<$Res>
    extends _$TriageResponseModelCopyWithImpl<$Res, _$TriageResponseModelImpl>
    implements _$$TriageResponseModelImplCopyWith<$Res> {
  __$$TriageResponseModelImplCopyWithImpl(_$TriageResponseModelImpl _value,
      $Res Function(_$TriageResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? encounterId = freezed,
    Object? serviceType = freezed,
    Object? organizationCode = freezed,
    Object? tenantCode = freezed,
    Object? performer = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? issued = freezed,
    Object? userStartDate = freezed,
    Object? source = freezed,
    Object? sourceVersion = freezed,
    Object? incompleteSection = freezed,
    Object? cummulativeScore = freezed,
    Object? score = freezed,
    Object? imagingSelection = freezed,
    Object? observations = freezed,
    Object? questionResponse = freezed,
  }) {
    return _then(_$TriageResponseModelImpl(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantCode: freezed == tenantCode
          ? _value.tenantCode
          : tenantCode // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value._performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<PerformerModel>?,
      assessmentCode: freezed == assessmentCode
          ? _value.assessmentCode
          : assessmentCode // ignore: cast_nullable_to_non_nullable
              as int?,
      assessmentVersion: freezed == assessmentVersion
          ? _value.assessmentVersion
          : assessmentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userStartDate: freezed == userStartDate
          ? _value.userStartDate
          : userStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source?,
      sourceVersion: freezed == sourceVersion
          ? _value.sourceVersion
          : sourceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      incompleteSection: freezed == incompleteSection
          ? _value._incompleteSection
          : incompleteSection // ignore: cast_nullable_to_non_nullable
              as List<IncompleteTestModel>?,
      cummulativeScore: freezed == cummulativeScore
          ? _value.cummulativeScore
          : cummulativeScore // ignore: cast_nullable_to_non_nullable
              as double?,
      score: freezed == score
          ? _value._score
          : score // ignore: cast_nullable_to_non_nullable
              as List<Map<String, int>>?,
      imagingSelection: freezed == imagingSelection
          ? _value._imagingSelection
          : imagingSelection // ignore: cast_nullable_to_non_nullable
              as List<PostImagingSelectionModel>?,
      observations: freezed == observations
          ? _value._observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<PostObservationsModel>?,
      questionResponse: freezed == questionResponse
          ? _value._questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<PostQuestionResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TriageResponseModelImpl implements _TriageResponseModel {
  const _$TriageResponseModelImpl(
      {this.patientId,
      this.encounterId,
      this.serviceType,
      this.organizationCode,
      this.tenantCode,
      final List<PerformerModel>? performer,
      this.assessmentCode,
      this.assessmentVersion,
      this.issued,
      @TimestampConverter() this.userStartDate,
      this.source,
      this.sourceVersion,
      final List<IncompleteTestModel>? incompleteSection,
      this.cummulativeScore,
      final List<Map<String, int>>? score,
      final List<PostImagingSelectionModel>? imagingSelection,
      final List<PostObservationsModel>? observations,
      final List<PostQuestionResponseModel>? questionResponse})
      : _performer = performer,
        _incompleteSection = incompleteSection,
        _score = score,
        _imagingSelection = imagingSelection,
        _observations = observations,
        _questionResponse = questionResponse;

  factory _$TriageResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TriageResponseModelImplFromJson(json);

  @override
  final int? patientId;
  @override
  final int? encounterId;
  @override
  final ServiceType? serviceType;
  @override
  final int? organizationCode;
  @override
  final int? tenantCode;
  final List<PerformerModel>? _performer;
  @override
  List<PerformerModel>? get performer {
    final value = _performer;
    if (value == null) return null;
    if (_performer is EqualUnmodifiableListView) return _performer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? assessmentCode;
  @override
  final String? assessmentVersion;
  @override
  final DateTime? issued;
  @override
  @TimestampConverter()
  final DateTime? userStartDate;
  @override
  final Source? source;
  @override
  final String? sourceVersion;
  final List<IncompleteTestModel>? _incompleteSection;
  @override
  List<IncompleteTestModel>? get incompleteSection {
    final value = _incompleteSection;
    if (value == null) return null;
    if (_incompleteSection is EqualUnmodifiableListView)
      return _incompleteSection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? cummulativeScore;
  final List<Map<String, int>>? _score;
  @override
  List<Map<String, int>>? get score {
    final value = _score;
    if (value == null) return null;
    if (_score is EqualUnmodifiableListView) return _score;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostImagingSelectionModel>? _imagingSelection;
  @override
  List<PostImagingSelectionModel>? get imagingSelection {
    final value = _imagingSelection;
    if (value == null) return null;
    if (_imagingSelection is EqualUnmodifiableListView)
      return _imagingSelection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostObservationsModel>? _observations;
  @override
  List<PostObservationsModel>? get observations {
    final value = _observations;
    if (value == null) return null;
    if (_observations is EqualUnmodifiableListView) return _observations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostQuestionResponseModel>? _questionResponse;
  @override
  List<PostQuestionResponseModel>? get questionResponse {
    final value = _questionResponse;
    if (value == null) return null;
    if (_questionResponse is EqualUnmodifiableListView)
      return _questionResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TriageResponseModel(patientId: $patientId, encounterId: $encounterId, serviceType: $serviceType, organizationCode: $organizationCode, tenantCode: $tenantCode, performer: $performer, assessmentCode: $assessmentCode, assessmentVersion: $assessmentVersion, issued: $issued, userStartDate: $userStartDate, source: $source, sourceVersion: $sourceVersion, incompleteSection: $incompleteSection, cummulativeScore: $cummulativeScore, score: $score, imagingSelection: $imagingSelection, observations: $observations, questionResponse: $questionResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriageResponseModelImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            (identical(other.tenantCode, tenantCode) ||
                other.tenantCode == tenantCode) &&
            const DeepCollectionEquality()
                .equals(other._performer, _performer) &&
            (identical(other.assessmentCode, assessmentCode) ||
                other.assessmentCode == assessmentCode) &&
            (identical(other.assessmentVersion, assessmentVersion) ||
                other.assessmentVersion == assessmentVersion) &&
            (identical(other.issued, issued) || other.issued == issued) &&
            (identical(other.userStartDate, userStartDate) ||
                other.userStartDate == userStartDate) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceVersion, sourceVersion) ||
                other.sourceVersion == sourceVersion) &&
            const DeepCollectionEquality()
                .equals(other._incompleteSection, _incompleteSection) &&
            (identical(other.cummulativeScore, cummulativeScore) ||
                other.cummulativeScore == cummulativeScore) &&
            const DeepCollectionEquality().equals(other._score, _score) &&
            const DeepCollectionEquality()
                .equals(other._imagingSelection, _imagingSelection) &&
            const DeepCollectionEquality()
                .equals(other._observations, _observations) &&
            const DeepCollectionEquality()
                .equals(other._questionResponse, _questionResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      patientId,
      encounterId,
      serviceType,
      organizationCode,
      tenantCode,
      const DeepCollectionEquality().hash(_performer),
      assessmentCode,
      assessmentVersion,
      issued,
      userStartDate,
      source,
      sourceVersion,
      const DeepCollectionEquality().hash(_incompleteSection),
      cummulativeScore,
      const DeepCollectionEquality().hash(_score),
      const DeepCollectionEquality().hash(_imagingSelection),
      const DeepCollectionEquality().hash(_observations),
      const DeepCollectionEquality().hash(_questionResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TriageResponseModelImplCopyWith<_$TriageResponseModelImpl> get copyWith =>
      __$$TriageResponseModelImplCopyWithImpl<_$TriageResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TriageResponseModelImplToJson(
      this,
    );
  }
}

abstract class _TriageResponseModel implements TriageResponseModel {
  const factory _TriageResponseModel(
          {final int? patientId,
          final int? encounterId,
          final ServiceType? serviceType,
          final int? organizationCode,
          final int? tenantCode,
          final List<PerformerModel>? performer,
          final int? assessmentCode,
          final String? assessmentVersion,
          final DateTime? issued,
          @TimestampConverter() final DateTime? userStartDate,
          final Source? source,
          final String? sourceVersion,
          final List<IncompleteTestModel>? incompleteSection,
          final double? cummulativeScore,
          final List<Map<String, int>>? score,
          final List<PostImagingSelectionModel>? imagingSelection,
          final List<PostObservationsModel>? observations,
          final List<PostQuestionResponseModel>? questionResponse}) =
      _$TriageResponseModelImpl;

  factory _TriageResponseModel.fromJson(Map<String, dynamic> json) =
      _$TriageResponseModelImpl.fromJson;

  @override
  int? get patientId;
  @override
  int? get encounterId;
  @override
  ServiceType? get serviceType;
  @override
  int? get organizationCode;
  @override
  int? get tenantCode;
  @override
  List<PerformerModel>? get performer;
  @override
  int? get assessmentCode;
  @override
  String? get assessmentVersion;
  @override
  DateTime? get issued;
  @override
  @TimestampConverter()
  DateTime? get userStartDate;
  @override
  Source? get source;
  @override
  String? get sourceVersion;
  @override
  List<IncompleteTestModel>? get incompleteSection;
  @override
  double? get cummulativeScore;
  @override
  List<Map<String, int>>? get score;
  @override
  List<PostImagingSelectionModel>? get imagingSelection;
  @override
  List<PostObservationsModel>? get observations;
  @override
  List<PostQuestionResponseModel>? get questionResponse;
  @override
  @JsonKey(ignore: true)
  _$$TriageResponseModelImplCopyWith<_$TriageResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostQuestionResponseModel _$PostQuestionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PostQuestionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PostQuestionResponseModel {
  int? get linkId => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  List<PostAnswerModel>? get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostQuestionResponseModelCopyWith<PostQuestionResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostQuestionResponseModelCopyWith<$Res> {
  factory $PostQuestionResponseModelCopyWith(PostQuestionResponseModel value,
          $Res Function(PostQuestionResponseModel) then) =
      _$PostQuestionResponseModelCopyWithImpl<$Res, PostQuestionResponseModel>;
  @useResult
  $Res call({int? linkId, double? score, List<PostAnswerModel>? answers});
}

/// @nodoc
class _$PostQuestionResponseModelCopyWithImpl<$Res,
        $Val extends PostQuestionResponseModel>
    implements $PostQuestionResponseModelCopyWith<$Res> {
  _$PostQuestionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkId = freezed,
    Object? score = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<PostAnswerModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostQuestionResponseModelImplCopyWith<$Res>
    implements $PostQuestionResponseModelCopyWith<$Res> {
  factory _$$PostQuestionResponseModelImplCopyWith(
          _$PostQuestionResponseModelImpl value,
          $Res Function(_$PostQuestionResponseModelImpl) then) =
      __$$PostQuestionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? linkId, double? score, List<PostAnswerModel>? answers});
}

/// @nodoc
class __$$PostQuestionResponseModelImplCopyWithImpl<$Res>
    extends _$PostQuestionResponseModelCopyWithImpl<$Res,
        _$PostQuestionResponseModelImpl>
    implements _$$PostQuestionResponseModelImplCopyWith<$Res> {
  __$$PostQuestionResponseModelImplCopyWithImpl(
      _$PostQuestionResponseModelImpl _value,
      $Res Function(_$PostQuestionResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkId = freezed,
    Object? score = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$PostQuestionResponseModelImpl(
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<PostAnswerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostQuestionResponseModelImpl implements _PostQuestionResponseModel {
  const _$PostQuestionResponseModelImpl(
      {this.linkId, this.score, final List<PostAnswerModel>? answers})
      : _answers = answers;

  factory _$PostQuestionResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostQuestionResponseModelImplFromJson(json);

  @override
  final int? linkId;
  @override
  final double? score;
  final List<PostAnswerModel>? _answers;
  @override
  List<PostAnswerModel>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostQuestionResponseModel(linkId: $linkId, score: $score, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostQuestionResponseModelImpl &&
            (identical(other.linkId, linkId) || other.linkId == linkId) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, linkId, score,
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostQuestionResponseModelImplCopyWith<_$PostQuestionResponseModelImpl>
      get copyWith => __$$PostQuestionResponseModelImplCopyWithImpl<
          _$PostQuestionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostQuestionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PostQuestionResponseModel implements PostQuestionResponseModel {
  const factory _PostQuestionResponseModel(
      {final int? linkId,
      final double? score,
      final List<PostAnswerModel>? answers}) = _$PostQuestionResponseModelImpl;

  factory _PostQuestionResponseModel.fromJson(Map<String, dynamic> json) =
      _$PostQuestionResponseModelImpl.fromJson;

  @override
  int? get linkId;
  @override
  double? get score;
  @override
  List<PostAnswerModel>? get answers;
  @override
  @JsonKey(ignore: true)
  _$$PostQuestionResponseModelImplCopyWith<_$PostQuestionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostAnswerModel _$PostAnswerModelFromJson(Map<String, dynamic> json) {
  return _PostAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$PostAnswerModel {
  String? get value => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  int? get answerCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostAnswerModelCopyWith<PostAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostAnswerModelCopyWith<$Res> {
  factory $PostAnswerModelCopyWith(
          PostAnswerModel value, $Res Function(PostAnswerModel) then) =
      _$PostAnswerModelCopyWithImpl<$Res, PostAnswerModel>;
  @useResult
  $Res call({String? value, double? score, int? answerCode});
}

/// @nodoc
class _$PostAnswerModelCopyWithImpl<$Res, $Val extends PostAnswerModel>
    implements $PostAnswerModelCopyWith<$Res> {
  _$PostAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? score = freezed,
    Object? answerCode = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      answerCode: freezed == answerCode
          ? _value.answerCode
          : answerCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostAnswerModelImplCopyWith<$Res>
    implements $PostAnswerModelCopyWith<$Res> {
  factory _$$PostAnswerModelImplCopyWith(_$PostAnswerModelImpl value,
          $Res Function(_$PostAnswerModelImpl) then) =
      __$$PostAnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value, double? score, int? answerCode});
}

/// @nodoc
class __$$PostAnswerModelImplCopyWithImpl<$Res>
    extends _$PostAnswerModelCopyWithImpl<$Res, _$PostAnswerModelImpl>
    implements _$$PostAnswerModelImplCopyWith<$Res> {
  __$$PostAnswerModelImplCopyWithImpl(
      _$PostAnswerModelImpl _value, $Res Function(_$PostAnswerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? score = freezed,
    Object? answerCode = freezed,
  }) {
    return _then(_$PostAnswerModelImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      answerCode: freezed == answerCode
          ? _value.answerCode
          : answerCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostAnswerModelImpl implements _PostAnswerModel {
  const _$PostAnswerModelImpl({this.value, this.score, this.answerCode});

  factory _$PostAnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostAnswerModelImplFromJson(json);

  @override
  final String? value;
  @override
  final double? score;
  @override
  final int? answerCode;

  @override
  String toString() {
    return 'PostAnswerModel(value: $value, score: $score, answerCode: $answerCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostAnswerModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.answerCode, answerCode) ||
                other.answerCode == answerCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, score, answerCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostAnswerModelImplCopyWith<_$PostAnswerModelImpl> get copyWith =>
      __$$PostAnswerModelImplCopyWithImpl<_$PostAnswerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostAnswerModelImplToJson(
      this,
    );
  }
}

abstract class _PostAnswerModel implements PostAnswerModel {
  const factory _PostAnswerModel(
      {final String? value,
      final double? score,
      final int? answerCode}) = _$PostAnswerModelImpl;

  factory _PostAnswerModel.fromJson(Map<String, dynamic> json) =
      _$PostAnswerModelImpl.fromJson;

  @override
  String? get value;
  @override
  double? get score;
  @override
  int? get answerCode;
  @override
  @JsonKey(ignore: true)
  _$$PostAnswerModelImplCopyWith<_$PostAnswerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PerformerModel _$PerformerModelFromJson(Map<String, dynamic> json) {
  return _PerformerModel.fromJson(json);
}

/// @nodoc
mixin _$PerformerModel {
  PerformerRole? get role => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformerModelCopyWith<PerformerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformerModelCopyWith<$Res> {
  factory $PerformerModelCopyWith(
          PerformerModel value, $Res Function(PerformerModel) then) =
      _$PerformerModelCopyWithImpl<$Res, PerformerModel>;
  @useResult
  $Res call({PerformerRole? role, int? identifier});
}

/// @nodoc
class _$PerformerModelCopyWithImpl<$Res, $Val extends PerformerModel>
    implements $PerformerModelCopyWith<$Res> {
  _$PerformerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as PerformerRole?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformerModelImplCopyWith<$Res>
    implements $PerformerModelCopyWith<$Res> {
  factory _$$PerformerModelImplCopyWith(_$PerformerModelImpl value,
          $Res Function(_$PerformerModelImpl) then) =
      __$$PerformerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PerformerRole? role, int? identifier});
}

/// @nodoc
class __$$PerformerModelImplCopyWithImpl<$Res>
    extends _$PerformerModelCopyWithImpl<$Res, _$PerformerModelImpl>
    implements _$$PerformerModelImplCopyWith<$Res> {
  __$$PerformerModelImplCopyWithImpl(
      _$PerformerModelImpl _value, $Res Function(_$PerformerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$PerformerModelImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as PerformerRole?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformerModelImpl implements _PerformerModel {
  const _$PerformerModelImpl({this.role, this.identifier});

  factory _$PerformerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformerModelImplFromJson(json);

  @override
  final PerformerRole? role;
  @override
  final int? identifier;

  @override
  String toString() {
    return 'PerformerModel(role: $role, identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformerModelImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformerModelImplCopyWith<_$PerformerModelImpl> get copyWith =>
      __$$PerformerModelImplCopyWithImpl<_$PerformerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformerModelImplToJson(
      this,
    );
  }
}

abstract class _PerformerModel implements PerformerModel {
  const factory _PerformerModel(
      {final PerformerRole? role,
      final int? identifier}) = _$PerformerModelImpl;

  factory _PerformerModel.fromJson(Map<String, dynamic> json) =
      _$PerformerModelImpl.fromJson;

  @override
  PerformerRole? get role;
  @override
  int? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$PerformerModelImplCopyWith<_$PerformerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IncompleteTestModel _$IncompleteTestModelFromJson(Map<String, dynamic> json) {
  return _IncompleteTestModel.fromJson(json);
}

/// @nodoc
mixin _$IncompleteTestModel {
  int? get id => throw _privateConstructorUsedError;
  TestName? get testName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncompleteTestModelCopyWith<IncompleteTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncompleteTestModelCopyWith<$Res> {
  factory $IncompleteTestModelCopyWith(
          IncompleteTestModel value, $Res Function(IncompleteTestModel) then) =
      _$IncompleteTestModelCopyWithImpl<$Res, IncompleteTestModel>;
  @useResult
  $Res call({int? id, TestName? testName});
}

/// @nodoc
class _$IncompleteTestModelCopyWithImpl<$Res, $Val extends IncompleteTestModel>
    implements $IncompleteTestModelCopyWith<$Res> {
  _$IncompleteTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? testName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      testName: freezed == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestName?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IncompleteTestModelImplCopyWith<$Res>
    implements $IncompleteTestModelCopyWith<$Res> {
  factory _$$IncompleteTestModelImplCopyWith(_$IncompleteTestModelImpl value,
          $Res Function(_$IncompleteTestModelImpl) then) =
      __$$IncompleteTestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, TestName? testName});
}

/// @nodoc
class __$$IncompleteTestModelImplCopyWithImpl<$Res>
    extends _$IncompleteTestModelCopyWithImpl<$Res, _$IncompleteTestModelImpl>
    implements _$$IncompleteTestModelImplCopyWith<$Res> {
  __$$IncompleteTestModelImplCopyWithImpl(_$IncompleteTestModelImpl _value,
      $Res Function(_$IncompleteTestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? testName = freezed,
  }) {
    return _then(_$IncompleteTestModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      testName: freezed == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestName?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IncompleteTestModelImpl implements _IncompleteTestModel {
  const _$IncompleteTestModelImpl({this.id, this.testName});

  factory _$IncompleteTestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncompleteTestModelImplFromJson(json);

  @override
  final int? id;
  @override
  final TestName? testName;

  @override
  String toString() {
    return 'IncompleteTestModel(id: $id, testName: $testName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncompleteTestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.testName, testName) ||
                other.testName == testName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, testName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncompleteTestModelImplCopyWith<_$IncompleteTestModelImpl> get copyWith =>
      __$$IncompleteTestModelImplCopyWithImpl<_$IncompleteTestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncompleteTestModelImplToJson(
      this,
    );
  }
}

abstract class _IncompleteTestModel implements IncompleteTestModel {
  const factory _IncompleteTestModel(
      {final int? id, final TestName? testName}) = _$IncompleteTestModelImpl;

  factory _IncompleteTestModel.fromJson(Map<String, dynamic> json) =
      _$IncompleteTestModelImpl.fromJson;

  @override
  int? get id;
  @override
  TestName? get testName;
  @override
  @JsonKey(ignore: true)
  _$$IncompleteTestModelImplCopyWith<_$IncompleteTestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostImagingSelectionModel _$PostImagingSelectionModelFromJson(
    Map<String, dynamic> json) {
  return _PostImagingSelectionModel.fromJson(json);
}

/// @nodoc
mixin _$PostImagingSelectionModel {
  int? get identifier => throw _privateConstructorUsedError;
  String? get endpoint => throw _privateConstructorUsedError;
  String? get baseUrl => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  String? get fileId => throw _privateConstructorUsedError;
  BodySite? get bodySite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostImagingSelectionModelCopyWith<PostImagingSelectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostImagingSelectionModelCopyWith<$Res> {
  factory $PostImagingSelectionModelCopyWith(PostImagingSelectionModel value,
          $Res Function(PostImagingSelectionModel) then) =
      _$PostImagingSelectionModelCopyWithImpl<$Res, PostImagingSelectionModel>;
  @useResult
  $Res call(
      {int? identifier,
      String? endpoint,
      String? baseUrl,
      double? score,
      String? fileId,
      BodySite? bodySite});
}

/// @nodoc
class _$PostImagingSelectionModelCopyWithImpl<$Res,
        $Val extends PostImagingSelectionModel>
    implements $PostImagingSelectionModelCopyWith<$Res> {
  _$PostImagingSelectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? endpoint = freezed,
    Object? baseUrl = freezed,
    Object? score = freezed,
    Object? fileId = freezed,
    Object? bodySite = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImagingSelectionModelImplCopyWith<$Res>
    implements $PostImagingSelectionModelCopyWith<$Res> {
  factory _$$PostImagingSelectionModelImplCopyWith(
          _$PostImagingSelectionModelImpl value,
          $Res Function(_$PostImagingSelectionModelImpl) then) =
      __$$PostImagingSelectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? identifier,
      String? endpoint,
      String? baseUrl,
      double? score,
      String? fileId,
      BodySite? bodySite});
}

/// @nodoc
class __$$PostImagingSelectionModelImplCopyWithImpl<$Res>
    extends _$PostImagingSelectionModelCopyWithImpl<$Res,
        _$PostImagingSelectionModelImpl>
    implements _$$PostImagingSelectionModelImplCopyWith<$Res> {
  __$$PostImagingSelectionModelImplCopyWithImpl(
      _$PostImagingSelectionModelImpl _value,
      $Res Function(_$PostImagingSelectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? endpoint = freezed,
    Object? baseUrl = freezed,
    Object? score = freezed,
    Object? fileId = freezed,
    Object? bodySite = freezed,
  }) {
    return _then(_$PostImagingSelectionModelImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImagingSelectionModelImpl implements _PostImagingSelectionModel {
  const _$PostImagingSelectionModelImpl(
      {this.identifier,
      this.endpoint,
      this.baseUrl,
      this.score,
      this.fileId,
      this.bodySite});

  factory _$PostImagingSelectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImagingSelectionModelImplFromJson(json);

  @override
  final int? identifier;
  @override
  final String? endpoint;
  @override
  final String? baseUrl;
  @override
  final double? score;
  @override
  final String? fileId;
  @override
  final BodySite? bodySite;

  @override
  String toString() {
    return 'PostImagingSelectionModel(identifier: $identifier, endpoint: $endpoint, baseUrl: $baseUrl, score: $score, fileId: $fileId, bodySite: $bodySite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImagingSelectionModelImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.bodySite, bodySite) ||
                other.bodySite == bodySite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, identifier, endpoint, baseUrl, score, fileId, bodySite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImagingSelectionModelImplCopyWith<_$PostImagingSelectionModelImpl>
      get copyWith => __$$PostImagingSelectionModelImplCopyWithImpl<
          _$PostImagingSelectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImagingSelectionModelImplToJson(
      this,
    );
  }
}

abstract class _PostImagingSelectionModel implements PostImagingSelectionModel {
  const factory _PostImagingSelectionModel(
      {final int? identifier,
      final String? endpoint,
      final String? baseUrl,
      final double? score,
      final String? fileId,
      final BodySite? bodySite}) = _$PostImagingSelectionModelImpl;

  factory _PostImagingSelectionModel.fromJson(Map<String, dynamic> json) =
      _$PostImagingSelectionModelImpl.fromJson;

  @override
  int? get identifier;
  @override
  String? get endpoint;
  @override
  String? get baseUrl;
  @override
  double? get score;
  @override
  String? get fileId;
  @override
  BodySite? get bodySite;
  @override
  @JsonKey(ignore: true)
  _$$PostImagingSelectionModelImplCopyWith<_$PostImagingSelectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostObservationsModel _$PostObservationsModelFromJson(
    Map<String, dynamic> json) {
  return _PostObservationsModel.fromJson(json);
}

/// @nodoc
mixin _$PostObservationsModel {
  int? get identifier => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostObservationsModelCopyWith<PostObservationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostObservationsModelCopyWith<$Res> {
  factory $PostObservationsModelCopyWith(PostObservationsModel value,
          $Res Function(PostObservationsModel) then) =
      _$PostObservationsModelCopyWithImpl<$Res, PostObservationsModel>;
  @useResult
  $Res call({int? identifier, String? value, double? score});
}

/// @nodoc
class _$PostObservationsModelCopyWithImpl<$Res,
        $Val extends PostObservationsModel>
    implements $PostObservationsModelCopyWith<$Res> {
  _$PostObservationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostObservationsModelImplCopyWith<$Res>
    implements $PostObservationsModelCopyWith<$Res> {
  factory _$$PostObservationsModelImplCopyWith(
          _$PostObservationsModelImpl value,
          $Res Function(_$PostObservationsModelImpl) then) =
      __$$PostObservationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? identifier, String? value, double? score});
}

/// @nodoc
class __$$PostObservationsModelImplCopyWithImpl<$Res>
    extends _$PostObservationsModelCopyWithImpl<$Res,
        _$PostObservationsModelImpl>
    implements _$$PostObservationsModelImplCopyWith<$Res> {
  __$$PostObservationsModelImplCopyWithImpl(_$PostObservationsModelImpl _value,
      $Res Function(_$PostObservationsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_$PostObservationsModelImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostObservationsModelImpl implements _PostObservationsModel {
  const _$PostObservationsModelImpl({this.identifier, this.value, this.score});

  factory _$PostObservationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostObservationsModelImplFromJson(json);

  @override
  final int? identifier;
  @override
  final String? value;
  @override
  final double? score;

  @override
  String toString() {
    return 'PostObservationsModel(identifier: $identifier, value: $value, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostObservationsModelImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, value, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostObservationsModelImplCopyWith<_$PostObservationsModelImpl>
      get copyWith => __$$PostObservationsModelImplCopyWithImpl<
          _$PostObservationsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostObservationsModelImplToJson(
      this,
    );
  }
}

abstract class _PostObservationsModel implements PostObservationsModel {
  const factory _PostObservationsModel(
      {final int? identifier,
      final String? value,
      final double? score}) = _$PostObservationsModelImpl;

  factory _PostObservationsModel.fromJson(Map<String, dynamic> json) =
      _$PostObservationsModelImpl.fromJson;

  @override
  int? get identifier;
  @override
  String? get value;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$PostObservationsModelImplCopyWith<_$PostObservationsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
