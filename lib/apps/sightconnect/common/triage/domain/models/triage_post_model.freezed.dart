/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TriagePostModel _$TriagePostModelFromJson(Map<String, dynamic> json) {
  return _TriagePostModel.fromJson(json);
}

/// @nodoc
mixin _$TriagePostModel {
  int? get id => throw _privateConstructorUsedError;
  int? get patientId => throw _privateConstructorUsedError;
  int? get encounterId => throw _privateConstructorUsedError;
  ServiceType? get serviceType => throw _privateConstructorUsedError;
  int? get tenantCode => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  List<Performer>? get performer => throw _privateConstructorUsedError;
  int? get assessmentCode => throw _privateConstructorUsedError;
  String? get assessmentVersion => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get issued => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get userStartDate => throw _privateConstructorUsedError;
  Source? get source => throw _privateConstructorUsedError;
  String? get sourceVersion => throw _privateConstructorUsedError;
  List<PostIncompleteTestModel>? get incompleteSection =>
      throw _privateConstructorUsedError;
  int? get cummulativeScore => throw _privateConstructorUsedError;
  List<Map<String, double>>? get score => throw _privateConstructorUsedError;
  List<PostTriageImagingSelectionModel>? get imagingSelection =>
      throw _privateConstructorUsedError;
  List<PostTriageObservationsModel>? get observations =>
      throw _privateConstructorUsedError;
  List<PostTriageQuestionModel>? get questionResponse =>
      throw _privateConstructorUsedError;
  int? get subject => throw _privateConstructorUsedError;
  Severity? get observationSeverity => throw _privateConstructorUsedError;
  Severity? get questionResponseSeverity => throw _privateConstructorUsedError;
  Severity? get mediaSeverity => throw _privateConstructorUsedError;
  Severity? get cumulativeSeverity => throw _privateConstructorUsedError;
  String? get diagnosticReportDescription => throw _privateConstructorUsedError;
  String? get questionResultDescription => throw _privateConstructorUsedError;
  String? get observationResultDescription =>
      throw _privateConstructorUsedError;
  String? get mediaResultDescription => throw _privateConstructorUsedError;
  EncounterModel? get encounter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriagePostModelCopyWith<TriagePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriagePostModelCopyWith<$Res> {
  factory $TriagePostModelCopyWith(
          TriagePostModel value, $Res Function(TriagePostModel) then) =
      _$TriagePostModelCopyWithImpl<$Res, TriagePostModel>;
  @useResult
  $Res call(
      {int? id,
      int? patientId,
      int? encounterId,
      ServiceType? serviceType,
      int? tenantCode,
      int? organizationCode,
      List<Performer>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      @TimestampConverter() DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      String? sourceVersion,
      List<PostIncompleteTestModel>? incompleteSection,
      int? cummulativeScore,
      List<Map<String, double>>? score,
      List<PostTriageImagingSelectionModel>? imagingSelection,
      List<PostTriageObservationsModel>? observations,
      List<PostTriageQuestionModel>? questionResponse,
      int? subject,
      Severity? observationSeverity,
      Severity? questionResponseSeverity,
      Severity? mediaSeverity,
      Severity? cumulativeSeverity,
      String? diagnosticReportDescription,
      String? questionResultDescription,
      String? observationResultDescription,
      String? mediaResultDescription,
      EncounterModel? encounter});

  $EncounterModelCopyWith<$Res>? get encounter;
}

/// @nodoc
class _$TriagePostModelCopyWithImpl<$Res, $Val extends TriagePostModel>
    implements $TriagePostModelCopyWith<$Res> {
  _$TriagePostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? patientId = freezed,
    Object? encounterId = freezed,
    Object? serviceType = freezed,
    Object? tenantCode = freezed,
    Object? organizationCode = freezed,
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
    Object? subject = freezed,
    Object? observationSeverity = freezed,
    Object? questionResponseSeverity = freezed,
    Object? mediaSeverity = freezed,
    Object? cumulativeSeverity = freezed,
    Object? diagnosticReportDescription = freezed,
    Object? questionResultDescription = freezed,
    Object? observationResultDescription = freezed,
    Object? mediaResultDescription = freezed,
    Object? encounter = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      tenantCode: freezed == tenantCode
          ? _value.tenantCode
          : tenantCode // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<Performer>?,
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
              as List<PostIncompleteTestModel>?,
      cummulativeScore: freezed == cummulativeScore
          ? _value.cummulativeScore
          : cummulativeScore // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as List<Map<String, double>>?,
      imagingSelection: freezed == imagingSelection
          ? _value.imagingSelection
          : imagingSelection // ignore: cast_nullable_to_non_nullable
              as List<PostTriageImagingSelectionModel>?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<PostTriageObservationsModel>?,
      questionResponse: freezed == questionResponse
          ? _value.questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<PostTriageQuestionModel>?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as int?,
      observationSeverity: freezed == observationSeverity
          ? _value.observationSeverity
          : observationSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      questionResponseSeverity: freezed == questionResponseSeverity
          ? _value.questionResponseSeverity
          : questionResponseSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      mediaSeverity: freezed == mediaSeverity
          ? _value.mediaSeverity
          : mediaSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      cumulativeSeverity: freezed == cumulativeSeverity
          ? _value.cumulativeSeverity
          : cumulativeSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      diagnosticReportDescription: freezed == diagnosticReportDescription
          ? _value.diagnosticReportDescription
          : diagnosticReportDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      questionResultDescription: freezed == questionResultDescription
          ? _value.questionResultDescription
          : questionResultDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      observationResultDescription: freezed == observationResultDescription
          ? _value.observationResultDescription
          : observationResultDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaResultDescription: freezed == mediaResultDescription
          ? _value.mediaResultDescription
          : mediaResultDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as EncounterModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EncounterModelCopyWith<$Res>? get encounter {
    if (_value.encounter == null) {
      return null;
    }

    return $EncounterModelCopyWith<$Res>(_value.encounter!, (value) {
      return _then(_value.copyWith(encounter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TriagePostModelImplCopyWith<$Res>
    implements $TriagePostModelCopyWith<$Res> {
  factory _$$TriagePostModelImplCopyWith(_$TriagePostModelImpl value,
          $Res Function(_$TriagePostModelImpl) then) =
      __$$TriagePostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? patientId,
      int? encounterId,
      ServiceType? serviceType,
      int? tenantCode,
      int? organizationCode,
      List<Performer>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      @TimestampConverter() DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      String? sourceVersion,
      List<PostIncompleteTestModel>? incompleteSection,
      int? cummulativeScore,
      List<Map<String, double>>? score,
      List<PostTriageImagingSelectionModel>? imagingSelection,
      List<PostTriageObservationsModel>? observations,
      List<PostTriageQuestionModel>? questionResponse,
      int? subject,
      Severity? observationSeverity,
      Severity? questionResponseSeverity,
      Severity? mediaSeverity,
      Severity? cumulativeSeverity,
      String? diagnosticReportDescription,
      String? questionResultDescription,
      String? observationResultDescription,
      String? mediaResultDescription,
      EncounterModel? encounter});

  @override
  $EncounterModelCopyWith<$Res>? get encounter;
}

/// @nodoc
class __$$TriagePostModelImplCopyWithImpl<$Res>
    extends _$TriagePostModelCopyWithImpl<$Res, _$TriagePostModelImpl>
    implements _$$TriagePostModelImplCopyWith<$Res> {
  __$$TriagePostModelImplCopyWithImpl(
      _$TriagePostModelImpl _value, $Res Function(_$TriagePostModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? patientId = freezed,
    Object? encounterId = freezed,
    Object? serviceType = freezed,
    Object? tenantCode = freezed,
    Object? organizationCode = freezed,
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
    Object? subject = freezed,
    Object? observationSeverity = freezed,
    Object? questionResponseSeverity = freezed,
    Object? mediaSeverity = freezed,
    Object? cumulativeSeverity = freezed,
    Object? diagnosticReportDescription = freezed,
    Object? questionResultDescription = freezed,
    Object? observationResultDescription = freezed,
    Object? mediaResultDescription = freezed,
    Object? encounter = freezed,
  }) {
    return _then(_$TriagePostModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      tenantCode: freezed == tenantCode
          ? _value.tenantCode
          : tenantCode // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value._performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<Performer>?,
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
              as List<PostIncompleteTestModel>?,
      cummulativeScore: freezed == cummulativeScore
          ? _value.cummulativeScore
          : cummulativeScore // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value._score
          : score // ignore: cast_nullable_to_non_nullable
              as List<Map<String, double>>?,
      imagingSelection: freezed == imagingSelection
          ? _value._imagingSelection
          : imagingSelection // ignore: cast_nullable_to_non_nullable
              as List<PostTriageImagingSelectionModel>?,
      observations: freezed == observations
          ? _value._observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<PostTriageObservationsModel>?,
      questionResponse: freezed == questionResponse
          ? _value._questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<PostTriageQuestionModel>?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as int?,
      observationSeverity: freezed == observationSeverity
          ? _value.observationSeverity
          : observationSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      questionResponseSeverity: freezed == questionResponseSeverity
          ? _value.questionResponseSeverity
          : questionResponseSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      mediaSeverity: freezed == mediaSeverity
          ? _value.mediaSeverity
          : mediaSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      cumulativeSeverity: freezed == cumulativeSeverity
          ? _value.cumulativeSeverity
          : cumulativeSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      diagnosticReportDescription: freezed == diagnosticReportDescription
          ? _value.diagnosticReportDescription
          : diagnosticReportDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      questionResultDescription: freezed == questionResultDescription
          ? _value.questionResultDescription
          : questionResultDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      observationResultDescription: freezed == observationResultDescription
          ? _value.observationResultDescription
          : observationResultDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaResultDescription: freezed == mediaResultDescription
          ? _value.mediaResultDescription
          : mediaResultDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as EncounterModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TriagePostModelImpl implements _TriagePostModel {
  const _$TriagePostModelImpl(
      {this.id,
      this.patientId,
      this.encounterId,
      this.serviceType,
      this.tenantCode,
      this.organizationCode,
      final List<Performer>? performer,
      this.assessmentCode,
      this.assessmentVersion,
      @TimestampConverter() this.issued,
      @TimestampConverter() this.userStartDate,
      this.source,
      this.sourceVersion,
      final List<PostIncompleteTestModel>? incompleteSection,
      this.cummulativeScore,
      final List<Map<String, double>>? score,
      final List<PostTriageImagingSelectionModel>? imagingSelection,
      final List<PostTriageObservationsModel>? observations,
      final List<PostTriageQuestionModel>? questionResponse,
      this.subject,
      this.observationSeverity,
      this.questionResponseSeverity,
      this.mediaSeverity,
      this.cumulativeSeverity,
      this.diagnosticReportDescription,
      this.questionResultDescription,
      this.observationResultDescription,
      this.mediaResultDescription,
      this.encounter})
      : _performer = performer,
        _incompleteSection = incompleteSection,
        _score = score,
        _imagingSelection = imagingSelection,
        _observations = observations,
        _questionResponse = questionResponse;

  factory _$TriagePostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TriagePostModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? patientId;
  @override
  final int? encounterId;
  @override
  final ServiceType? serviceType;
  @override
  final int? tenantCode;
  @override
  final int? organizationCode;
  final List<Performer>? _performer;
  @override
  List<Performer>? get performer {
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
  @TimestampConverter()
  final DateTime? issued;
  @override
  @TimestampConverter()
  final DateTime? userStartDate;
  @override
  final Source? source;
  @override
  final String? sourceVersion;
  final List<PostIncompleteTestModel>? _incompleteSection;
  @override
  List<PostIncompleteTestModel>? get incompleteSection {
    final value = _incompleteSection;
    if (value == null) return null;
    if (_incompleteSection is EqualUnmodifiableListView)
      return _incompleteSection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? cummulativeScore;
  final List<Map<String, double>>? _score;
  @override
  List<Map<String, double>>? get score {
    final value = _score;
    if (value == null) return null;
    if (_score is EqualUnmodifiableListView) return _score;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostTriageImagingSelectionModel>? _imagingSelection;
  @override
  List<PostTriageImagingSelectionModel>? get imagingSelection {
    final value = _imagingSelection;
    if (value == null) return null;
    if (_imagingSelection is EqualUnmodifiableListView)
      return _imagingSelection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostTriageObservationsModel>? _observations;
  @override
  List<PostTriageObservationsModel>? get observations {
    final value = _observations;
    if (value == null) return null;
    if (_observations is EqualUnmodifiableListView) return _observations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostTriageQuestionModel>? _questionResponse;
  @override
  List<PostTriageQuestionModel>? get questionResponse {
    final value = _questionResponse;
    if (value == null) return null;
    if (_questionResponse is EqualUnmodifiableListView)
      return _questionResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? subject;
  @override
  final Severity? observationSeverity;
  @override
  final Severity? questionResponseSeverity;
  @override
  final Severity? mediaSeverity;
  @override
  final Severity? cumulativeSeverity;
  @override
  final String? diagnosticReportDescription;
  @override
  final String? questionResultDescription;
  @override
  final String? observationResultDescription;
  @override
  final String? mediaResultDescription;
  @override
  final EncounterModel? encounter;

  @override
  String toString() {
    return 'TriagePostModel(id: $id, patientId: $patientId, encounterId: $encounterId, serviceType: $serviceType, tenantCode: $tenantCode, organizationCode: $organizationCode, performer: $performer, assessmentCode: $assessmentCode, assessmentVersion: $assessmentVersion, issued: $issued, userStartDate: $userStartDate, source: $source, sourceVersion: $sourceVersion, incompleteSection: $incompleteSection, cummulativeScore: $cummulativeScore, score: $score, imagingSelection: $imagingSelection, observations: $observations, questionResponse: $questionResponse, subject: $subject, observationSeverity: $observationSeverity, questionResponseSeverity: $questionResponseSeverity, mediaSeverity: $mediaSeverity, cumulativeSeverity: $cumulativeSeverity, diagnosticReportDescription: $diagnosticReportDescription, questionResultDescription: $questionResultDescription, observationResultDescription: $observationResultDescription, mediaResultDescription: $mediaResultDescription, encounter: $encounter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriagePostModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.tenantCode, tenantCode) ||
                other.tenantCode == tenantCode) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
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
                .equals(other._questionResponse, _questionResponse) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.observationSeverity, observationSeverity) ||
                other.observationSeverity == observationSeverity) &&
            (identical(
                    other.questionResponseSeverity, questionResponseSeverity) ||
                other.questionResponseSeverity == questionResponseSeverity) &&
            (identical(other.mediaSeverity, mediaSeverity) ||
                other.mediaSeverity == mediaSeverity) &&
            (identical(other.cumulativeSeverity, cumulativeSeverity) ||
                other.cumulativeSeverity == cumulativeSeverity) &&
            (identical(other.diagnosticReportDescription,
                    diagnosticReportDescription) ||
                other.diagnosticReportDescription ==
                    diagnosticReportDescription) &&
            (identical(other.questionResultDescription,
                    questionResultDescription) ||
                other.questionResultDescription == questionResultDescription) &&
            (identical(other.observationResultDescription,
                    observationResultDescription) ||
                other.observationResultDescription ==
                    observationResultDescription) &&
            (identical(other.mediaResultDescription, mediaResultDescription) ||
                other.mediaResultDescription == mediaResultDescription) &&
            (identical(other.encounter, encounter) ||
                other.encounter == encounter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        patientId,
        encounterId,
        serviceType,
        tenantCode,
        organizationCode,
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
        const DeepCollectionEquality().hash(_questionResponse),
        subject,
        observationSeverity,
        questionResponseSeverity,
        mediaSeverity,
        cumulativeSeverity,
        diagnosticReportDescription,
        questionResultDescription,
        observationResultDescription,
        mediaResultDescription,
        encounter
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TriagePostModelImplCopyWith<_$TriagePostModelImpl> get copyWith =>
      __$$TriagePostModelImplCopyWithImpl<_$TriagePostModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TriagePostModelImplToJson(
      this,
    );
  }
}

abstract class _TriagePostModel implements TriagePostModel {
  const factory _TriagePostModel(
      {final int? id,
      final int? patientId,
      final int? encounterId,
      final ServiceType? serviceType,
      final int? tenantCode,
      final int? organizationCode,
      final List<Performer>? performer,
      final int? assessmentCode,
      final String? assessmentVersion,
      @TimestampConverter() final DateTime? issued,
      @TimestampConverter() final DateTime? userStartDate,
      final Source? source,
      final String? sourceVersion,
      final List<PostIncompleteTestModel>? incompleteSection,
      final int? cummulativeScore,
      final List<Map<String, double>>? score,
      final List<PostTriageImagingSelectionModel>? imagingSelection,
      final List<PostTriageObservationsModel>? observations,
      final List<PostTriageQuestionModel>? questionResponse,
      final int? subject,
      final Severity? observationSeverity,
      final Severity? questionResponseSeverity,
      final Severity? mediaSeverity,
      final Severity? cumulativeSeverity,
      final String? diagnosticReportDescription,
      final String? questionResultDescription,
      final String? observationResultDescription,
      final String? mediaResultDescription,
      final EncounterModel? encounter}) = _$TriagePostModelImpl;

  factory _TriagePostModel.fromJson(Map<String, dynamic> json) =
      _$TriagePostModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get patientId;
  @override
  int? get encounterId;
  @override
  ServiceType? get serviceType;
  @override
  int? get tenantCode;
  @override
  int? get organizationCode;
  @override
  List<Performer>? get performer;
  @override
  int? get assessmentCode;
  @override
  String? get assessmentVersion;
  @override
  @TimestampConverter()
  DateTime? get issued;
  @override
  @TimestampConverter()
  DateTime? get userStartDate;
  @override
  Source? get source;
  @override
  String? get sourceVersion;
  @override
  List<PostIncompleteTestModel>? get incompleteSection;
  @override
  int? get cummulativeScore;
  @override
  List<Map<String, double>>? get score;
  @override
  List<PostTriageImagingSelectionModel>? get imagingSelection;
  @override
  List<PostTriageObservationsModel>? get observations;
  @override
  List<PostTriageQuestionModel>? get questionResponse;
  @override
  int? get subject;
  @override
  Severity? get observationSeverity;
  @override
  Severity? get questionResponseSeverity;
  @override
  Severity? get mediaSeverity;
  @override
  Severity? get cumulativeSeverity;
  @override
  String? get diagnosticReportDescription;
  @override
  String? get questionResultDescription;
  @override
  String? get observationResultDescription;
  @override
  String? get mediaResultDescription;
  @override
  EncounterModel? get encounter;
  @override
  @JsonKey(ignore: true)
  _$$TriagePostModelImplCopyWith<_$TriagePostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EncounterModel _$EncounterModelFromJson(Map<String, dynamic> json) {
  return _EncounterModel.fromJson(json);
}

/// @nodoc
mixin _$EncounterModel {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncounterModelCopyWith<EncounterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncounterModelCopyWith<$Res> {
  factory $EncounterModelCopyWith(
          EncounterModel value, $Res Function(EncounterModel) then) =
      _$EncounterModelCopyWithImpl<$Res, EncounterModel>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$EncounterModelCopyWithImpl<$Res, $Val extends EncounterModel>
    implements $EncounterModelCopyWith<$Res> {
  _$EncounterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EncounterModelImplCopyWith<$Res>
    implements $EncounterModelCopyWith<$Res> {
  factory _$$EncounterModelImplCopyWith(_$EncounterModelImpl value,
          $Res Function(_$EncounterModelImpl) then) =
      __$$EncounterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$EncounterModelImplCopyWithImpl<$Res>
    extends _$EncounterModelCopyWithImpl<$Res, _$EncounterModelImpl>
    implements _$$EncounterModelImplCopyWith<$Res> {
  __$$EncounterModelImplCopyWithImpl(
      _$EncounterModelImpl _value, $Res Function(_$EncounterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$EncounterModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncounterModelImpl implements _EncounterModel {
  const _$EncounterModelImpl({this.id});

  factory _$EncounterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncounterModelImplFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'EncounterModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncounterModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EncounterModelImplCopyWith<_$EncounterModelImpl> get copyWith =>
      __$$EncounterModelImplCopyWithImpl<_$EncounterModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncounterModelImplToJson(
      this,
    );
  }
}

abstract class _EncounterModel implements EncounterModel {
  const factory _EncounterModel({final int? id}) = _$EncounterModelImpl;

  factory _EncounterModel.fromJson(Map<String, dynamic> json) =
      _$EncounterModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$EncounterModelImplCopyWith<_$EncounterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostTriageQuestionModel _$PostTriageQuestionModelFromJson(
    Map<String, dynamic> json) {
  return _PostTriageQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$PostTriageQuestionModel {
  int? get id => throw _privateConstructorUsedError;
  int? get linkId => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  List<PostTriageAnswerModel>? get answers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostTriageQuestionModelCopyWith<PostTriageQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostTriageQuestionModelCopyWith<$Res> {
  factory $PostTriageQuestionModelCopyWith(PostTriageQuestionModel value,
          $Res Function(PostTriageQuestionModel) then) =
      _$PostTriageQuestionModelCopyWithImpl<$Res, PostTriageQuestionModel>;
  @useResult
  $Res call(
      {int? id,
      int? linkId,
      double? score,
      List<PostTriageAnswerModel>? answers});
}

/// @nodoc
class _$PostTriageQuestionModelCopyWithImpl<$Res,
        $Val extends PostTriageQuestionModel>
    implements $PostTriageQuestionModelCopyWith<$Res> {
  _$PostTriageQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? linkId = freezed,
    Object? score = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as List<PostTriageAnswerModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostTriageQuestionModelImplCopyWith<$Res>
    implements $PostTriageQuestionModelCopyWith<$Res> {
  factory _$$PostTriageQuestionModelImplCopyWith(
          _$PostTriageQuestionModelImpl value,
          $Res Function(_$PostTriageQuestionModelImpl) then) =
      __$$PostTriageQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? linkId,
      double? score,
      List<PostTriageAnswerModel>? answers});
}

/// @nodoc
class __$$PostTriageQuestionModelImplCopyWithImpl<$Res>
    extends _$PostTriageQuestionModelCopyWithImpl<$Res,
        _$PostTriageQuestionModelImpl>
    implements _$$PostTriageQuestionModelImplCopyWith<$Res> {
  __$$PostTriageQuestionModelImplCopyWithImpl(
      _$PostTriageQuestionModelImpl _value,
      $Res Function(_$PostTriageQuestionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? linkId = freezed,
    Object? score = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$PostTriageQuestionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as List<PostTriageAnswerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostTriageQuestionModelImpl implements _PostTriageQuestionModel {
  const _$PostTriageQuestionModelImpl(
      {this.id,
      this.linkId,
      this.score,
      final List<PostTriageAnswerModel>? answers})
      : _answers = answers;

  factory _$PostTriageQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostTriageQuestionModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? linkId;
  @override
  final double? score;
  final List<PostTriageAnswerModel>? _answers;
  @override
  List<PostTriageAnswerModel>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostTriageQuestionModel(id: $id, linkId: $linkId, score: $score, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostTriageQuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.linkId, linkId) || other.linkId == linkId) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, linkId, score,
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostTriageQuestionModelImplCopyWith<_$PostTriageQuestionModelImpl>
      get copyWith => __$$PostTriageQuestionModelImplCopyWithImpl<
          _$PostTriageQuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostTriageQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _PostTriageQuestionModel implements PostTriageQuestionModel {
  const factory _PostTriageQuestionModel(
          {final int? id,
          final int? linkId,
          final double? score,
          final List<PostTriageAnswerModel>? answers}) =
      _$PostTriageQuestionModelImpl;

  factory _PostTriageQuestionModel.fromJson(Map<String, dynamic> json) =
      _$PostTriageQuestionModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get linkId;
  @override
  double? get score;
  @override
  List<PostTriageAnswerModel>? get answers;
  @override
  @JsonKey(ignore: true)
  _$$PostTriageQuestionModelImplCopyWith<_$PostTriageQuestionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostTriageAnswerModel _$PostTriageAnswerModelFromJson(
    Map<String, dynamic> json) {
  return _PostTriageAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$PostTriageAnswerModel {
  String? get value => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get answerCode => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostTriageAnswerModelCopyWith<PostTriageAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostTriageAnswerModelCopyWith<$Res> {
  factory $PostTriageAnswerModelCopyWith(PostTriageAnswerModel value,
          $Res Function(PostTriageAnswerModel) then) =
      _$PostTriageAnswerModelCopyWithImpl<$Res, PostTriageAnswerModel>;
  @useResult
  $Res call({String? value, int? id, int? answerCode, double? score});
}

/// @nodoc
class _$PostTriageAnswerModelCopyWithImpl<$Res,
        $Val extends PostTriageAnswerModel>
    implements $PostTriageAnswerModelCopyWith<$Res> {
  _$PostTriageAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? id = freezed,
    Object? answerCode = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      answerCode: freezed == answerCode
          ? _value.answerCode
          : answerCode // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostTriageAnswerModelImplCopyWith<$Res>
    implements $PostTriageAnswerModelCopyWith<$Res> {
  factory _$$PostTriageAnswerModelImplCopyWith(
          _$PostTriageAnswerModelImpl value,
          $Res Function(_$PostTriageAnswerModelImpl) then) =
      __$$PostTriageAnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value, int? id, int? answerCode, double? score});
}

/// @nodoc
class __$$PostTriageAnswerModelImplCopyWithImpl<$Res>
    extends _$PostTriageAnswerModelCopyWithImpl<$Res,
        _$PostTriageAnswerModelImpl>
    implements _$$PostTriageAnswerModelImplCopyWith<$Res> {
  __$$PostTriageAnswerModelImplCopyWithImpl(_$PostTriageAnswerModelImpl _value,
      $Res Function(_$PostTriageAnswerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? id = freezed,
    Object? answerCode = freezed,
    Object? score = freezed,
  }) {
    return _then(_$PostTriageAnswerModelImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      answerCode: freezed == answerCode
          ? _value.answerCode
          : answerCode // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostTriageAnswerModelImpl implements _PostTriageAnswerModel {
  const _$PostTriageAnswerModelImpl(
      {this.value, this.id, this.answerCode, this.score});

  factory _$PostTriageAnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostTriageAnswerModelImplFromJson(json);

  @override
  final String? value;
  @override
  final int? id;
  @override
  final int? answerCode;
  @override
  final double? score;

  @override
  String toString() {
    return 'PostTriageAnswerModel(value: $value, id: $id, answerCode: $answerCode, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostTriageAnswerModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.answerCode, answerCode) ||
                other.answerCode == answerCode) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, id, answerCode, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostTriageAnswerModelImplCopyWith<_$PostTriageAnswerModelImpl>
      get copyWith => __$$PostTriageAnswerModelImplCopyWithImpl<
          _$PostTriageAnswerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostTriageAnswerModelImplToJson(
      this,
    );
  }
}

abstract class _PostTriageAnswerModel implements PostTriageAnswerModel {
  const factory _PostTriageAnswerModel(
      {final String? value,
      final int? id,
      final int? answerCode,
      final double? score}) = _$PostTriageAnswerModelImpl;

  factory _PostTriageAnswerModel.fromJson(Map<String, dynamic> json) =
      _$PostTriageAnswerModelImpl.fromJson;

  @override
  String? get value;
  @override
  int? get id;
  @override
  int? get answerCode;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$PostTriageAnswerModelImplCopyWith<_$PostTriageAnswerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Performer _$PerformerFromJson(Map<String, dynamic> json) {
  return _Performer.fromJson(json);
}

/// @nodoc
mixin _$Performer {
  int? get id => throw _privateConstructorUsedError;
  PerformerRole? get role => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformerCopyWith<Performer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformerCopyWith<$Res> {
  factory $PerformerCopyWith(Performer value, $Res Function(Performer) then) =
      _$PerformerCopyWithImpl<$Res, Performer>;
  @useResult
  $Res call({int? id, PerformerRole? role, int? identifier});
}

/// @nodoc
class _$PerformerCopyWithImpl<$Res, $Val extends Performer>
    implements $PerformerCopyWith<$Res> {
  _$PerformerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$PerformerImplCopyWith<$Res>
    implements $PerformerCopyWith<$Res> {
  factory _$$PerformerImplCopyWith(
          _$PerformerImpl value, $Res Function(_$PerformerImpl) then) =
      __$$PerformerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, PerformerRole? role, int? identifier});
}

/// @nodoc
class __$$PerformerImplCopyWithImpl<$Res>
    extends _$PerformerCopyWithImpl<$Res, _$PerformerImpl>
    implements _$$PerformerImplCopyWith<$Res> {
  __$$PerformerImplCopyWithImpl(
      _$PerformerImpl _value, $Res Function(_$PerformerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$PerformerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$PerformerImpl implements _Performer {
  const _$PerformerImpl({this.id, this.role, this.identifier});

  factory _$PerformerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformerImplFromJson(json);

  @override
  final int? id;
  @override
  final PerformerRole? role;
  @override
  final int? identifier;

  @override
  String toString() {
    return 'Performer(id: $id, role: $role, identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, role, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformerImplCopyWith<_$PerformerImpl> get copyWith =>
      __$$PerformerImplCopyWithImpl<_$PerformerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformerImplToJson(
      this,
    );
  }
}

abstract class _Performer implements Performer {
  const factory _Performer(
      {final int? id,
      final PerformerRole? role,
      final int? identifier}) = _$PerformerImpl;

  factory _Performer.fromJson(Map<String, dynamic> json) =
      _$PerformerImpl.fromJson;

  @override
  int? get id;
  @override
  PerformerRole? get role;
  @override
  int? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$PerformerImplCopyWith<_$PerformerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostIncompleteTestModel _$PostIncompleteTestModelFromJson(
    Map<String, dynamic> json) {
  return _PostIncompleteTestModel.fromJson(json);
}

/// @nodoc
mixin _$PostIncompleteTestModel {
  TestType? get testName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostIncompleteTestModelCopyWith<PostIncompleteTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostIncompleteTestModelCopyWith<$Res> {
  factory $PostIncompleteTestModelCopyWith(PostIncompleteTestModel value,
          $Res Function(PostIncompleteTestModel) then) =
      _$PostIncompleteTestModelCopyWithImpl<$Res, PostIncompleteTestModel>;
  @useResult
  $Res call({TestType? testName});
}

/// @nodoc
class _$PostIncompleteTestModelCopyWithImpl<$Res,
        $Val extends PostIncompleteTestModel>
    implements $PostIncompleteTestModelCopyWith<$Res> {
  _$PostIncompleteTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testName = freezed,
  }) {
    return _then(_value.copyWith(
      testName: freezed == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostIncompleteTestModelImplCopyWith<$Res>
    implements $PostIncompleteTestModelCopyWith<$Res> {
  factory _$$PostIncompleteTestModelImplCopyWith(
          _$PostIncompleteTestModelImpl value,
          $Res Function(_$PostIncompleteTestModelImpl) then) =
      __$$PostIncompleteTestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestType? testName});
}

/// @nodoc
class __$$PostIncompleteTestModelImplCopyWithImpl<$Res>
    extends _$PostIncompleteTestModelCopyWithImpl<$Res,
        _$PostIncompleteTestModelImpl>
    implements _$$PostIncompleteTestModelImplCopyWith<$Res> {
  __$$PostIncompleteTestModelImplCopyWithImpl(
      _$PostIncompleteTestModelImpl _value,
      $Res Function(_$PostIncompleteTestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testName = freezed,
  }) {
    return _then(_$PostIncompleteTestModelImpl(
      testName: freezed == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostIncompleteTestModelImpl implements _PostIncompleteTestModel {
  const _$PostIncompleteTestModelImpl({this.testName});

  factory _$PostIncompleteTestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostIncompleteTestModelImplFromJson(json);

  @override
  final TestType? testName;

  @override
  String toString() {
    return 'PostIncompleteTestModel(testName: $testName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostIncompleteTestModelImpl &&
            (identical(other.testName, testName) ||
                other.testName == testName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, testName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostIncompleteTestModelImplCopyWith<_$PostIncompleteTestModelImpl>
      get copyWith => __$$PostIncompleteTestModelImplCopyWithImpl<
          _$PostIncompleteTestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostIncompleteTestModelImplToJson(
      this,
    );
  }
}

abstract class _PostIncompleteTestModel implements PostIncompleteTestModel {
  const factory _PostIncompleteTestModel({final TestType? testName}) =
      _$PostIncompleteTestModelImpl;

  factory _PostIncompleteTestModel.fromJson(Map<String, dynamic> json) =
      _$PostIncompleteTestModelImpl.fromJson;

  @override
  TestType? get testName;
  @override
  @JsonKey(ignore: true)
  _$$PostIncompleteTestModelImplCopyWith<_$PostIncompleteTestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostTriageObservationsModel _$PostTriageObservationsModelFromJson(
    Map<String, dynamic> json) {
  return _PostTriageObservationsModel.fromJson(json);
}

/// @nodoc
mixin _$PostTriageObservationsModel {
  int? get id => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostTriageObservationsModelCopyWith<PostTriageObservationsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostTriageObservationsModelCopyWith<$Res> {
  factory $PostTriageObservationsModelCopyWith(
          PostTriageObservationsModel value,
          $Res Function(PostTriageObservationsModel) then) =
      _$PostTriageObservationsModelCopyWithImpl<$Res,
          PostTriageObservationsModel>;
  @useResult
  $Res call({int? id, int? identifier, String? value, double? score});
}

/// @nodoc
class _$PostTriageObservationsModelCopyWithImpl<$Res,
        $Val extends PostTriageObservationsModel>
    implements $PostTriageObservationsModelCopyWith<$Res> {
  _$PostTriageObservationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$PostTriageObservationsModelImplCopyWith<$Res>
    implements $PostTriageObservationsModelCopyWith<$Res> {
  factory _$$PostTriageObservationsModelImplCopyWith(
          _$PostTriageObservationsModelImpl value,
          $Res Function(_$PostTriageObservationsModelImpl) then) =
      __$$PostTriageObservationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? identifier, String? value, double? score});
}

/// @nodoc
class __$$PostTriageObservationsModelImplCopyWithImpl<$Res>
    extends _$PostTriageObservationsModelCopyWithImpl<$Res,
        _$PostTriageObservationsModelImpl>
    implements _$$PostTriageObservationsModelImplCopyWith<$Res> {
  __$$PostTriageObservationsModelImplCopyWithImpl(
      _$PostTriageObservationsModelImpl _value,
      $Res Function(_$PostTriageObservationsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_$PostTriageObservationsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$PostTriageObservationsModelImpl
    implements _PostTriageObservationsModel {
  const _$PostTriageObservationsModelImpl(
      {this.id, this.identifier, this.value, this.score});

  factory _$PostTriageObservationsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostTriageObservationsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? identifier;
  @override
  final String? value;
  @override
  final double? score;

  @override
  String toString() {
    return 'PostTriageObservationsModel(id: $id, identifier: $identifier, value: $value, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostTriageObservationsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, identifier, value, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostTriageObservationsModelImplCopyWith<_$PostTriageObservationsModelImpl>
      get copyWith => __$$PostTriageObservationsModelImplCopyWithImpl<
          _$PostTriageObservationsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostTriageObservationsModelImplToJson(
      this,
    );
  }
}

abstract class _PostTriageObservationsModel
    implements PostTriageObservationsModel {
  const factory _PostTriageObservationsModel(
      {final int? id,
      final int? identifier,
      final String? value,
      final double? score}) = _$PostTriageObservationsModelImpl;

  factory _PostTriageObservationsModel.fromJson(Map<String, dynamic> json) =
      _$PostTriageObservationsModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get identifier;
  @override
  String? get value;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$PostTriageObservationsModelImplCopyWith<_$PostTriageObservationsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostTriageImagingSelectionModel _$PostTriageImagingSelectionModelFromJson(
    Map<String, dynamic> json) {
  return _PostTriageImagingSelectionModel.fromJson(json);
}

/// @nodoc
mixin _$PostTriageImagingSelectionModel {
  int? get id => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;
  String? get endpoint => throw _privateConstructorUsedError;
  String? get baseUrl => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  String? get fileId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostTriageImagingSelectionModelCopyWith<PostTriageImagingSelectionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostTriageImagingSelectionModelCopyWith<$Res> {
  factory $PostTriageImagingSelectionModelCopyWith(
          PostTriageImagingSelectionModel value,
          $Res Function(PostTriageImagingSelectionModel) then) =
      _$PostTriageImagingSelectionModelCopyWithImpl<$Res,
          PostTriageImagingSelectionModel>;
  @useResult
  $Res call(
      {int? id,
      int? identifier,
      String? endpoint,
      String? baseUrl,
      double? score,
      String? fileId});
}

/// @nodoc
class _$PostTriageImagingSelectionModelCopyWithImpl<$Res,
        $Val extends PostTriageImagingSelectionModel>
    implements $PostTriageImagingSelectionModelCopyWith<$Res> {
  _$PostTriageImagingSelectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? endpoint = freezed,
    Object? baseUrl = freezed,
    Object? score = freezed,
    Object? fileId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostTriageImagingSelectionModelImplCopyWith<$Res>
    implements $PostTriageImagingSelectionModelCopyWith<$Res> {
  factory _$$PostTriageImagingSelectionModelImplCopyWith(
          _$PostTriageImagingSelectionModelImpl value,
          $Res Function(_$PostTriageImagingSelectionModelImpl) then) =
      __$$PostTriageImagingSelectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? identifier,
      String? endpoint,
      String? baseUrl,
      double? score,
      String? fileId});
}

/// @nodoc
class __$$PostTriageImagingSelectionModelImplCopyWithImpl<$Res>
    extends _$PostTriageImagingSelectionModelCopyWithImpl<$Res,
        _$PostTriageImagingSelectionModelImpl>
    implements _$$PostTriageImagingSelectionModelImplCopyWith<$Res> {
  __$$PostTriageImagingSelectionModelImplCopyWithImpl(
      _$PostTriageImagingSelectionModelImpl _value,
      $Res Function(_$PostTriageImagingSelectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? endpoint = freezed,
    Object? baseUrl = freezed,
    Object? score = freezed,
    Object? fileId = freezed,
  }) {
    return _then(_$PostTriageImagingSelectionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostTriageImagingSelectionModelImpl
    implements _PostTriageImagingSelectionModel {
  const _$PostTriageImagingSelectionModelImpl(
      {this.id,
      this.identifier,
      this.endpoint,
      this.baseUrl,
      this.score,
      this.fileId});

  factory _$PostTriageImagingSelectionModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostTriageImagingSelectionModelImplFromJson(json);

  @override
  final int? id;
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
  String toString() {
    return 'PostTriageImagingSelectionModel(id: $id, identifier: $identifier, endpoint: $endpoint, baseUrl: $baseUrl, score: $score, fileId: $fileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostTriageImagingSelectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, identifier, endpoint, baseUrl, score, fileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostTriageImagingSelectionModelImplCopyWith<
          _$PostTriageImagingSelectionModelImpl>
      get copyWith => __$$PostTriageImagingSelectionModelImplCopyWithImpl<
          _$PostTriageImagingSelectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostTriageImagingSelectionModelImplToJson(
      this,
    );
  }
}

abstract class _PostTriageImagingSelectionModel
    implements PostTriageImagingSelectionModel {
  const factory _PostTriageImagingSelectionModel(
      {final int? id,
      final int? identifier,
      final String? endpoint,
      final String? baseUrl,
      final double? score,
      final String? fileId}) = _$PostTriageImagingSelectionModelImpl;

  factory _PostTriageImagingSelectionModel.fromJson(Map<String, dynamic> json) =
      _$PostTriageImagingSelectionModelImpl.fromJson;

  @override
  int? get id;
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
  @JsonKey(ignore: true)
  _$$PostTriageImagingSelectionModelImplCopyWith<
          _$PostTriageImagingSelectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
