// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'optometrician_triage_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OptometristTriageResponse _$OptometristTriageResponseFromJson(
    Map<String, dynamic> json) {
  return _OptometristTriageResponse.fromJson(json);
}

/// @nodoc
mixin _$OptometristTriageResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  String? get patientId => throw _privateConstructorUsedError;
  int? get patientAge => throw _privateConstructorUsedError;
  Gender? get patientGender => throw _privateConstructorUsedError;
  String? get patientEducation => throw _privateConstructorUsedError;
  String? get patientProfession => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  int? get reportId => throw _privateConstructorUsedError;
  int? get enounterId => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  int? get assessmentCode => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get assessmentStartTime => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get assessmentEndTime => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get physicalAssessmentStartTime =>
      throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get physicalAssessmentEndTime => throw _privateConstructorUsedError;
  String? get capturedBy => throw _privateConstructorUsedError;
  Urgency? get overallUrgency => throw _privateConstructorUsedError;
  String? get questionnaireRemarks => throw _privateConstructorUsedError;
  List<QuestionResponse>? get questionResponse =>
      throw _privateConstructorUsedError;
  Urgency? get questionnaireUrgency => throw _privateConstructorUsedError;
  String? get questionnaireReview => throw _privateConstructorUsedError;
  List<Observation>? get observations => throw _privateConstructorUsedError;
  String? get observationsRemarks => throw _privateConstructorUsedError;
  Urgency? get observationsUrgency => throw _privateConstructorUsedError;
  String? get observationReview => throw _privateConstructorUsedError;
  List<MediaCapture>? get mediaCapture => throw _privateConstructorUsedError;
  String? get eyeScanReview => throw _privateConstructorUsedError;
  bool? get assessmentCompleted => throw _privateConstructorUsedError;
  bool? get acuityTestcompleted => throw _privateConstructorUsedError;
  bool? get eyeScanCompleted => throw _privateConstructorUsedError;
  bool? get mobileAssessmentCompleted => throw _privateConstructorUsedError;
  bool? get physicalAssessmentCompleted => throw _privateConstructorUsedError;
  String? get overallReview => throw _privateConstructorUsedError;
  String? get questionnaireScore => throw _privateConstructorUsedError;
  String? get observationScore => throw _privateConstructorUsedError;
  String? get eyeScanScore => throw _privateConstructorUsedError;
  String? get overallScore => throw _privateConstructorUsedError;
  bool? get assessmentAssistance => throw _privateConstructorUsedError;
  bool? get visualAcuityAssistance => throw _privateConstructorUsedError;
  bool? get visualAcuityAided => throw _privateConstructorUsedError;
  bool? get eyeScanAssistance => throw _privateConstructorUsedError;
  bool? get redEye => throw _privateConstructorUsedError;
  bool? get cataract => throw _privateConstructorUsedError;
  bool? get redEyeOS => throw _privateConstructorUsedError;
  bool? get redEyeOD => throw _privateConstructorUsedError;
  bool? get cataractOD => throw _privateConstructorUsedError;
  bool? get cataractOS => throw _privateConstructorUsedError;
  String? get languageUsed => throw _privateConstructorUsedError;
  String? get longDistanceUsed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptometristTriageResponseCopyWith<OptometristTriageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptometristTriageResponseCopyWith<$Res> {
  factory $OptometristTriageResponseCopyWith(OptometristTriageResponse value,
          $Res Function(OptometristTriageResponse) then) =
      _$OptometristTriageResponseCopyWithImpl<$Res, OptometristTriageResponse>;
  @useResult
  $Res call(
      {int? id,
      String? uuid,
      String? patientId,
      int? patientAge,
      Gender? patientGender,
      String? patientEducation,
      String? patientProfession,
      String? source,
      int? reportId,
      int? enounterId,
      int? organizationCode,
      int? assessmentCode,
      @TimestampConverter() DateTime? assessmentStartTime,
      @TimestampConverter() DateTime? assessmentEndTime,
      @TimestampConverter() DateTime? physicalAssessmentStartTime,
      @TimestampConverter() DateTime? physicalAssessmentEndTime,
      String? capturedBy,
      Urgency? overallUrgency,
      String? questionnaireRemarks,
      List<QuestionResponse>? questionResponse,
      Urgency? questionnaireUrgency,
      String? questionnaireReview,
      List<Observation>? observations,
      String? observationsRemarks,
      Urgency? observationsUrgency,
      String? observationReview,
      List<MediaCapture>? mediaCapture,
      String? eyeScanReview,
      bool? assessmentCompleted,
      bool? acuityTestcompleted,
      bool? eyeScanCompleted,
      bool? mobileAssessmentCompleted,
      bool? physicalAssessmentCompleted,
      String? overallReview,
      String? questionnaireScore,
      String? observationScore,
      String? eyeScanScore,
      String? overallScore,
      bool? assessmentAssistance,
      bool? visualAcuityAssistance,
      bool? visualAcuityAided,
      bool? eyeScanAssistance,
      bool? redEye,
      bool? cataract,
      bool? redEyeOS,
      bool? redEyeOD,
      bool? cataractOD,
      bool? cataractOS,
      String? languageUsed,
      String? longDistanceUsed});
}

/// @nodoc
class _$OptometristTriageResponseCopyWithImpl<$Res,
        $Val extends OptometristTriageResponse>
    implements $OptometristTriageResponseCopyWith<$Res> {
  _$OptometristTriageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? patientId = freezed,
    Object? patientAge = freezed,
    Object? patientGender = freezed,
    Object? patientEducation = freezed,
    Object? patientProfession = freezed,
    Object? source = freezed,
    Object? reportId = freezed,
    Object? enounterId = freezed,
    Object? organizationCode = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentStartTime = freezed,
    Object? assessmentEndTime = freezed,
    Object? physicalAssessmentStartTime = freezed,
    Object? physicalAssessmentEndTime = freezed,
    Object? capturedBy = freezed,
    Object? overallUrgency = freezed,
    Object? questionnaireRemarks = freezed,
    Object? questionResponse = freezed,
    Object? questionnaireUrgency = freezed,
    Object? questionnaireReview = freezed,
    Object? observations = freezed,
    Object? observationsRemarks = freezed,
    Object? observationsUrgency = freezed,
    Object? observationReview = freezed,
    Object? mediaCapture = freezed,
    Object? eyeScanReview = freezed,
    Object? assessmentCompleted = freezed,
    Object? acuityTestcompleted = freezed,
    Object? eyeScanCompleted = freezed,
    Object? mobileAssessmentCompleted = freezed,
    Object? physicalAssessmentCompleted = freezed,
    Object? overallReview = freezed,
    Object? questionnaireScore = freezed,
    Object? observationScore = freezed,
    Object? eyeScanScore = freezed,
    Object? overallScore = freezed,
    Object? assessmentAssistance = freezed,
    Object? visualAcuityAssistance = freezed,
    Object? visualAcuityAided = freezed,
    Object? eyeScanAssistance = freezed,
    Object? redEye = freezed,
    Object? cataract = freezed,
    Object? redEyeOS = freezed,
    Object? redEyeOD = freezed,
    Object? cataractOD = freezed,
    Object? cataractOS = freezed,
    Object? languageUsed = freezed,
    Object? longDistanceUsed = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientAge: freezed == patientAge
          ? _value.patientAge
          : patientAge // ignore: cast_nullable_to_non_nullable
              as int?,
      patientGender: freezed == patientGender
          ? _value.patientGender
          : patientGender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      patientEducation: freezed == patientEducation
          ? _value.patientEducation
          : patientEducation // ignore: cast_nullable_to_non_nullable
              as String?,
      patientProfession: freezed == patientProfession
          ? _value.patientProfession
          : patientProfession // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      reportId: freezed == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as int?,
      enounterId: freezed == enounterId
          ? _value.enounterId
          : enounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      assessmentCode: freezed == assessmentCode
          ? _value.assessmentCode
          : assessmentCode // ignore: cast_nullable_to_non_nullable
              as int?,
      assessmentStartTime: freezed == assessmentStartTime
          ? _value.assessmentStartTime
          : assessmentStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      assessmentEndTime: freezed == assessmentEndTime
          ? _value.assessmentEndTime
          : assessmentEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      physicalAssessmentStartTime: freezed == physicalAssessmentStartTime
          ? _value.physicalAssessmentStartTime
          : physicalAssessmentStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      physicalAssessmentEndTime: freezed == physicalAssessmentEndTime
          ? _value.physicalAssessmentEndTime
          : physicalAssessmentEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      capturedBy: freezed == capturedBy
          ? _value.capturedBy
          : capturedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      overallUrgency: freezed == overallUrgency
          ? _value.overallUrgency
          : overallUrgency // ignore: cast_nullable_to_non_nullable
              as Urgency?,
      questionnaireRemarks: freezed == questionnaireRemarks
          ? _value.questionnaireRemarks
          : questionnaireRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      questionResponse: freezed == questionResponse
          ? _value.questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>?,
      questionnaireUrgency: freezed == questionnaireUrgency
          ? _value.questionnaireUrgency
          : questionnaireUrgency // ignore: cast_nullable_to_non_nullable
              as Urgency?,
      questionnaireReview: freezed == questionnaireReview
          ? _value.questionnaireReview
          : questionnaireReview // ignore: cast_nullable_to_non_nullable
              as String?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<Observation>?,
      observationsRemarks: freezed == observationsRemarks
          ? _value.observationsRemarks
          : observationsRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      observationsUrgency: freezed == observationsUrgency
          ? _value.observationsUrgency
          : observationsUrgency // ignore: cast_nullable_to_non_nullable
              as Urgency?,
      observationReview: freezed == observationReview
          ? _value.observationReview
          : observationReview // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaCapture: freezed == mediaCapture
          ? _value.mediaCapture
          : mediaCapture // ignore: cast_nullable_to_non_nullable
              as List<MediaCapture>?,
      eyeScanReview: freezed == eyeScanReview
          ? _value.eyeScanReview
          : eyeScanReview // ignore: cast_nullable_to_non_nullable
              as String?,
      assessmentCompleted: freezed == assessmentCompleted
          ? _value.assessmentCompleted
          : assessmentCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      acuityTestcompleted: freezed == acuityTestcompleted
          ? _value.acuityTestcompleted
          : acuityTestcompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      eyeScanCompleted: freezed == eyeScanCompleted
          ? _value.eyeScanCompleted
          : eyeScanCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      mobileAssessmentCompleted: freezed == mobileAssessmentCompleted
          ? _value.mobileAssessmentCompleted
          : mobileAssessmentCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      physicalAssessmentCompleted: freezed == physicalAssessmentCompleted
          ? _value.physicalAssessmentCompleted
          : physicalAssessmentCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      overallReview: freezed == overallReview
          ? _value.overallReview
          : overallReview // ignore: cast_nullable_to_non_nullable
              as String?,
      questionnaireScore: freezed == questionnaireScore
          ? _value.questionnaireScore
          : questionnaireScore // ignore: cast_nullable_to_non_nullable
              as String?,
      observationScore: freezed == observationScore
          ? _value.observationScore
          : observationScore // ignore: cast_nullable_to_non_nullable
              as String?,
      eyeScanScore: freezed == eyeScanScore
          ? _value.eyeScanScore
          : eyeScanScore // ignore: cast_nullable_to_non_nullable
              as String?,
      overallScore: freezed == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as String?,
      assessmentAssistance: freezed == assessmentAssistance
          ? _value.assessmentAssistance
          : assessmentAssistance // ignore: cast_nullable_to_non_nullable
              as bool?,
      visualAcuityAssistance: freezed == visualAcuityAssistance
          ? _value.visualAcuityAssistance
          : visualAcuityAssistance // ignore: cast_nullable_to_non_nullable
              as bool?,
      visualAcuityAided: freezed == visualAcuityAided
          ? _value.visualAcuityAided
          : visualAcuityAided // ignore: cast_nullable_to_non_nullable
              as bool?,
      eyeScanAssistance: freezed == eyeScanAssistance
          ? _value.eyeScanAssistance
          : eyeScanAssistance // ignore: cast_nullable_to_non_nullable
              as bool?,
      redEye: freezed == redEye
          ? _value.redEye
          : redEye // ignore: cast_nullable_to_non_nullable
              as bool?,
      cataract: freezed == cataract
          ? _value.cataract
          : cataract // ignore: cast_nullable_to_non_nullable
              as bool?,
      redEyeOS: freezed == redEyeOS
          ? _value.redEyeOS
          : redEyeOS // ignore: cast_nullable_to_non_nullable
              as bool?,
      redEyeOD: freezed == redEyeOD
          ? _value.redEyeOD
          : redEyeOD // ignore: cast_nullable_to_non_nullable
              as bool?,
      cataractOD: freezed == cataractOD
          ? _value.cataractOD
          : cataractOD // ignore: cast_nullable_to_non_nullable
              as bool?,
      cataractOS: freezed == cataractOS
          ? _value.cataractOS
          : cataractOS // ignore: cast_nullable_to_non_nullable
              as bool?,
      languageUsed: freezed == languageUsed
          ? _value.languageUsed
          : languageUsed // ignore: cast_nullable_to_non_nullable
              as String?,
      longDistanceUsed: freezed == longDistanceUsed
          ? _value.longDistanceUsed
          : longDistanceUsed // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptometristTriageResponseImplCopyWith<$Res>
    implements $OptometristTriageResponseCopyWith<$Res> {
  factory _$$OptometristTriageResponseImplCopyWith(
          _$OptometristTriageResponseImpl value,
          $Res Function(_$OptometristTriageResponseImpl) then) =
      __$$OptometristTriageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? uuid,
      String? patientId,
      int? patientAge,
      Gender? patientGender,
      String? patientEducation,
      String? patientProfession,
      String? source,
      int? reportId,
      int? enounterId,
      int? organizationCode,
      int? assessmentCode,
      @TimestampConverter() DateTime? assessmentStartTime,
      @TimestampConverter() DateTime? assessmentEndTime,
      @TimestampConverter() DateTime? physicalAssessmentStartTime,
      @TimestampConverter() DateTime? physicalAssessmentEndTime,
      String? capturedBy,
      Urgency? overallUrgency,
      String? questionnaireRemarks,
      List<QuestionResponse>? questionResponse,
      Urgency? questionnaireUrgency,
      String? questionnaireReview,
      List<Observation>? observations,
      String? observationsRemarks,
      Urgency? observationsUrgency,
      String? observationReview,
      List<MediaCapture>? mediaCapture,
      String? eyeScanReview,
      bool? assessmentCompleted,
      bool? acuityTestcompleted,
      bool? eyeScanCompleted,
      bool? mobileAssessmentCompleted,
      bool? physicalAssessmentCompleted,
      String? overallReview,
      String? questionnaireScore,
      String? observationScore,
      String? eyeScanScore,
      String? overallScore,
      bool? assessmentAssistance,
      bool? visualAcuityAssistance,
      bool? visualAcuityAided,
      bool? eyeScanAssistance,
      bool? redEye,
      bool? cataract,
      bool? redEyeOS,
      bool? redEyeOD,
      bool? cataractOD,
      bool? cataractOS,
      String? languageUsed,
      String? longDistanceUsed});
}

/// @nodoc
class __$$OptometristTriageResponseImplCopyWithImpl<$Res>
    extends _$OptometristTriageResponseCopyWithImpl<$Res,
        _$OptometristTriageResponseImpl>
    implements _$$OptometristTriageResponseImplCopyWith<$Res> {
  __$$OptometristTriageResponseImplCopyWithImpl(
      _$OptometristTriageResponseImpl _value,
      $Res Function(_$OptometristTriageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? patientId = freezed,
    Object? patientAge = freezed,
    Object? patientGender = freezed,
    Object? patientEducation = freezed,
    Object? patientProfession = freezed,
    Object? source = freezed,
    Object? reportId = freezed,
    Object? enounterId = freezed,
    Object? organizationCode = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentStartTime = freezed,
    Object? assessmentEndTime = freezed,
    Object? physicalAssessmentStartTime = freezed,
    Object? physicalAssessmentEndTime = freezed,
    Object? capturedBy = freezed,
    Object? overallUrgency = freezed,
    Object? questionnaireRemarks = freezed,
    Object? questionResponse = freezed,
    Object? questionnaireUrgency = freezed,
    Object? questionnaireReview = freezed,
    Object? observations = freezed,
    Object? observationsRemarks = freezed,
    Object? observationsUrgency = freezed,
    Object? observationReview = freezed,
    Object? mediaCapture = freezed,
    Object? eyeScanReview = freezed,
    Object? assessmentCompleted = freezed,
    Object? acuityTestcompleted = freezed,
    Object? eyeScanCompleted = freezed,
    Object? mobileAssessmentCompleted = freezed,
    Object? physicalAssessmentCompleted = freezed,
    Object? overallReview = freezed,
    Object? questionnaireScore = freezed,
    Object? observationScore = freezed,
    Object? eyeScanScore = freezed,
    Object? overallScore = freezed,
    Object? assessmentAssistance = freezed,
    Object? visualAcuityAssistance = freezed,
    Object? visualAcuityAided = freezed,
    Object? eyeScanAssistance = freezed,
    Object? redEye = freezed,
    Object? cataract = freezed,
    Object? redEyeOS = freezed,
    Object? redEyeOD = freezed,
    Object? cataractOD = freezed,
    Object? cataractOS = freezed,
    Object? languageUsed = freezed,
    Object? longDistanceUsed = freezed,
  }) {
    return _then(_$OptometristTriageResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientAge: freezed == patientAge
          ? _value.patientAge
          : patientAge // ignore: cast_nullable_to_non_nullable
              as int?,
      patientGender: freezed == patientGender
          ? _value.patientGender
          : patientGender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      patientEducation: freezed == patientEducation
          ? _value.patientEducation
          : patientEducation // ignore: cast_nullable_to_non_nullable
              as String?,
      patientProfession: freezed == patientProfession
          ? _value.patientProfession
          : patientProfession // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      reportId: freezed == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as int?,
      enounterId: freezed == enounterId
          ? _value.enounterId
          : enounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      assessmentCode: freezed == assessmentCode
          ? _value.assessmentCode
          : assessmentCode // ignore: cast_nullable_to_non_nullable
              as int?,
      assessmentStartTime: freezed == assessmentStartTime
          ? _value.assessmentStartTime
          : assessmentStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      assessmentEndTime: freezed == assessmentEndTime
          ? _value.assessmentEndTime
          : assessmentEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      physicalAssessmentStartTime: freezed == physicalAssessmentStartTime
          ? _value.physicalAssessmentStartTime
          : physicalAssessmentStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      physicalAssessmentEndTime: freezed == physicalAssessmentEndTime
          ? _value.physicalAssessmentEndTime
          : physicalAssessmentEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      capturedBy: freezed == capturedBy
          ? _value.capturedBy
          : capturedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      overallUrgency: freezed == overallUrgency
          ? _value.overallUrgency
          : overallUrgency // ignore: cast_nullable_to_non_nullable
              as Urgency?,
      questionnaireRemarks: freezed == questionnaireRemarks
          ? _value.questionnaireRemarks
          : questionnaireRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      questionResponse: freezed == questionResponse
          ? _value._questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>?,
      questionnaireUrgency: freezed == questionnaireUrgency
          ? _value.questionnaireUrgency
          : questionnaireUrgency // ignore: cast_nullable_to_non_nullable
              as Urgency?,
      questionnaireReview: freezed == questionnaireReview
          ? _value.questionnaireReview
          : questionnaireReview // ignore: cast_nullable_to_non_nullable
              as String?,
      observations: freezed == observations
          ? _value._observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<Observation>?,
      observationsRemarks: freezed == observationsRemarks
          ? _value.observationsRemarks
          : observationsRemarks // ignore: cast_nullable_to_non_nullable
              as String?,
      observationsUrgency: freezed == observationsUrgency
          ? _value.observationsUrgency
          : observationsUrgency // ignore: cast_nullable_to_non_nullable
              as Urgency?,
      observationReview: freezed == observationReview
          ? _value.observationReview
          : observationReview // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaCapture: freezed == mediaCapture
          ? _value._mediaCapture
          : mediaCapture // ignore: cast_nullable_to_non_nullable
              as List<MediaCapture>?,
      eyeScanReview: freezed == eyeScanReview
          ? _value.eyeScanReview
          : eyeScanReview // ignore: cast_nullable_to_non_nullable
              as String?,
      assessmentCompleted: freezed == assessmentCompleted
          ? _value.assessmentCompleted
          : assessmentCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      acuityTestcompleted: freezed == acuityTestcompleted
          ? _value.acuityTestcompleted
          : acuityTestcompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      eyeScanCompleted: freezed == eyeScanCompleted
          ? _value.eyeScanCompleted
          : eyeScanCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      mobileAssessmentCompleted: freezed == mobileAssessmentCompleted
          ? _value.mobileAssessmentCompleted
          : mobileAssessmentCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      physicalAssessmentCompleted: freezed == physicalAssessmentCompleted
          ? _value.physicalAssessmentCompleted
          : physicalAssessmentCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      overallReview: freezed == overallReview
          ? _value.overallReview
          : overallReview // ignore: cast_nullable_to_non_nullable
              as String?,
      questionnaireScore: freezed == questionnaireScore
          ? _value.questionnaireScore
          : questionnaireScore // ignore: cast_nullable_to_non_nullable
              as String?,
      observationScore: freezed == observationScore
          ? _value.observationScore
          : observationScore // ignore: cast_nullable_to_non_nullable
              as String?,
      eyeScanScore: freezed == eyeScanScore
          ? _value.eyeScanScore
          : eyeScanScore // ignore: cast_nullable_to_non_nullable
              as String?,
      overallScore: freezed == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as String?,
      assessmentAssistance: freezed == assessmentAssistance
          ? _value.assessmentAssistance
          : assessmentAssistance // ignore: cast_nullable_to_non_nullable
              as bool?,
      visualAcuityAssistance: freezed == visualAcuityAssistance
          ? _value.visualAcuityAssistance
          : visualAcuityAssistance // ignore: cast_nullable_to_non_nullable
              as bool?,
      visualAcuityAided: freezed == visualAcuityAided
          ? _value.visualAcuityAided
          : visualAcuityAided // ignore: cast_nullable_to_non_nullable
              as bool?,
      eyeScanAssistance: freezed == eyeScanAssistance
          ? _value.eyeScanAssistance
          : eyeScanAssistance // ignore: cast_nullable_to_non_nullable
              as bool?,
      redEye: freezed == redEye
          ? _value.redEye
          : redEye // ignore: cast_nullable_to_non_nullable
              as bool?,
      cataract: freezed == cataract
          ? _value.cataract
          : cataract // ignore: cast_nullable_to_non_nullable
              as bool?,
      redEyeOS: freezed == redEyeOS
          ? _value.redEyeOS
          : redEyeOS // ignore: cast_nullable_to_non_nullable
              as bool?,
      redEyeOD: freezed == redEyeOD
          ? _value.redEyeOD
          : redEyeOD // ignore: cast_nullable_to_non_nullable
              as bool?,
      cataractOD: freezed == cataractOD
          ? _value.cataractOD
          : cataractOD // ignore: cast_nullable_to_non_nullable
              as bool?,
      cataractOS: freezed == cataractOS
          ? _value.cataractOS
          : cataractOS // ignore: cast_nullable_to_non_nullable
              as bool?,
      languageUsed: freezed == languageUsed
          ? _value.languageUsed
          : languageUsed // ignore: cast_nullable_to_non_nullable
              as String?,
      longDistanceUsed: freezed == longDistanceUsed
          ? _value.longDistanceUsed
          : longDistanceUsed // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OptometristTriageResponseImpl implements _OptometristTriageResponse {
  const _$OptometristTriageResponseImpl(
      {this.id,
      this.uuid,
      this.patientId,
      this.patientAge,
      this.patientGender,
      this.patientEducation,
      this.patientProfession,
      this.source,
      this.reportId,
      this.enounterId,
      this.organizationCode,
      this.assessmentCode,
      @TimestampConverter() this.assessmentStartTime,
      @TimestampConverter() this.assessmentEndTime,
      @TimestampConverter() this.physicalAssessmentStartTime,
      @TimestampConverter() this.physicalAssessmentEndTime,
      this.capturedBy,
      this.overallUrgency,
      this.questionnaireRemarks,
      final List<QuestionResponse>? questionResponse,
      this.questionnaireUrgency,
      this.questionnaireReview,
      final List<Observation>? observations,
      this.observationsRemarks,
      this.observationsUrgency,
      this.observationReview,
      final List<MediaCapture>? mediaCapture,
      this.eyeScanReview,
      this.assessmentCompleted,
      this.acuityTestcompleted,
      this.eyeScanCompleted,
      this.mobileAssessmentCompleted,
      this.physicalAssessmentCompleted,
      this.overallReview,
      this.questionnaireScore,
      this.observationScore,
      this.eyeScanScore,
      this.overallScore,
      this.assessmentAssistance,
      this.visualAcuityAssistance,
      this.visualAcuityAided,
      this.eyeScanAssistance,
      this.redEye,
      this.cataract,
      this.redEyeOS,
      this.redEyeOD,
      this.cataractOD,
      this.cataractOS,
      this.languageUsed,
      this.longDistanceUsed})
      : _questionResponse = questionResponse,
        _observations = observations,
        _mediaCapture = mediaCapture;

  factory _$OptometristTriageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptometristTriageResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? uuid;
  @override
  final String? patientId;
  @override
  final int? patientAge;
  @override
  final Gender? patientGender;
  @override
  final String? patientEducation;
  @override
  final String? patientProfession;
  @override
  final String? source;
  @override
  final int? reportId;
  @override
  final int? enounterId;
  @override
  final int? organizationCode;
  @override
  final int? assessmentCode;
  @override
  @TimestampConverter()
  final DateTime? assessmentStartTime;
  @override
  @TimestampConverter()
  final DateTime? assessmentEndTime;
  @override
  @TimestampConverter()
  final DateTime? physicalAssessmentStartTime;
  @override
  @TimestampConverter()
  final DateTime? physicalAssessmentEndTime;
  @override
  final String? capturedBy;
  @override
  final Urgency? overallUrgency;
  @override
  final String? questionnaireRemarks;
  final List<QuestionResponse>? _questionResponse;
  @override
  List<QuestionResponse>? get questionResponse {
    final value = _questionResponse;
    if (value == null) return null;
    if (_questionResponse is EqualUnmodifiableListView)
      return _questionResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Urgency? questionnaireUrgency;
  @override
  final String? questionnaireReview;
  final List<Observation>? _observations;
  @override
  List<Observation>? get observations {
    final value = _observations;
    if (value == null) return null;
    if (_observations is EqualUnmodifiableListView) return _observations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? observationsRemarks;
  @override
  final Urgency? observationsUrgency;
  @override
  final String? observationReview;
  final List<MediaCapture>? _mediaCapture;
  @override
  List<MediaCapture>? get mediaCapture {
    final value = _mediaCapture;
    if (value == null) return null;
    if (_mediaCapture is EqualUnmodifiableListView) return _mediaCapture;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? eyeScanReview;
  @override
  final bool? assessmentCompleted;
  @override
  final bool? acuityTestcompleted;
  @override
  final bool? eyeScanCompleted;
  @override
  final bool? mobileAssessmentCompleted;
  @override
  final bool? physicalAssessmentCompleted;
  @override
  final String? overallReview;
  @override
  final String? questionnaireScore;
  @override
  final String? observationScore;
  @override
  final String? eyeScanScore;
  @override
  final String? overallScore;
  @override
  final bool? assessmentAssistance;
  @override
  final bool? visualAcuityAssistance;
  @override
  final bool? visualAcuityAided;
  @override
  final bool? eyeScanAssistance;
  @override
  final bool? redEye;
  @override
  final bool? cataract;
  @override
  final bool? redEyeOS;
  @override
  final bool? redEyeOD;
  @override
  final bool? cataractOD;
  @override
  final bool? cataractOS;
  @override
  final String? languageUsed;
  @override
  final String? longDistanceUsed;

  @override
  String toString() {
    return 'OptometristTriageResponse(id: $id, uuid: $uuid, patientId: $patientId, patientAge: $patientAge, patientGender: $patientGender, patientEducation: $patientEducation, patientProfession: $patientProfession, source: $source, reportId: $reportId, enounterId: $enounterId, organizationCode: $organizationCode, assessmentCode: $assessmentCode, assessmentStartTime: $assessmentStartTime, assessmentEndTime: $assessmentEndTime, physicalAssessmentStartTime: $physicalAssessmentStartTime, physicalAssessmentEndTime: $physicalAssessmentEndTime, capturedBy: $capturedBy, overallUrgency: $overallUrgency, questionnaireRemarks: $questionnaireRemarks, questionResponse: $questionResponse, questionnaireUrgency: $questionnaireUrgency, questionnaireReview: $questionnaireReview, observations: $observations, observationsRemarks: $observationsRemarks, observationsUrgency: $observationsUrgency, observationReview: $observationReview, mediaCapture: $mediaCapture, eyeScanReview: $eyeScanReview, assessmentCompleted: $assessmentCompleted, acuityTestcompleted: $acuityTestcompleted, eyeScanCompleted: $eyeScanCompleted, mobileAssessmentCompleted: $mobileAssessmentCompleted, physicalAssessmentCompleted: $physicalAssessmentCompleted, overallReview: $overallReview, questionnaireScore: $questionnaireScore, observationScore: $observationScore, eyeScanScore: $eyeScanScore, overallScore: $overallScore, assessmentAssistance: $assessmentAssistance, visualAcuityAssistance: $visualAcuityAssistance, visualAcuityAided: $visualAcuityAided, eyeScanAssistance: $eyeScanAssistance, redEye: $redEye, cataract: $cataract, redEyeOS: $redEyeOS, redEyeOD: $redEyeOD, cataractOD: $cataractOD, cataractOS: $cataractOS, languageUsed: $languageUsed, longDistanceUsed: $longDistanceUsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptometristTriageResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.patientAge, patientAge) ||
                other.patientAge == patientAge) &&
            (identical(other.patientGender, patientGender) ||
                other.patientGender == patientGender) &&
            (identical(other.patientEducation, patientEducation) ||
                other.patientEducation == patientEducation) &&
            (identical(other.patientProfession, patientProfession) ||
                other.patientProfession == patientProfession) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.enounterId, enounterId) ||
                other.enounterId == enounterId) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            (identical(other.assessmentCode, assessmentCode) ||
                other.assessmentCode == assessmentCode) &&
            (identical(other.assessmentStartTime, assessmentStartTime) ||
                other.assessmentStartTime == assessmentStartTime) &&
            (identical(other.assessmentEndTime, assessmentEndTime) ||
                other.assessmentEndTime == assessmentEndTime) &&
            (identical(other.physicalAssessmentStartTime, physicalAssessmentStartTime) ||
                other.physicalAssessmentStartTime ==
                    physicalAssessmentStartTime) &&
            (identical(other.physicalAssessmentEndTime, physicalAssessmentEndTime) ||
                other.physicalAssessmentEndTime == physicalAssessmentEndTime) &&
            (identical(other.capturedBy, capturedBy) ||
                other.capturedBy == capturedBy) &&
            (identical(other.overallUrgency, overallUrgency) ||
                other.overallUrgency == overallUrgency) &&
            (identical(other.questionnaireRemarks, questionnaireRemarks) ||
                other.questionnaireRemarks == questionnaireRemarks) &&
            const DeepCollectionEquality()
                .equals(other._questionResponse, _questionResponse) &&
            (identical(other.questionnaireUrgency, questionnaireUrgency) ||
                other.questionnaireUrgency == questionnaireUrgency) &&
            (identical(other.questionnaireReview, questionnaireReview) ||
                other.questionnaireReview == questionnaireReview) &&
            const DeepCollectionEquality()
                .equals(other._observations, _observations) &&
            (identical(other.observationsRemarks, observationsRemarks) ||
                other.observationsRemarks == observationsRemarks) &&
            (identical(other.observationsUrgency, observationsUrgency) ||
                other.observationsUrgency == observationsUrgency) &&
            (identical(other.observationReview, observationReview) ||
                other.observationReview == observationReview) &&
            const DeepCollectionEquality()
                .equals(other._mediaCapture, _mediaCapture) &&
            (identical(other.eyeScanReview, eyeScanReview) ||
                other.eyeScanReview == eyeScanReview) &&
            (identical(other.assessmentCompleted, assessmentCompleted) ||
                other.assessmentCompleted == assessmentCompleted) &&
            (identical(other.acuityTestcompleted, acuityTestcompleted) ||
                other.acuityTestcompleted == acuityTestcompleted) &&
            (identical(other.eyeScanCompleted, eyeScanCompleted) ||
                other.eyeScanCompleted == eyeScanCompleted) &&
            (identical(other.mobileAssessmentCompleted, mobileAssessmentCompleted) ||
                other.mobileAssessmentCompleted == mobileAssessmentCompleted) &&
            (identical(other.physicalAssessmentCompleted, physicalAssessmentCompleted) ||
                other.physicalAssessmentCompleted ==
                    physicalAssessmentCompleted) &&
            (identical(other.overallReview, overallReview) || other.overallReview == overallReview) &&
            (identical(other.questionnaireScore, questionnaireScore) || other.questionnaireScore == questionnaireScore) &&
            (identical(other.observationScore, observationScore) || other.observationScore == observationScore) &&
            (identical(other.eyeScanScore, eyeScanScore) || other.eyeScanScore == eyeScanScore) &&
            (identical(other.overallScore, overallScore) || other.overallScore == overallScore) &&
            (identical(other.assessmentAssistance, assessmentAssistance) || other.assessmentAssistance == assessmentAssistance) &&
            (identical(other.visualAcuityAssistance, visualAcuityAssistance) || other.visualAcuityAssistance == visualAcuityAssistance) &&
            (identical(other.visualAcuityAided, visualAcuityAided) || other.visualAcuityAided == visualAcuityAided) &&
            (identical(other.eyeScanAssistance, eyeScanAssistance) || other.eyeScanAssistance == eyeScanAssistance) &&
            (identical(other.redEye, redEye) || other.redEye == redEye) &&
            (identical(other.cataract, cataract) || other.cataract == cataract) &&
            (identical(other.redEyeOS, redEyeOS) || other.redEyeOS == redEyeOS) &&
            (identical(other.redEyeOD, redEyeOD) || other.redEyeOD == redEyeOD) &&
            (identical(other.cataractOD, cataractOD) || other.cataractOD == cataractOD) &&
            (identical(other.cataractOS, cataractOS) || other.cataractOS == cataractOS) &&
            (identical(other.languageUsed, languageUsed) || other.languageUsed == languageUsed) &&
            (identical(other.longDistanceUsed, longDistanceUsed) || other.longDistanceUsed == longDistanceUsed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        uuid,
        patientId,
        patientAge,
        patientGender,
        patientEducation,
        patientProfession,
        source,
        reportId,
        enounterId,
        organizationCode,
        assessmentCode,
        assessmentStartTime,
        assessmentEndTime,
        physicalAssessmentStartTime,
        physicalAssessmentEndTime,
        capturedBy,
        overallUrgency,
        questionnaireRemarks,
        const DeepCollectionEquality().hash(_questionResponse),
        questionnaireUrgency,
        questionnaireReview,
        const DeepCollectionEquality().hash(_observations),
        observationsRemarks,
        observationsUrgency,
        observationReview,
        const DeepCollectionEquality().hash(_mediaCapture),
        eyeScanReview,
        assessmentCompleted,
        acuityTestcompleted,
        eyeScanCompleted,
        mobileAssessmentCompleted,
        physicalAssessmentCompleted,
        overallReview,
        questionnaireScore,
        observationScore,
        eyeScanScore,
        overallScore,
        assessmentAssistance,
        visualAcuityAssistance,
        visualAcuityAided,
        eyeScanAssistance,
        redEye,
        cataract,
        redEyeOS,
        redEyeOD,
        cataractOD,
        cataractOS,
        languageUsed,
        longDistanceUsed
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptometristTriageResponseImplCopyWith<_$OptometristTriageResponseImpl>
      get copyWith => __$$OptometristTriageResponseImplCopyWithImpl<
          _$OptometristTriageResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptometristTriageResponseImplToJson(
      this,
    );
  }
}

abstract class _OptometristTriageResponse implements OptometristTriageResponse {
  const factory _OptometristTriageResponse(
      {final int? id,
      final String? uuid,
      final String? patientId,
      final int? patientAge,
      final Gender? patientGender,
      final String? patientEducation,
      final String? patientProfession,
      final String? source,
      final int? reportId,
      final int? enounterId,
      final int? organizationCode,
      final int? assessmentCode,
      @TimestampConverter() final DateTime? assessmentStartTime,
      @TimestampConverter() final DateTime? assessmentEndTime,
      @TimestampConverter() final DateTime? physicalAssessmentStartTime,
      @TimestampConverter() final DateTime? physicalAssessmentEndTime,
      final String? capturedBy,
      final Urgency? overallUrgency,
      final String? questionnaireRemarks,
      final List<QuestionResponse>? questionResponse,
      final Urgency? questionnaireUrgency,
      final String? questionnaireReview,
      final List<Observation>? observations,
      final String? observationsRemarks,
      final Urgency? observationsUrgency,
      final String? observationReview,
      final List<MediaCapture>? mediaCapture,
      final String? eyeScanReview,
      final bool? assessmentCompleted,
      final bool? acuityTestcompleted,
      final bool? eyeScanCompleted,
      final bool? mobileAssessmentCompleted,
      final bool? physicalAssessmentCompleted,
      final String? overallReview,
      final String? questionnaireScore,
      final String? observationScore,
      final String? eyeScanScore,
      final String? overallScore,
      final bool? assessmentAssistance,
      final bool? visualAcuityAssistance,
      final bool? visualAcuityAided,
      final bool? eyeScanAssistance,
      final bool? redEye,
      final bool? cataract,
      final bool? redEyeOS,
      final bool? redEyeOD,
      final bool? cataractOD,
      final bool? cataractOS,
      final String? languageUsed,
      final String? longDistanceUsed}) = _$OptometristTriageResponseImpl;

  factory _OptometristTriageResponse.fromJson(Map<String, dynamic> json) =
      _$OptometristTriageResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get uuid;
  @override
  String? get patientId;
  @override
  int? get patientAge;
  @override
  Gender? get patientGender;
  @override
  String? get patientEducation;
  @override
  String? get patientProfession;
  @override
  String? get source;
  @override
  int? get reportId;
  @override
  int? get enounterId;
  @override
  int? get organizationCode;
  @override
  int? get assessmentCode;
  @override
  @TimestampConverter()
  DateTime? get assessmentStartTime;
  @override
  @TimestampConverter()
  DateTime? get assessmentEndTime;
  @override
  @TimestampConverter()
  DateTime? get physicalAssessmentStartTime;
  @override
  @TimestampConverter()
  DateTime? get physicalAssessmentEndTime;
  @override
  String? get capturedBy;
  @override
  Urgency? get overallUrgency;
  @override
  String? get questionnaireRemarks;
  @override
  List<QuestionResponse>? get questionResponse;
  @override
  Urgency? get questionnaireUrgency;
  @override
  String? get questionnaireReview;
  @override
  List<Observation>? get observations;
  @override
  String? get observationsRemarks;
  @override
  Urgency? get observationsUrgency;
  @override
  String? get observationReview;
  @override
  List<MediaCapture>? get mediaCapture;
  @override
  String? get eyeScanReview;
  @override
  bool? get assessmentCompleted;
  @override
  bool? get acuityTestcompleted;
  @override
  bool? get eyeScanCompleted;
  @override
  bool? get mobileAssessmentCompleted;
  @override
  bool? get physicalAssessmentCompleted;
  @override
  String? get overallReview;
  @override
  String? get questionnaireScore;
  @override
  String? get observationScore;
  @override
  String? get eyeScanScore;
  @override
  String? get overallScore;
  @override
  bool? get assessmentAssistance;
  @override
  bool? get visualAcuityAssistance;
  @override
  bool? get visualAcuityAided;
  @override
  bool? get eyeScanAssistance;
  @override
  bool? get redEye;
  @override
  bool? get cataract;
  @override
  bool? get redEyeOS;
  @override
  bool? get redEyeOD;
  @override
  bool? get cataractOD;
  @override
  bool? get cataractOS;
  @override
  String? get languageUsed;
  @override
  String? get longDistanceUsed;
  @override
  @JsonKey(ignore: true)
  _$$OptometristTriageResponseImplCopyWith<_$OptometristTriageResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QuestionResponse _$QuestionResponseFromJson(Map<String, dynamic> json) {
  return _QuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestionResponse {
  int? get questionCode => throw _privateConstructorUsedError;
  bool? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionResponseCopyWith<QuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionResponseCopyWith<$Res> {
  factory $QuestionResponseCopyWith(
          QuestionResponse value, $Res Function(QuestionResponse) then) =
      _$QuestionResponseCopyWithImpl<$Res, QuestionResponse>;
  @useResult
  $Res call({int? questionCode, bool? response});
}

/// @nodoc
class _$QuestionResponseCopyWithImpl<$Res, $Val extends QuestionResponse>
    implements $QuestionResponseCopyWith<$Res> {
  _$QuestionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionCode = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      questionCode: freezed == questionCode
          ? _value.questionCode
          : questionCode // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionResponseImplCopyWith<$Res>
    implements $QuestionResponseCopyWith<$Res> {
  factory _$$QuestionResponseImplCopyWith(_$QuestionResponseImpl value,
          $Res Function(_$QuestionResponseImpl) then) =
      __$$QuestionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? questionCode, bool? response});
}

/// @nodoc
class __$$QuestionResponseImplCopyWithImpl<$Res>
    extends _$QuestionResponseCopyWithImpl<$Res, _$QuestionResponseImpl>
    implements _$$QuestionResponseImplCopyWith<$Res> {
  __$$QuestionResponseImplCopyWithImpl(_$QuestionResponseImpl _value,
      $Res Function(_$QuestionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionCode = freezed,
    Object? response = freezed,
  }) {
    return _then(_$QuestionResponseImpl(
      questionCode: freezed == questionCode
          ? _value.questionCode
          : questionCode // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionResponseImpl implements _QuestionResponse {
  const _$QuestionResponseImpl({this.questionCode, this.response});

  factory _$QuestionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionResponseImplFromJson(json);

  @override
  final int? questionCode;
  @override
  final bool? response;

  @override
  String toString() {
    return 'QuestionResponse(questionCode: $questionCode, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionResponseImpl &&
            (identical(other.questionCode, questionCode) ||
                other.questionCode == questionCode) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questionCode, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionResponseImplCopyWith<_$QuestionResponseImpl> get copyWith =>
      __$$QuestionResponseImplCopyWithImpl<_$QuestionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionResponseImplToJson(
      this,
    );
  }
}

abstract class _QuestionResponse implements QuestionResponse {
  const factory _QuestionResponse(
      {final int? questionCode, final bool? response}) = _$QuestionResponseImpl;

  factory _QuestionResponse.fromJson(Map<String, dynamic> json) =
      _$QuestionResponseImpl.fromJson;

  @override
  int? get questionCode;
  @override
  bool? get response;
  @override
  @JsonKey(ignore: true)
  _$$QuestionResponseImplCopyWith<_$QuestionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Observation _$ObservationFromJson(Map<String, dynamic> json) {
  return _Observation.fromJson(json);
}

/// @nodoc
mixin _$Observation {
  int? get observationCode => throw _privateConstructorUsedError;
  double? get response => throw _privateConstructorUsedError;
  String? get observationIdentifier => throw _privateConstructorUsedError;
  ObservationCode? get observationType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationCopyWith<Observation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationCopyWith<$Res> {
  factory $ObservationCopyWith(
          Observation value, $Res Function(Observation) then) =
      _$ObservationCopyWithImpl<$Res, Observation>;
  @useResult
  $Res call(
      {int? observationCode,
      double? response,
      String? observationIdentifier,
      ObservationCode? observationType});
}

/// @nodoc
class _$ObservationCopyWithImpl<$Res, $Val extends Observation>
    implements $ObservationCopyWith<$Res> {
  _$ObservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationCode = freezed,
    Object? response = freezed,
    Object? observationIdentifier = freezed,
    Object? observationType = freezed,
  }) {
    return _then(_value.copyWith(
      observationCode: freezed == observationCode
          ? _value.observationCode
          : observationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as double?,
      observationIdentifier: freezed == observationIdentifier
          ? _value.observationIdentifier
          : observationIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      observationType: freezed == observationType
          ? _value.observationType
          : observationType // ignore: cast_nullable_to_non_nullable
              as ObservationCode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ObservationImplCopyWith<$Res>
    implements $ObservationCopyWith<$Res> {
  factory _$$ObservationImplCopyWith(
          _$ObservationImpl value, $Res Function(_$ObservationImpl) then) =
      __$$ObservationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? observationCode,
      double? response,
      String? observationIdentifier,
      ObservationCode? observationType});
}

/// @nodoc
class __$$ObservationImplCopyWithImpl<$Res>
    extends _$ObservationCopyWithImpl<$Res, _$ObservationImpl>
    implements _$$ObservationImplCopyWith<$Res> {
  __$$ObservationImplCopyWithImpl(
      _$ObservationImpl _value, $Res Function(_$ObservationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationCode = freezed,
    Object? response = freezed,
    Object? observationIdentifier = freezed,
    Object? observationType = freezed,
  }) {
    return _then(_$ObservationImpl(
      observationCode: freezed == observationCode
          ? _value.observationCode
          : observationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as double?,
      observationIdentifier: freezed == observationIdentifier
          ? _value.observationIdentifier
          : observationIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      observationType: freezed == observationType
          ? _value.observationType
          : observationType // ignore: cast_nullable_to_non_nullable
              as ObservationCode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ObservationImpl implements _Observation {
  const _$ObservationImpl(
      {this.observationCode,
      this.response,
      this.observationIdentifier,
      this.observationType});

  factory _$ObservationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ObservationImplFromJson(json);

  @override
  final int? observationCode;
  @override
  final double? response;
  @override
  final String? observationIdentifier;
  @override
  final ObservationCode? observationType;

  @override
  String toString() {
    return 'Observation(observationCode: $observationCode, response: $response, observationIdentifier: $observationIdentifier, observationType: $observationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObservationImpl &&
            (identical(other.observationCode, observationCode) ||
                other.observationCode == observationCode) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.observationIdentifier, observationIdentifier) ||
                other.observationIdentifier == observationIdentifier) &&
            (identical(other.observationType, observationType) ||
                other.observationType == observationType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, observationCode, response,
      observationIdentifier, observationType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObservationImplCopyWith<_$ObservationImpl> get copyWith =>
      __$$ObservationImplCopyWithImpl<_$ObservationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObservationImplToJson(
      this,
    );
  }
}

abstract class _Observation implements Observation {
  const factory _Observation(
      {final int? observationCode,
      final double? response,
      final String? observationIdentifier,
      final ObservationCode? observationType}) = _$ObservationImpl;

  factory _Observation.fromJson(Map<String, dynamic> json) =
      _$ObservationImpl.fromJson;

  @override
  int? get observationCode;
  @override
  double? get response;
  @override
  String? get observationIdentifier;
  @override
  ObservationCode? get observationType;
  @override
  @JsonKey(ignore: true)
  _$$ObservationImplCopyWith<_$ObservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaCapture _$MediaCaptureFromJson(Map<String, dynamic> json) {
  return _MediaCapture.fromJson(json);
}

/// @nodoc
mixin _$MediaCapture {
  int? get mediaCode => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  String? get fileType => throw _privateConstructorUsedError;
  String? get encodingType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCaptureCopyWith<MediaCapture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCaptureCopyWith<$Res> {
  factory $MediaCaptureCopyWith(
          MediaCapture value, $Res Function(MediaCapture) then) =
      _$MediaCaptureCopyWithImpl<$Res, MediaCapture>;
  @useResult
  $Res call(
      {int? mediaCode,
      String? fileName,
      String? fileType,
      String? encodingType});
}

/// @nodoc
class _$MediaCaptureCopyWithImpl<$Res, $Val extends MediaCapture>
    implements $MediaCaptureCopyWith<$Res> {
  _$MediaCaptureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaCode = freezed,
    Object? fileName = freezed,
    Object? fileType = freezed,
    Object? encodingType = freezed,
  }) {
    return _then(_value.copyWith(
      mediaCode: freezed == mediaCode
          ? _value.mediaCode
          : mediaCode // ignore: cast_nullable_to_non_nullable
              as int?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      encodingType: freezed == encodingType
          ? _value.encodingType
          : encodingType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaCaptureImplCopyWith<$Res>
    implements $MediaCaptureCopyWith<$Res> {
  factory _$$MediaCaptureImplCopyWith(
          _$MediaCaptureImpl value, $Res Function(_$MediaCaptureImpl) then) =
      __$$MediaCaptureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? mediaCode,
      String? fileName,
      String? fileType,
      String? encodingType});
}

/// @nodoc
class __$$MediaCaptureImplCopyWithImpl<$Res>
    extends _$MediaCaptureCopyWithImpl<$Res, _$MediaCaptureImpl>
    implements _$$MediaCaptureImplCopyWith<$Res> {
  __$$MediaCaptureImplCopyWithImpl(
      _$MediaCaptureImpl _value, $Res Function(_$MediaCaptureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaCode = freezed,
    Object? fileName = freezed,
    Object? fileType = freezed,
    Object? encodingType = freezed,
  }) {
    return _then(_$MediaCaptureImpl(
      mediaCode: freezed == mediaCode
          ? _value.mediaCode
          : mediaCode // ignore: cast_nullable_to_non_nullable
              as int?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      encodingType: freezed == encodingType
          ? _value.encodingType
          : encodingType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaCaptureImpl implements _MediaCapture {
  const _$MediaCaptureImpl(
      {this.mediaCode, this.fileName, this.fileType, this.encodingType});

  factory _$MediaCaptureImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaCaptureImplFromJson(json);

  @override
  final int? mediaCode;
  @override
  final String? fileName;
  @override
  final String? fileType;
  @override
  final String? encodingType;

  @override
  String toString() {
    return 'MediaCapture(mediaCode: $mediaCode, fileName: $fileName, fileType: $fileType, encodingType: $encodingType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaCaptureImpl &&
            (identical(other.mediaCode, mediaCode) ||
                other.mediaCode == mediaCode) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.encodingType, encodingType) ||
                other.encodingType == encodingType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mediaCode, fileName, fileType, encodingType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaCaptureImplCopyWith<_$MediaCaptureImpl> get copyWith =>
      __$$MediaCaptureImplCopyWithImpl<_$MediaCaptureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaCaptureImplToJson(
      this,
    );
  }
}

abstract class _MediaCapture implements MediaCapture {
  const factory _MediaCapture(
      {final int? mediaCode,
      final String? fileName,
      final String? fileType,
      final String? encodingType}) = _$MediaCaptureImpl;

  factory _MediaCapture.fromJson(Map<String, dynamic> json) =
      _$MediaCaptureImpl.fromJson;

  @override
  int? get mediaCode;
  @override
  String? get fileName;
  @override
  String? get fileType;
  @override
  String? get encodingType;
  @override
  @JsonKey(ignore: true)
  _$$MediaCaptureImplCopyWith<_$MediaCaptureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
