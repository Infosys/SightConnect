// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage_detailed_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TriageDetailedReportModel _$TriageDetailedReportModelFromJson(
    Map<String, dynamic> json) {
  return _TriageDetailedReportModel.fromJson(json);
}

/// @nodoc
mixin _$TriageDetailedReportModel {
  int? get encounterId => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  int? get tenantCode => throw _privateConstructorUsedError;
  ServiceType? get serviceType => throw _privateConstructorUsedError;
  EncounterStatus? get encounterStatus => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  EncounterPeriod? get encounterPeriod => throw _privateConstructorUsedError;
  int? get diagnosticReportId => throw _privateConstructorUsedError;
  int? get assessmentCode => throw _privateConstructorUsedError;
  String? get assessmentVersion => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get issued => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get userStartDate => throw _privateConstructorUsedError;
  Source? get source => throw _privateConstructorUsedError;
  DiagnosticReportStatus? get status => throw _privateConstructorUsedError;
  String? get sourceVersion => throw _privateConstructorUsedError;
  int? get performerId => throw _privateConstructorUsedError;
  int? get subject => throw _privateConstructorUsedError;
  PerformerRole? get performerRole => throw _privateConstructorUsedError;
  List<IncompleteTestModel>? get incompleteTests =>
      throw _privateConstructorUsedError;
  List<Response>? get responses => throw _privateConstructorUsedError;
  List<Observation>? get observations => throw _privateConstructorUsedError;
  List<Media>? get media => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updateEndTime => throw _privateConstructorUsedError;
  String? get diagnosticReportDescription => throw _privateConstructorUsedError;
  String? get questionResultDescription => throw _privateConstructorUsedError;
  String? get observationResultDescription =>
      throw _privateConstructorUsedError;
  String? get mediaResultDescription => throw _privateConstructorUsedError;
  Severity? get cumulativeSeverity => throw _privateConstructorUsedError;
  Severity? get observationSeverity => throw _privateConstructorUsedError;
  Severity? get mediaSeverity => throw _privateConstructorUsedError;
  Severity? get questionResponseSeverity => throw _privateConstructorUsedError;
  List<CarePlan>? get carePlans => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriageDetailedReportModelCopyWith<TriageDetailedReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriageDetailedReportModelCopyWith<$Res> {
  factory $TriageDetailedReportModelCopyWith(TriageDetailedReportModel value,
          $Res Function(TriageDetailedReportModel) then) =
      _$TriageDetailedReportModelCopyWithImpl<$Res, TriageDetailedReportModel>;
  @useResult
  $Res call(
      {int? encounterId,
      int? organizationCode,
      int? tenantCode,
      ServiceType? serviceType,
      EncounterStatus? encounterStatus,
      String? remarks,
      EncounterPeriod? encounterPeriod,
      int? diagnosticReportId,
      int? assessmentCode,
      String? assessmentVersion,
      @TimestampConverter() DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      DiagnosticReportStatus? status,
      String? sourceVersion,
      int? performerId,
      int? subject,
      PerformerRole? performerRole,
      List<IncompleteTestModel>? incompleteTests,
      List<Response>? responses,
      List<Observation>? observations,
      List<Media>? media,
      @TimestampConverter() DateTime? updateEndTime,
      String? diagnosticReportDescription,
      String? questionResultDescription,
      String? observationResultDescription,
      String? mediaResultDescription,
      Severity? cumulativeSeverity,
      Severity? observationSeverity,
      Severity? mediaSeverity,
      Severity? questionResponseSeverity,
      List<CarePlan>? carePlans});

  $EncounterPeriodCopyWith<$Res>? get encounterPeriod;
}

/// @nodoc
class _$TriageDetailedReportModelCopyWithImpl<$Res,
        $Val extends TriageDetailedReportModel>
    implements $TriageDetailedReportModelCopyWith<$Res> {
  _$TriageDetailedReportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? organizationCode = freezed,
    Object? tenantCode = freezed,
    Object? serviceType = freezed,
    Object? encounterStatus = freezed,
    Object? remarks = freezed,
    Object? encounterPeriod = freezed,
    Object? diagnosticReportId = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? issued = freezed,
    Object? userStartDate = freezed,
    Object? source = freezed,
    Object? status = freezed,
    Object? sourceVersion = freezed,
    Object? performerId = freezed,
    Object? subject = freezed,
    Object? performerRole = freezed,
    Object? incompleteTests = freezed,
    Object? responses = freezed,
    Object? observations = freezed,
    Object? media = freezed,
    Object? updateEndTime = freezed,
    Object? diagnosticReportDescription = freezed,
    Object? questionResultDescription = freezed,
    Object? observationResultDescription = freezed,
    Object? mediaResultDescription = freezed,
    Object? cumulativeSeverity = freezed,
    Object? observationSeverity = freezed,
    Object? mediaSeverity = freezed,
    Object? questionResponseSeverity = freezed,
    Object? carePlans = freezed,
  }) {
    return _then(_value.copyWith(
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantCode: freezed == tenantCode
          ? _value.tenantCode
          : tenantCode // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
      encounterStatus: freezed == encounterStatus
          ? _value.encounterStatus
          : encounterStatus // ignore: cast_nullable_to_non_nullable
              as EncounterStatus?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      encounterPeriod: freezed == encounterPeriod
          ? _value.encounterPeriod
          : encounterPeriod // ignore: cast_nullable_to_non_nullable
              as EncounterPeriod?,
      diagnosticReportId: freezed == diagnosticReportId
          ? _value.diagnosticReportId
          : diagnosticReportId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DiagnosticReportStatus?,
      sourceVersion: freezed == sourceVersion
          ? _value.sourceVersion
          : sourceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      performerId: freezed == performerId
          ? _value.performerId
          : performerId // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as int?,
      performerRole: freezed == performerRole
          ? _value.performerRole
          : performerRole // ignore: cast_nullable_to_non_nullable
              as PerformerRole?,
      incompleteTests: freezed == incompleteTests
          ? _value.incompleteTests
          : incompleteTests // ignore: cast_nullable_to_non_nullable
              as List<IncompleteTestModel>?,
      responses: freezed == responses
          ? _value.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<Response>?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<Observation>?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      updateEndTime: freezed == updateEndTime
          ? _value.updateEndTime
          : updateEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      cumulativeSeverity: freezed == cumulativeSeverity
          ? _value.cumulativeSeverity
          : cumulativeSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      observationSeverity: freezed == observationSeverity
          ? _value.observationSeverity
          : observationSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      mediaSeverity: freezed == mediaSeverity
          ? _value.mediaSeverity
          : mediaSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      questionResponseSeverity: freezed == questionResponseSeverity
          ? _value.questionResponseSeverity
          : questionResponseSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      carePlans: freezed == carePlans
          ? _value.carePlans
          : carePlans // ignore: cast_nullable_to_non_nullable
              as List<CarePlan>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EncounterPeriodCopyWith<$Res>? get encounterPeriod {
    if (_value.encounterPeriod == null) {
      return null;
    }

    return $EncounterPeriodCopyWith<$Res>(_value.encounterPeriod!, (value) {
      return _then(_value.copyWith(encounterPeriod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TriageDetailedReportModelImplCopyWith<$Res>
    implements $TriageDetailedReportModelCopyWith<$Res> {
  factory _$$TriageDetailedReportModelImplCopyWith(
          _$TriageDetailedReportModelImpl value,
          $Res Function(_$TriageDetailedReportModelImpl) then) =
      __$$TriageDetailedReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? encounterId,
      int? organizationCode,
      int? tenantCode,
      ServiceType? serviceType,
      EncounterStatus? encounterStatus,
      String? remarks,
      EncounterPeriod? encounterPeriod,
      int? diagnosticReportId,
      int? assessmentCode,
      String? assessmentVersion,
      @TimestampConverter() DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      DiagnosticReportStatus? status,
      String? sourceVersion,
      int? performerId,
      int? subject,
      PerformerRole? performerRole,
      List<IncompleteTestModel>? incompleteTests,
      List<Response>? responses,
      List<Observation>? observations,
      List<Media>? media,
      @TimestampConverter() DateTime? updateEndTime,
      String? diagnosticReportDescription,
      String? questionResultDescription,
      String? observationResultDescription,
      String? mediaResultDescription,
      Severity? cumulativeSeverity,
      Severity? observationSeverity,
      Severity? mediaSeverity,
      Severity? questionResponseSeverity,
      List<CarePlan>? carePlans});

  @override
  $EncounterPeriodCopyWith<$Res>? get encounterPeriod;
}

/// @nodoc
class __$$TriageDetailedReportModelImplCopyWithImpl<$Res>
    extends _$TriageDetailedReportModelCopyWithImpl<$Res,
        _$TriageDetailedReportModelImpl>
    implements _$$TriageDetailedReportModelImplCopyWith<$Res> {
  __$$TriageDetailedReportModelImplCopyWithImpl(
      _$TriageDetailedReportModelImpl _value,
      $Res Function(_$TriageDetailedReportModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? organizationCode = freezed,
    Object? tenantCode = freezed,
    Object? serviceType = freezed,
    Object? encounterStatus = freezed,
    Object? remarks = freezed,
    Object? encounterPeriod = freezed,
    Object? diagnosticReportId = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? issued = freezed,
    Object? userStartDate = freezed,
    Object? source = freezed,
    Object? status = freezed,
    Object? sourceVersion = freezed,
    Object? performerId = freezed,
    Object? subject = freezed,
    Object? performerRole = freezed,
    Object? incompleteTests = freezed,
    Object? responses = freezed,
    Object? observations = freezed,
    Object? media = freezed,
    Object? updateEndTime = freezed,
    Object? diagnosticReportDescription = freezed,
    Object? questionResultDescription = freezed,
    Object? observationResultDescription = freezed,
    Object? mediaResultDescription = freezed,
    Object? cumulativeSeverity = freezed,
    Object? observationSeverity = freezed,
    Object? mediaSeverity = freezed,
    Object? questionResponseSeverity = freezed,
    Object? carePlans = freezed,
  }) {
    return _then(_$TriageDetailedReportModelImpl(
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantCode: freezed == tenantCode
          ? _value.tenantCode
          : tenantCode // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
      encounterStatus: freezed == encounterStatus
          ? _value.encounterStatus
          : encounterStatus // ignore: cast_nullable_to_non_nullable
              as EncounterStatus?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      encounterPeriod: freezed == encounterPeriod
          ? _value.encounterPeriod
          : encounterPeriod // ignore: cast_nullable_to_non_nullable
              as EncounterPeriod?,
      diagnosticReportId: freezed == diagnosticReportId
          ? _value.diagnosticReportId
          : diagnosticReportId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DiagnosticReportStatus?,
      sourceVersion: freezed == sourceVersion
          ? _value.sourceVersion
          : sourceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      performerId: freezed == performerId
          ? _value.performerId
          : performerId // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as int?,
      performerRole: freezed == performerRole
          ? _value.performerRole
          : performerRole // ignore: cast_nullable_to_non_nullable
              as PerformerRole?,
      incompleteTests: freezed == incompleteTests
          ? _value._incompleteTests
          : incompleteTests // ignore: cast_nullable_to_non_nullable
              as List<IncompleteTestModel>?,
      responses: freezed == responses
          ? _value._responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<Response>?,
      observations: freezed == observations
          ? _value._observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<Observation>?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      updateEndTime: freezed == updateEndTime
          ? _value.updateEndTime
          : updateEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      cumulativeSeverity: freezed == cumulativeSeverity
          ? _value.cumulativeSeverity
          : cumulativeSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      observationSeverity: freezed == observationSeverity
          ? _value.observationSeverity
          : observationSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      mediaSeverity: freezed == mediaSeverity
          ? _value.mediaSeverity
          : mediaSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      questionResponseSeverity: freezed == questionResponseSeverity
          ? _value.questionResponseSeverity
          : questionResponseSeverity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      carePlans: freezed == carePlans
          ? _value._carePlans
          : carePlans // ignore: cast_nullable_to_non_nullable
              as List<CarePlan>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TriageDetailedReportModelImpl implements _TriageDetailedReportModel {
  const _$TriageDetailedReportModelImpl(
      {this.encounterId,
      this.organizationCode,
      this.tenantCode,
      this.serviceType,
      this.encounterStatus,
      this.remarks,
      this.encounterPeriod,
      this.diagnosticReportId,
      this.assessmentCode,
      this.assessmentVersion,
      @TimestampConverter() this.issued,
      @TimestampConverter() this.userStartDate,
      this.source,
      this.status,
      this.sourceVersion,
      this.performerId,
      this.subject,
      this.performerRole,
      final List<IncompleteTestModel>? incompleteTests,
      final List<Response>? responses,
      final List<Observation>? observations,
      final List<Media>? media,
      @TimestampConverter() this.updateEndTime,
      this.diagnosticReportDescription,
      this.questionResultDescription,
      this.observationResultDescription,
      this.mediaResultDescription,
      this.cumulativeSeverity,
      this.observationSeverity,
      this.mediaSeverity,
      this.questionResponseSeverity,
      final List<CarePlan>? carePlans})
      : _incompleteTests = incompleteTests,
        _responses = responses,
        _observations = observations,
        _media = media,
        _carePlans = carePlans;

  factory _$TriageDetailedReportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TriageDetailedReportModelImplFromJson(json);

  @override
  final int? encounterId;
  @override
  final int? organizationCode;
  @override
  final int? tenantCode;
  @override
  final ServiceType? serviceType;
  @override
  final EncounterStatus? encounterStatus;
  @override
  final String? remarks;
  @override
  final EncounterPeriod? encounterPeriod;
  @override
  final int? diagnosticReportId;
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
  final DiagnosticReportStatus? status;
  @override
  final String? sourceVersion;
  @override
  final int? performerId;
  @override
  final int? subject;
  @override
  final PerformerRole? performerRole;
  final List<IncompleteTestModel>? _incompleteTests;
  @override
  List<IncompleteTestModel>? get incompleteTests {
    final value = _incompleteTests;
    if (value == null) return null;
    if (_incompleteTests is EqualUnmodifiableListView) return _incompleteTests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Response>? _responses;
  @override
  List<Response>? get responses {
    final value = _responses;
    if (value == null) return null;
    if (_responses is EqualUnmodifiableListView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Observation>? _observations;
  @override
  List<Observation>? get observations {
    final value = _observations;
    if (value == null) return null;
    if (_observations is EqualUnmodifiableListView) return _observations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Media>? _media;
  @override
  List<Media>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @TimestampConverter()
  final DateTime? updateEndTime;
  @override
  final String? diagnosticReportDescription;
  @override
  final String? questionResultDescription;
  @override
  final String? observationResultDescription;
  @override
  final String? mediaResultDescription;
  @override
  final Severity? cumulativeSeverity;
  @override
  final Severity? observationSeverity;
  @override
  final Severity? mediaSeverity;
  @override
  final Severity? questionResponseSeverity;
  final List<CarePlan>? _carePlans;
  @override
  List<CarePlan>? get carePlans {
    final value = _carePlans;
    if (value == null) return null;
    if (_carePlans is EqualUnmodifiableListView) return _carePlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TriageDetailedReportModel(encounterId: $encounterId, organizationCode: $organizationCode, tenantCode: $tenantCode, serviceType: $serviceType, encounterStatus: $encounterStatus, remarks: $remarks, encounterPeriod: $encounterPeriod, diagnosticReportId: $diagnosticReportId, assessmentCode: $assessmentCode, assessmentVersion: $assessmentVersion, issued: $issued, userStartDate: $userStartDate, source: $source, status: $status, sourceVersion: $sourceVersion, performerId: $performerId, subject: $subject, performerRole: $performerRole, incompleteTests: $incompleteTests, responses: $responses, observations: $observations, media: $media, updateEndTime: $updateEndTime, diagnosticReportDescription: $diagnosticReportDescription, questionResultDescription: $questionResultDescription, observationResultDescription: $observationResultDescription, mediaResultDescription: $mediaResultDescription, cumulativeSeverity: $cumulativeSeverity, observationSeverity: $observationSeverity, mediaSeverity: $mediaSeverity, questionResponseSeverity: $questionResponseSeverity, carePlans: $carePlans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriageDetailedReportModelImpl &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            (identical(other.tenantCode, tenantCode) ||
                other.tenantCode == tenantCode) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.encounterStatus, encounterStatus) ||
                other.encounterStatus == encounterStatus) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.encounterPeriod, encounterPeriod) ||
                other.encounterPeriod == encounterPeriod) &&
            (identical(other.diagnosticReportId, diagnosticReportId) ||
                other.diagnosticReportId == diagnosticReportId) &&
            (identical(other.assessmentCode, assessmentCode) ||
                other.assessmentCode == assessmentCode) &&
            (identical(other.assessmentVersion, assessmentVersion) ||
                other.assessmentVersion == assessmentVersion) &&
            (identical(other.issued, issued) || other.issued == issued) &&
            (identical(other.userStartDate, userStartDate) ||
                other.userStartDate == userStartDate) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sourceVersion, sourceVersion) ||
                other.sourceVersion == sourceVersion) &&
            (identical(other.performerId, performerId) ||
                other.performerId == performerId) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.performerRole, performerRole) ||
                other.performerRole == performerRole) &&
            const DeepCollectionEquality()
                .equals(other._incompleteTests, _incompleteTests) &&
            const DeepCollectionEquality()
                .equals(other._responses, _responses) &&
            const DeepCollectionEquality()
                .equals(other._observations, _observations) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.updateEndTime, updateEndTime) ||
                other.updateEndTime == updateEndTime) &&
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
            (identical(other.cumulativeSeverity, cumulativeSeverity) ||
                other.cumulativeSeverity == cumulativeSeverity) &&
            (identical(other.observationSeverity, observationSeverity) ||
                other.observationSeverity == observationSeverity) &&
            (identical(other.mediaSeverity, mediaSeverity) ||
                other.mediaSeverity == mediaSeverity) &&
            (identical(other.questionResponseSeverity, questionResponseSeverity) ||
                other.questionResponseSeverity == questionResponseSeverity) &&
            const DeepCollectionEquality().equals(other._carePlans, _carePlans));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        encounterId,
        organizationCode,
        tenantCode,
        serviceType,
        encounterStatus,
        remarks,
        encounterPeriod,
        diagnosticReportId,
        assessmentCode,
        assessmentVersion,
        issued,
        userStartDate,
        source,
        status,
        sourceVersion,
        performerId,
        subject,
        performerRole,
        const DeepCollectionEquality().hash(_incompleteTests),
        const DeepCollectionEquality().hash(_responses),
        const DeepCollectionEquality().hash(_observations),
        const DeepCollectionEquality().hash(_media),
        updateEndTime,
        diagnosticReportDescription,
        questionResultDescription,
        observationResultDescription,
        mediaResultDescription,
        cumulativeSeverity,
        observationSeverity,
        mediaSeverity,
        questionResponseSeverity,
        const DeepCollectionEquality().hash(_carePlans)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TriageDetailedReportModelImplCopyWith<_$TriageDetailedReportModelImpl>
      get copyWith => __$$TriageDetailedReportModelImplCopyWithImpl<
          _$TriageDetailedReportModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TriageDetailedReportModelImplToJson(
      this,
    );
  }
}

abstract class _TriageDetailedReportModel implements TriageDetailedReportModel {
  const factory _TriageDetailedReportModel(
      {final int? encounterId,
      final int? organizationCode,
      final int? tenantCode,
      final ServiceType? serviceType,
      final EncounterStatus? encounterStatus,
      final String? remarks,
      final EncounterPeriod? encounterPeriod,
      final int? diagnosticReportId,
      final int? assessmentCode,
      final String? assessmentVersion,
      @TimestampConverter() final DateTime? issued,
      @TimestampConverter() final DateTime? userStartDate,
      final Source? source,
      final DiagnosticReportStatus? status,
      final String? sourceVersion,
      final int? performerId,
      final int? subject,
      final PerformerRole? performerRole,
      final List<IncompleteTestModel>? incompleteTests,
      final List<Response>? responses,
      final List<Observation>? observations,
      final List<Media>? media,
      @TimestampConverter() final DateTime? updateEndTime,
      final String? diagnosticReportDescription,
      final String? questionResultDescription,
      final String? observationResultDescription,
      final String? mediaResultDescription,
      final Severity? cumulativeSeverity,
      final Severity? observationSeverity,
      final Severity? mediaSeverity,
      final Severity? questionResponseSeverity,
      final List<CarePlan>? carePlans}) = _$TriageDetailedReportModelImpl;

  factory _TriageDetailedReportModel.fromJson(Map<String, dynamic> json) =
      _$TriageDetailedReportModelImpl.fromJson;

  @override
  int? get encounterId;
  @override
  int? get organizationCode;
  @override
  int? get tenantCode;
  @override
  ServiceType? get serviceType;
  @override
  EncounterStatus? get encounterStatus;
  @override
  String? get remarks;
  @override
  EncounterPeriod? get encounterPeriod;
  @override
  int? get diagnosticReportId;
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
  DiagnosticReportStatus? get status;
  @override
  String? get sourceVersion;
  @override
  int? get performerId;
  @override
  int? get subject;
  @override
  PerformerRole? get performerRole;
  @override
  List<IncompleteTestModel>? get incompleteTests;
  @override
  List<Response>? get responses;
  @override
  List<Observation>? get observations;
  @override
  List<Media>? get media;
  @override
  @TimestampConverter()
  DateTime? get updateEndTime;
  @override
  String? get diagnosticReportDescription;
  @override
  String? get questionResultDescription;
  @override
  String? get observationResultDescription;
  @override
  String? get mediaResultDescription;
  @override
  Severity? get cumulativeSeverity;
  @override
  Severity? get observationSeverity;
  @override
  Severity? get mediaSeverity;
  @override
  Severity? get questionResponseSeverity;
  @override
  List<CarePlan>? get carePlans;
  @override
  @JsonKey(ignore: true)
  _$$TriageDetailedReportModelImplCopyWith<_$TriageDetailedReportModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EncounterPeriod _$EncounterPeriodFromJson(Map<String, dynamic> json) {
  return _EncounterPeriod.fromJson(json);
}

/// @nodoc
mixin _$EncounterPeriod {
  int get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get start => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncounterPeriodCopyWith<EncounterPeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncounterPeriodCopyWith<$Res> {
  factory $EncounterPeriodCopyWith(
          EncounterPeriod value, $Res Function(EncounterPeriod) then) =
      _$EncounterPeriodCopyWithImpl<$Res, EncounterPeriod>;
  @useResult
  $Res call(
      {int id,
      @TimestampConverter() DateTime? start,
      @TimestampConverter() DateTime? end});
}

/// @nodoc
class _$EncounterPeriodCopyWithImpl<$Res, $Val extends EncounterPeriod>
    implements $EncounterPeriodCopyWith<$Res> {
  _$EncounterPeriodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EncounterPeriodImplCopyWith<$Res>
    implements $EncounterPeriodCopyWith<$Res> {
  factory _$$EncounterPeriodImplCopyWith(_$EncounterPeriodImpl value,
          $Res Function(_$EncounterPeriodImpl) then) =
      __$$EncounterPeriodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @TimestampConverter() DateTime? start,
      @TimestampConverter() DateTime? end});
}

/// @nodoc
class __$$EncounterPeriodImplCopyWithImpl<$Res>
    extends _$EncounterPeriodCopyWithImpl<$Res, _$EncounterPeriodImpl>
    implements _$$EncounterPeriodImplCopyWith<$Res> {
  __$$EncounterPeriodImplCopyWithImpl(
      _$EncounterPeriodImpl _value, $Res Function(_$EncounterPeriodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$EncounterPeriodImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncounterPeriodImpl implements _EncounterPeriod {
  const _$EncounterPeriodImpl(
      {required this.id,
      @TimestampConverter() this.start,
      @TimestampConverter() this.end});

  factory _$EncounterPeriodImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncounterPeriodImplFromJson(json);

  @override
  final int id;
  @override
  @TimestampConverter()
  final DateTime? start;
  @override
  @TimestampConverter()
  final DateTime? end;

  @override
  String toString() {
    return 'EncounterPeriod(id: $id, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncounterPeriodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EncounterPeriodImplCopyWith<_$EncounterPeriodImpl> get copyWith =>
      __$$EncounterPeriodImplCopyWithImpl<_$EncounterPeriodImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncounterPeriodImplToJson(
      this,
    );
  }
}

abstract class _EncounterPeriod implements EncounterPeriod {
  const factory _EncounterPeriod(
      {required final int id,
      @TimestampConverter() final DateTime? start,
      @TimestampConverter() final DateTime? end}) = _$EncounterPeriodImpl;

  factory _EncounterPeriod.fromJson(Map<String, dynamic> json) =
      _$EncounterPeriodImpl.fromJson;

  @override
  int get id;
  @override
  @TimestampConverter()
  DateTime? get start;
  @override
  @TimestampConverter()
  DateTime? get end;
  @override
  @JsonKey(ignore: true)
  _$$EncounterPeriodImplCopyWith<_$EncounterPeriodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IncompleteTestModel _$IncompleteTestModelFromJson(Map<String, dynamic> json) {
  return _IncompleteTestModel.fromJson(json);
}

/// @nodoc
mixin _$IncompleteTestModel {
  int get id => throw _privateConstructorUsedError;
  TestType get testName => throw _privateConstructorUsedError;

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
  $Res call({int id, TestType testName});
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
    Object? id = null,
    Object? testName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      testName: null == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestType,
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
  $Res call({int id, TestType testName});
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
    Object? id = null,
    Object? testName = null,
  }) {
    return _then(_$IncompleteTestModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      testName: null == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IncompleteTestModelImpl implements _IncompleteTestModel {
  const _$IncompleteTestModelImpl({required this.id, required this.testName});

  factory _$IncompleteTestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncompleteTestModelImplFromJson(json);

  @override
  final int id;
  @override
  final TestType testName;

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
      {required final int id,
      required final TestType testName}) = _$IncompleteTestModelImpl;

  factory _IncompleteTestModel.fromJson(Map<String, dynamic> json) =
      _$IncompleteTestModelImpl.fromJson;

  @override
  int get id;
  @override
  TestType get testName;
  @override
  @JsonKey(ignore: true)
  _$$IncompleteTestModelImplCopyWith<_$IncompleteTestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
mixin _$Answer {
  int get id => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  int? get answerCode => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res, Answer>;
  @useResult
  $Res call({int id, double score, int? answerCode, String value});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res, $Val extends Answer>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? score = null,
    Object? answerCode = freezed,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      answerCode: freezed == answerCode
          ? _value.answerCode
          : answerCode // ignore: cast_nullable_to_non_nullable
              as int?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerImplCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$AnswerImplCopyWith(
          _$AnswerImpl value, $Res Function(_$AnswerImpl) then) =
      __$$AnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, double score, int? answerCode, String value});
}

/// @nodoc
class __$$AnswerImplCopyWithImpl<$Res>
    extends _$AnswerCopyWithImpl<$Res, _$AnswerImpl>
    implements _$$AnswerImplCopyWith<$Res> {
  __$$AnswerImplCopyWithImpl(
      _$AnswerImpl _value, $Res Function(_$AnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? score = null,
    Object? answerCode = freezed,
    Object? value = null,
  }) {
    return _then(_$AnswerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      answerCode: freezed == answerCode
          ? _value.answerCode
          : answerCode // ignore: cast_nullable_to_non_nullable
              as int?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerImpl implements _Answer {
  const _$AnswerImpl(
      {required this.id,
      required this.score,
      this.answerCode,
      required this.value});

  factory _$AnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerImplFromJson(json);

  @override
  final int id;
  @override
  final double score;
  @override
  final int? answerCode;
  @override
  final String value;

  @override
  String toString() {
    return 'Answer(id: $id, score: $score, answerCode: $answerCode, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.answerCode, answerCode) ||
                other.answerCode == answerCode) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, score, answerCode, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      __$$AnswerImplCopyWithImpl<_$AnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerImplToJson(
      this,
    );
  }
}

abstract class _Answer implements Answer {
  const factory _Answer(
      {required final int id,
      required final double score,
      final int? answerCode,
      required final String value}) = _$AnswerImpl;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$AnswerImpl.fromJson;

  @override
  int get id;
  @override
  double get score;
  @override
  int? get answerCode;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return _Response.fromJson(json);
}

/// @nodoc
mixin _$Response {
  int get id => throw _privateConstructorUsedError;
  int get linkId => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  List<Answer>? get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCopyWith<Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res, Response>;
  @useResult
  $Res call({int id, int linkId, double score, List<Answer>? answers});
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res, $Val extends Response>
    implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? linkId = null,
    Object? score = null,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      linkId: null == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseImplCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory _$$ResponseImplCopyWith(
          _$ResponseImpl value, $Res Function(_$ResponseImpl) then) =
      __$$ResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int linkId, double score, List<Answer>? answers});
}

/// @nodoc
class __$$ResponseImplCopyWithImpl<$Res>
    extends _$ResponseCopyWithImpl<$Res, _$ResponseImpl>
    implements _$$ResponseImplCopyWith<$Res> {
  __$$ResponseImplCopyWithImpl(
      _$ResponseImpl _value, $Res Function(_$ResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? linkId = null,
    Object? score = null,
    Object? answers = freezed,
  }) {
    return _then(_$ResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      linkId: null == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseImpl implements _Response {
  const _$ResponseImpl(
      {required this.id,
      required this.linkId,
      required this.score,
      final List<Answer>? answers})
      : _answers = answers;

  factory _$ResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int linkId;
  @override
  final double score;
  final List<Answer>? _answers;
  @override
  List<Answer>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Response(id: $id, linkId: $linkId, score: $score, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseImpl &&
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
  _$$ResponseImplCopyWith<_$ResponseImpl> get copyWith =>
      __$$ResponseImplCopyWithImpl<_$ResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseImplToJson(
      this,
    );
  }
}

abstract class _Response implements Response {
  const factory _Response(
      {required final int id,
      required final int linkId,
      required final double score,
      final List<Answer>? answers}) = _$ResponseImpl;

  factory _Response.fromJson(Map<String, dynamic> json) =
      _$ResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get linkId;
  @override
  double get score;
  @override
  List<Answer>? get answers;
  @override
  @JsonKey(ignore: true)
  _$$ResponseImplCopyWith<_$ResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Observation _$ObservationFromJson(Map<String, dynamic> json) {
  return _Observation.fromJson(json);
}

/// @nodoc
mixin _$Observation {
  int get id => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

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
  $Res call({int id, int? identifier, String? value, double? score});
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
    Object? id = null,
    Object? identifier = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$ObservationImplCopyWith<$Res>
    implements $ObservationCopyWith<$Res> {
  factory _$$ObservationImplCopyWith(
          _$ObservationImpl value, $Res Function(_$ObservationImpl) then) =
      __$$ObservationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int? identifier, String? value, double? score});
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
    Object? id = null,
    Object? identifier = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_$ObservationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$ObservationImpl implements _Observation {
  const _$ObservationImpl(
      {required this.id, this.identifier, this.value, this.score});

  factory _$ObservationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ObservationImplFromJson(json);

  @override
  final int id;
  @override
  final int? identifier;
  @override
  final String? value;
  @override
  final double? score;

  @override
  String toString() {
    return 'Observation(id: $id, identifier: $identifier, value: $value, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObservationImpl &&
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
      {required final int id,
      final int? identifier,
      final String? value,
      final double? score}) = _$ObservationImpl;

  factory _Observation.fromJson(Map<String, dynamic> json) =
      _$ObservationImpl.fromJson;

  @override
  int get id;
  @override
  int? get identifier;
  @override
  String? get value;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$ObservationImplCopyWith<_$ObservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  int get id => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;
  String? get baseUrl => throw _privateConstructorUsedError;
  String? get endpoint => throw _privateConstructorUsedError;
  BodySite? get bodySite => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  String? get fileId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {int id,
      int? identifier,
      String? baseUrl,
      String? endpoint,
      BodySite? bodySite,
      double? score,
      String? fileId});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? identifier = freezed,
    Object? baseUrl = freezed,
    Object? endpoint = freezed,
    Object? bodySite = freezed,
    Object? score = freezed,
    Object? fileId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
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
abstract class _$$MediaImplCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$MediaImplCopyWith(
          _$MediaImpl value, $Res Function(_$MediaImpl) then) =
      __$$MediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? identifier,
      String? baseUrl,
      String? endpoint,
      BodySite? bodySite,
      double? score,
      String? fileId});
}

/// @nodoc
class __$$MediaImplCopyWithImpl<$Res>
    extends _$MediaCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
      _$MediaImpl _value, $Res Function(_$MediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? identifier = freezed,
    Object? baseUrl = freezed,
    Object? endpoint = freezed,
    Object? bodySite = freezed,
    Object? score = freezed,
    Object? fileId = freezed,
  }) {
    return _then(_$MediaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
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
class _$MediaImpl implements _Media {
  const _$MediaImpl(
      {required this.id,
      this.identifier,
      this.baseUrl,
      this.endpoint,
      this.bodySite,
      this.score,
      this.fileId});

  factory _$MediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaImplFromJson(json);

  @override
  final int id;
  @override
  final int? identifier;
  @override
  final String? baseUrl;
  @override
  final String? endpoint;
  @override
  final BodySite? bodySite;
  @override
  final double? score;
  @override
  final String? fileId;

  @override
  String toString() {
    return 'Media(id: $id, identifier: $identifier, baseUrl: $baseUrl, endpoint: $endpoint, bodySite: $bodySite, score: $score, fileId: $fileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.bodySite, bodySite) ||
                other.bodySite == bodySite) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, identifier, baseUrl, endpoint, bodySite, score, fileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      __$$MediaImplCopyWithImpl<_$MediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaImplToJson(
      this,
    );
  }
}

abstract class _Media implements Media {
  const factory _Media(
      {required final int id,
      final int? identifier,
      final String? baseUrl,
      final String? endpoint,
      final BodySite? bodySite,
      final double? score,
      final String? fileId}) = _$MediaImpl;

  factory _Media.fromJson(Map<String, dynamic> json) = _$MediaImpl.fromJson;

  @override
  int get id;
  @override
  int? get identifier;
  @override
  String? get baseUrl;
  @override
  String? get endpoint;
  @override
  BodySite? get bodySite;
  @override
  double? get score;
  @override
  String? get fileId;
  @override
  @JsonKey(ignore: true)
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarePlan _$CarePlanFromJson(Map<String, dynamic> json) {
  return _CarePlan.fromJson(json);
}

/// @nodoc
mixin _$CarePlan {
  int get carePlanId => throw _privateConstructorUsedError;
  RequestStatus? get carePlanStatus => throw _privateConstructorUsedError;
  CarePlanCategory? get category => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get subject => throw _privateConstructorUsedError; //patient id
  @TimestampConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  EncounterPeriod? get period => throw _privateConstructorUsedError;
  List<Condition>? get conditions => throw _privateConstructorUsedError;
  List<Activity>? get activities => throw _privateConstructorUsedError;
  List<Goal>? get goals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarePlanCopyWith<CarePlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarePlanCopyWith<$Res> {
  factory $CarePlanCopyWith(CarePlan value, $Res Function(CarePlan) then) =
      _$CarePlanCopyWithImpl<$Res, CarePlan>;
  @useResult
  $Res call(
      {int carePlanId,
      RequestStatus? carePlanStatus,
      CarePlanCategory? category,
      String? title,
      String? description,
      int? subject,
      @TimestampConverter() DateTime? created,
      String? note,
      EncounterPeriod? period,
      List<Condition>? conditions,
      List<Activity>? activities,
      List<Goal>? goals});

  $EncounterPeriodCopyWith<$Res>? get period;
}

/// @nodoc
class _$CarePlanCopyWithImpl<$Res, $Val extends CarePlan>
    implements $CarePlanCopyWith<$Res> {
  _$CarePlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carePlanId = null,
    Object? carePlanStatus = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? subject = freezed,
    Object? created = freezed,
    Object? note = freezed,
    Object? period = freezed,
    Object? conditions = freezed,
    Object? activities = freezed,
    Object? goals = freezed,
  }) {
    return _then(_value.copyWith(
      carePlanId: null == carePlanId
          ? _value.carePlanId
          : carePlanId // ignore: cast_nullable_to_non_nullable
              as int,
      carePlanStatus: freezed == carePlanStatus
          ? _value.carePlanStatus
          : carePlanStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CarePlanCategory?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as int?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as EncounterPeriod?,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>?,
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<Goal>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EncounterPeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $EncounterPeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarePlanImplCopyWith<$Res>
    implements $CarePlanCopyWith<$Res> {
  factory _$$CarePlanImplCopyWith(
          _$CarePlanImpl value, $Res Function(_$CarePlanImpl) then) =
      __$$CarePlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int carePlanId,
      RequestStatus? carePlanStatus,
      CarePlanCategory? category,
      String? title,
      String? description,
      int? subject,
      @TimestampConverter() DateTime? created,
      String? note,
      EncounterPeriod? period,
      List<Condition>? conditions,
      List<Activity>? activities,
      List<Goal>? goals});

  @override
  $EncounterPeriodCopyWith<$Res>? get period;
}

/// @nodoc
class __$$CarePlanImplCopyWithImpl<$Res>
    extends _$CarePlanCopyWithImpl<$Res, _$CarePlanImpl>
    implements _$$CarePlanImplCopyWith<$Res> {
  __$$CarePlanImplCopyWithImpl(
      _$CarePlanImpl _value, $Res Function(_$CarePlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carePlanId = null,
    Object? carePlanStatus = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? subject = freezed,
    Object? created = freezed,
    Object? note = freezed,
    Object? period = freezed,
    Object? conditions = freezed,
    Object? activities = freezed,
    Object? goals = freezed,
  }) {
    return _then(_$CarePlanImpl(
      carePlanId: null == carePlanId
          ? _value.carePlanId
          : carePlanId // ignore: cast_nullable_to_non_nullable
              as int,
      carePlanStatus: freezed == carePlanStatus
          ? _value.carePlanStatus
          : carePlanStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CarePlanCategory?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as int?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as EncounterPeriod?,
      conditions: freezed == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>?,
      activities: freezed == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>?,
      goals: freezed == goals
          ? _value._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<Goal>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarePlanImpl implements _CarePlan {
  const _$CarePlanImpl(
      {required this.carePlanId,
      this.carePlanStatus,
      this.category,
      this.title,
      this.description,
      this.subject,
      @TimestampConverter() this.created,
      this.note,
      this.period,
      final List<Condition>? conditions,
      final List<Activity>? activities,
      final List<Goal>? goals})
      : _conditions = conditions,
        _activities = activities,
        _goals = goals;

  factory _$CarePlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarePlanImplFromJson(json);

  @override
  final int carePlanId;
  @override
  final RequestStatus? carePlanStatus;
  @override
  final CarePlanCategory? category;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? subject;
//patient id
  @override
  @TimestampConverter()
  final DateTime? created;
  @override
  final String? note;
  @override
  final EncounterPeriod? period;
  final List<Condition>? _conditions;
  @override
  List<Condition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Activity>? _activities;
  @override
  List<Activity>? get activities {
    final value = _activities;
    if (value == null) return null;
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Goal>? _goals;
  @override
  List<Goal>? get goals {
    final value = _goals;
    if (value == null) return null;
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CarePlan(carePlanId: $carePlanId, carePlanStatus: $carePlanStatus, category: $category, title: $title, description: $description, subject: $subject, created: $created, note: $note, period: $period, conditions: $conditions, activities: $activities, goals: $goals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarePlanImpl &&
            (identical(other.carePlanId, carePlanId) ||
                other.carePlanId == carePlanId) &&
            (identical(other.carePlanStatus, carePlanStatus) ||
                other.carePlanStatus == carePlanStatus) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.period, period) || other.period == period) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            const DeepCollectionEquality().equals(other._goals, _goals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      carePlanId,
      carePlanStatus,
      category,
      title,
      description,
      subject,
      created,
      note,
      period,
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_activities),
      const DeepCollectionEquality().hash(_goals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarePlanImplCopyWith<_$CarePlanImpl> get copyWith =>
      __$$CarePlanImplCopyWithImpl<_$CarePlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarePlanImplToJson(
      this,
    );
  }
}

abstract class _CarePlan implements CarePlan {
  const factory _CarePlan(
      {required final int carePlanId,
      final RequestStatus? carePlanStatus,
      final CarePlanCategory? category,
      final String? title,
      final String? description,
      final int? subject,
      @TimestampConverter() final DateTime? created,
      final String? note,
      final EncounterPeriod? period,
      final List<Condition>? conditions,
      final List<Activity>? activities,
      final List<Goal>? goals}) = _$CarePlanImpl;

  factory _CarePlan.fromJson(Map<String, dynamic> json) =
      _$CarePlanImpl.fromJson;

  @override
  int get carePlanId;
  @override
  RequestStatus? get carePlanStatus;
  @override
  CarePlanCategory? get category;
  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get subject;
  @override //patient id
  @TimestampConverter()
  DateTime? get created;
  @override
  String? get note;
  @override
  EncounterPeriod? get period;
  @override
  List<Condition>? get conditions;
  @override
  List<Activity>? get activities;
  @override
  List<Goal>? get goals;
  @override
  @JsonKey(ignore: true)
  _$$CarePlanImplCopyWith<_$CarePlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return _Condition.fromJson(json);
}

/// @nodoc
mixin _$Condition {
  int? get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get recordedDate => throw _privateConstructorUsedError;
  BodySite? get bodySite => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionCopyWith<Condition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionCopyWith<$Res> {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) then) =
      _$ConditionCopyWithImpl<$Res, Condition>;
  @useResult
  $Res call(
      {int? id,
      @TimestampConverter() DateTime? recordedDate,
      BodySite? bodySite,
      String? code,
      String? note});
}

/// @nodoc
class _$ConditionCopyWithImpl<$Res, $Val extends Condition>
    implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? recordedDate = freezed,
    Object? bodySite = freezed,
    Object? code = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      recordedDate: freezed == recordedDate
          ? _value.recordedDate
          : recordedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionImplCopyWith<$Res>
    implements $ConditionCopyWith<$Res> {
  factory _$$ConditionImplCopyWith(
          _$ConditionImpl value, $Res Function(_$ConditionImpl) then) =
      __$$ConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @TimestampConverter() DateTime? recordedDate,
      BodySite? bodySite,
      String? code,
      String? note});
}

/// @nodoc
class __$$ConditionImplCopyWithImpl<$Res>
    extends _$ConditionCopyWithImpl<$Res, _$ConditionImpl>
    implements _$$ConditionImplCopyWith<$Res> {
  __$$ConditionImplCopyWithImpl(
      _$ConditionImpl _value, $Res Function(_$ConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? recordedDate = freezed,
    Object? bodySite = freezed,
    Object? code = freezed,
    Object? note = freezed,
  }) {
    return _then(_$ConditionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      recordedDate: freezed == recordedDate
          ? _value.recordedDate
          : recordedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionImpl implements _Condition {
  const _$ConditionImpl(
      {this.id,
      @TimestampConverter() this.recordedDate,
      this.bodySite,
      this.code,
      this.note});

  factory _$ConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionImplFromJson(json);

  @override
  final int? id;
  @override
  @TimestampConverter()
  final DateTime? recordedDate;
  @override
  final BodySite? bodySite;
  @override
  final String? code;
  @override
  final String? note;

  @override
  String toString() {
    return 'Condition(id: $id, recordedDate: $recordedDate, bodySite: $bodySite, code: $code, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recordedDate, recordedDate) ||
                other.recordedDate == recordedDate) &&
            (identical(other.bodySite, bodySite) ||
                other.bodySite == bodySite) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, recordedDate, bodySite, code, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      __$$ConditionImplCopyWithImpl<_$ConditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionImplToJson(
      this,
    );
  }
}

abstract class _Condition implements Condition {
  const factory _Condition(
      {final int? id,
      @TimestampConverter() final DateTime? recordedDate,
      final BodySite? bodySite,
      final String? code,
      final String? note}) = _$ConditionImpl;

  factory _Condition.fromJson(Map<String, dynamic> json) =
      _$ConditionImpl.fromJson;

  @override
  int? get id;
  @override
  @TimestampConverter()
  DateTime? get recordedDate;
  @override
  BodySite? get bodySite;
  @override
  String? get code;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return _Activity.fromJson(json);
}

/// @nodoc
mixin _$Activity {
  int? get id => throw _privateConstructorUsedError;
  String? get progress => throw _privateConstructorUsedError;
  PlannedActivityReference? get plannedActivityReference =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res, Activity>;
  @useResult
  $Res call(
      {int? id,
      String? progress,
      PlannedActivityReference? plannedActivityReference});

  $PlannedActivityReferenceCopyWith<$Res>? get plannedActivityReference;
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res, $Val extends Activity>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? progress = freezed,
    Object? plannedActivityReference = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as String?,
      plannedActivityReference: freezed == plannedActivityReference
          ? _value.plannedActivityReference
          : plannedActivityReference // ignore: cast_nullable_to_non_nullable
              as PlannedActivityReference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlannedActivityReferenceCopyWith<$Res>? get plannedActivityReference {
    if (_value.plannedActivityReference == null) {
      return null;
    }

    return $PlannedActivityReferenceCopyWith<$Res>(
        _value.plannedActivityReference!, (value) {
      return _then(_value.copyWith(plannedActivityReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityImplCopyWith<$Res>
    implements $ActivityCopyWith<$Res> {
  factory _$$ActivityImplCopyWith(
          _$ActivityImpl value, $Res Function(_$ActivityImpl) then) =
      __$$ActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? progress,
      PlannedActivityReference? plannedActivityReference});

  @override
  $PlannedActivityReferenceCopyWith<$Res>? get plannedActivityReference;
}

/// @nodoc
class __$$ActivityImplCopyWithImpl<$Res>
    extends _$ActivityCopyWithImpl<$Res, _$ActivityImpl>
    implements _$$ActivityImplCopyWith<$Res> {
  __$$ActivityImplCopyWithImpl(
      _$ActivityImpl _value, $Res Function(_$ActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? progress = freezed,
    Object? plannedActivityReference = freezed,
  }) {
    return _then(_$ActivityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as String?,
      plannedActivityReference: freezed == plannedActivityReference
          ? _value.plannedActivityReference
          : plannedActivityReference // ignore: cast_nullable_to_non_nullable
              as PlannedActivityReference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityImpl implements _Activity {
  const _$ActivityImpl({this.id, this.progress, this.plannedActivityReference});

  factory _$ActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? progress;
  @override
  final PlannedActivityReference? plannedActivityReference;

  @override
  String toString() {
    return 'Activity(id: $id, progress: $progress, plannedActivityReference: $plannedActivityReference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(
                    other.plannedActivityReference, plannedActivityReference) ||
                other.plannedActivityReference == plannedActivityReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, progress, plannedActivityReference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      __$$ActivityImplCopyWithImpl<_$ActivityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityImplToJson(
      this,
    );
  }
}

abstract class _Activity implements Activity {
  const factory _Activity(
          {final int? id,
          final String? progress,
          final PlannedActivityReference? plannedActivityReference}) =
      _$ActivityImpl;

  factory _Activity.fromJson(Map<String, dynamic> json) =
      _$ActivityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get progress;
  @override
  PlannedActivityReference? get plannedActivityReference;
  @override
  @JsonKey(ignore: true)
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlannedActivityReference _$PlannedActivityReferenceFromJson(
    Map<String, dynamic> json) {
  return _PlannedActivityReference.fromJson(json);
}

/// @nodoc
mixin _$PlannedActivityReference {
  int? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  ServiceRequest? get serviceRequest => throw _privateConstructorUsedError;
  Communication? get communication => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlannedActivityReferenceCopyWith<PlannedActivityReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlannedActivityReferenceCopyWith<$Res> {
  factory $PlannedActivityReferenceCopyWith(PlannedActivityReference value,
          $Res Function(PlannedActivityReference) then) =
      _$PlannedActivityReferenceCopyWithImpl<$Res, PlannedActivityReference>;
  @useResult
  $Res call(
      {int? id,
      String? type,
      ServiceRequest? serviceRequest,
      Communication? communication});

  $ServiceRequestCopyWith<$Res>? get serviceRequest;
  $CommunicationCopyWith<$Res>? get communication;
}

/// @nodoc
class _$PlannedActivityReferenceCopyWithImpl<$Res,
        $Val extends PlannedActivityReference>
    implements $PlannedActivityReferenceCopyWith<$Res> {
  _$PlannedActivityReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? serviceRequest = freezed,
    Object? communication = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceRequest: freezed == serviceRequest
          ? _value.serviceRequest
          : serviceRequest // ignore: cast_nullable_to_non_nullable
              as ServiceRequest?,
      communication: freezed == communication
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as Communication?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceRequestCopyWith<$Res>? get serviceRequest {
    if (_value.serviceRequest == null) {
      return null;
    }

    return $ServiceRequestCopyWith<$Res>(_value.serviceRequest!, (value) {
      return _then(_value.copyWith(serviceRequest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommunicationCopyWith<$Res>? get communication {
    if (_value.communication == null) {
      return null;
    }

    return $CommunicationCopyWith<$Res>(_value.communication!, (value) {
      return _then(_value.copyWith(communication: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlannedActivityReferenceImplCopyWith<$Res>
    implements $PlannedActivityReferenceCopyWith<$Res> {
  factory _$$PlannedActivityReferenceImplCopyWith(
          _$PlannedActivityReferenceImpl value,
          $Res Function(_$PlannedActivityReferenceImpl) then) =
      __$$PlannedActivityReferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? type,
      ServiceRequest? serviceRequest,
      Communication? communication});

  @override
  $ServiceRequestCopyWith<$Res>? get serviceRequest;
  @override
  $CommunicationCopyWith<$Res>? get communication;
}

/// @nodoc
class __$$PlannedActivityReferenceImplCopyWithImpl<$Res>
    extends _$PlannedActivityReferenceCopyWithImpl<$Res,
        _$PlannedActivityReferenceImpl>
    implements _$$PlannedActivityReferenceImplCopyWith<$Res> {
  __$$PlannedActivityReferenceImplCopyWithImpl(
      _$PlannedActivityReferenceImpl _value,
      $Res Function(_$PlannedActivityReferenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? serviceRequest = freezed,
    Object? communication = freezed,
  }) {
    return _then(_$PlannedActivityReferenceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceRequest: freezed == serviceRequest
          ? _value.serviceRequest
          : serviceRequest // ignore: cast_nullable_to_non_nullable
              as ServiceRequest?,
      communication: freezed == communication
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as Communication?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlannedActivityReferenceImpl implements _PlannedActivityReference {
  const _$PlannedActivityReferenceImpl(
      {this.id, this.type, this.serviceRequest, this.communication});

  factory _$PlannedActivityReferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlannedActivityReferenceImplFromJson(json);

  @override
  final int? id;
  @override
  final String? type;
  @override
  final ServiceRequest? serviceRequest;
  @override
  final Communication? communication;

  @override
  String toString() {
    return 'PlannedActivityReference(id: $id, type: $type, serviceRequest: $serviceRequest, communication: $communication)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlannedActivityReferenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.serviceRequest, serviceRequest) ||
                other.serviceRequest == serviceRequest) &&
            (identical(other.communication, communication) ||
                other.communication == communication));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, serviceRequest, communication);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlannedActivityReferenceImplCopyWith<_$PlannedActivityReferenceImpl>
      get copyWith => __$$PlannedActivityReferenceImplCopyWithImpl<
          _$PlannedActivityReferenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlannedActivityReferenceImplToJson(
      this,
    );
  }
}

abstract class _PlannedActivityReference implements PlannedActivityReference {
  const factory _PlannedActivityReference(
      {final int? id,
      final String? type,
      final ServiceRequest? serviceRequest,
      final Communication? communication}) = _$PlannedActivityReferenceImpl;

  factory _PlannedActivityReference.fromJson(Map<String, dynamic> json) =
      _$PlannedActivityReferenceImpl.fromJson;

  @override
  int? get id;
  @override
  String? get type;
  @override
  ServiceRequest? get serviceRequest;
  @override
  Communication? get communication;
  @override
  @JsonKey(ignore: true)
  _$$PlannedActivityReferenceImplCopyWith<_$PlannedActivityReferenceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServiceRequest _$ServiceRequestFromJson(Map<String, dynamic> json) {
  return _ServiceRequest.fromJson(json);
}

/// @nodoc
mixin _$ServiceRequest {
  int? get id => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get patientInstruction => throw _privateConstructorUsedError;
  BodySite? get bodySite => throw _privateConstructorUsedError;
  RequestPriority? get priority => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceRequestCopyWith<ServiceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestCopyWith<$Res> {
  factory $ServiceRequestCopyWith(
          ServiceRequest value, $Res Function(ServiceRequest) then) =
      _$ServiceRequestCopyWithImpl<$Res, ServiceRequest>;
  @useResult
  $Res call(
      {int? id,
      int? identifier,
      String? note,
      String? patientInstruction,
      BodySite? bodySite,
      RequestPriority? priority});
}

/// @nodoc
class _$ServiceRequestCopyWithImpl<$Res, $Val extends ServiceRequest>
    implements $ServiceRequestCopyWith<$Res> {
  _$ServiceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? note = freezed,
    Object? patientInstruction = freezed,
    Object? bodySite = freezed,
    Object? priority = freezed,
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      patientInstruction: freezed == patientInstruction
          ? _value.patientInstruction
          : patientInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as RequestPriority?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceRequestImplCopyWith<$Res>
    implements $ServiceRequestCopyWith<$Res> {
  factory _$$ServiceRequestImplCopyWith(_$ServiceRequestImpl value,
          $Res Function(_$ServiceRequestImpl) then) =
      __$$ServiceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? identifier,
      String? note,
      String? patientInstruction,
      BodySite? bodySite,
      RequestPriority? priority});
}

/// @nodoc
class __$$ServiceRequestImplCopyWithImpl<$Res>
    extends _$ServiceRequestCopyWithImpl<$Res, _$ServiceRequestImpl>
    implements _$$ServiceRequestImplCopyWith<$Res> {
  __$$ServiceRequestImplCopyWithImpl(
      _$ServiceRequestImpl _value, $Res Function(_$ServiceRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? note = freezed,
    Object? patientInstruction = freezed,
    Object? bodySite = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$ServiceRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      patientInstruction: freezed == patientInstruction
          ? _value.patientInstruction
          : patientInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as RequestPriority?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceRequestImpl implements _ServiceRequest {
  const _$ServiceRequestImpl(
      {this.id,
      this.identifier,
      this.note,
      this.patientInstruction,
      this.bodySite,
      this.priority});

  factory _$ServiceRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceRequestImplFromJson(json);

  @override
  final int? id;
  @override
  final int? identifier;
  @override
  final String? note;
  @override
  final String? patientInstruction;
  @override
  final BodySite? bodySite;
  @override
  final RequestPriority? priority;

  @override
  String toString() {
    return 'ServiceRequest(id: $id, identifier: $identifier, note: $note, patientInstruction: $patientInstruction, bodySite: $bodySite, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.patientInstruction, patientInstruction) ||
                other.patientInstruction == patientInstruction) &&
            (identical(other.bodySite, bodySite) ||
                other.bodySite == bodySite) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, identifier, note,
      patientInstruction, bodySite, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceRequestImplCopyWith<_$ServiceRequestImpl> get copyWith =>
      __$$ServiceRequestImplCopyWithImpl<_$ServiceRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceRequestImplToJson(
      this,
    );
  }
}

abstract class _ServiceRequest implements ServiceRequest {
  const factory _ServiceRequest(
      {final int? id,
      final int? identifier,
      final String? note,
      final String? patientInstruction,
      final BodySite? bodySite,
      final RequestPriority? priority}) = _$ServiceRequestImpl;

  factory _ServiceRequest.fromJson(Map<String, dynamic> json) =
      _$ServiceRequestImpl.fromJson;

  @override
  int? get id;
  @override
  int? get identifier;
  @override
  String? get note;
  @override
  String? get patientInstruction;
  @override
  BodySite? get bodySite;
  @override
  RequestPriority? get priority;
  @override
  @JsonKey(ignore: true)
  _$$ServiceRequestImplCopyWith<_$ServiceRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Communication _$CommunicationFromJson(Map<String, dynamic> json) {
  return _Communication.fromJson(json);
}

/// @nodoc
mixin _$Communication {
  int? get id => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;
  dynamic get statusReason => throw _privateConstructorUsedError;
  dynamic get category => throw _privateConstructorUsedError;
  dynamic get priority => throw _privateConstructorUsedError;
  dynamic get doNotPerform => throw _privateConstructorUsedError;
  dynamic get medium => throw _privateConstructorUsedError;
  dynamic get subject => throw _privateConstructorUsedError;
  dynamic get about => throw _privateConstructorUsedError;
  dynamic get authoredOn => throw _privateConstructorUsedError;
  dynamic get reason => throw _privateConstructorUsedError;
  dynamic get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunicationCopyWith<Communication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunicationCopyWith<$Res> {
  factory $CommunicationCopyWith(
          Communication value, $Res Function(Communication) then) =
      _$CommunicationCopyWithImpl<$Res, Communication>;
  @useResult
  $Res call(
      {int? id,
      dynamic status,
      dynamic statusReason,
      dynamic category,
      dynamic priority,
      dynamic doNotPerform,
      dynamic medium,
      dynamic subject,
      dynamic about,
      dynamic authoredOn,
      dynamic reason,
      dynamic note});
}

/// @nodoc
class _$CommunicationCopyWithImpl<$Res, $Val extends Communication>
    implements $CommunicationCopyWith<$Res> {
  _$CommunicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? statusReason = freezed,
    Object? category = freezed,
    Object? priority = freezed,
    Object? doNotPerform = freezed,
    Object? medium = freezed,
    Object? subject = freezed,
    Object? about = freezed,
    Object? authoredOn = freezed,
    Object? reason = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as dynamic,
      doNotPerform: freezed == doNotPerform
          ? _value.doNotPerform
          : doNotPerform // ignore: cast_nullable_to_non_nullable
              as dynamic,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as dynamic,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as dynamic,
      authoredOn: freezed == authoredOn
          ? _value.authoredOn
          : authoredOn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunicationImplCopyWith<$Res>
    implements $CommunicationCopyWith<$Res> {
  factory _$$CommunicationImplCopyWith(
          _$CommunicationImpl value, $Res Function(_$CommunicationImpl) then) =
      __$$CommunicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      dynamic status,
      dynamic statusReason,
      dynamic category,
      dynamic priority,
      dynamic doNotPerform,
      dynamic medium,
      dynamic subject,
      dynamic about,
      dynamic authoredOn,
      dynamic reason,
      dynamic note});
}

/// @nodoc
class __$$CommunicationImplCopyWithImpl<$Res>
    extends _$CommunicationCopyWithImpl<$Res, _$CommunicationImpl>
    implements _$$CommunicationImplCopyWith<$Res> {
  __$$CommunicationImplCopyWithImpl(
      _$CommunicationImpl _value, $Res Function(_$CommunicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? statusReason = freezed,
    Object? category = freezed,
    Object? priority = freezed,
    Object? doNotPerform = freezed,
    Object? medium = freezed,
    Object? subject = freezed,
    Object? about = freezed,
    Object? authoredOn = freezed,
    Object? reason = freezed,
    Object? note = freezed,
  }) {
    return _then(_$CommunicationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as dynamic,
      doNotPerform: freezed == doNotPerform
          ? _value.doNotPerform
          : doNotPerform // ignore: cast_nullable_to_non_nullable
              as dynamic,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as dynamic,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as dynamic,
      authoredOn: freezed == authoredOn
          ? _value.authoredOn
          : authoredOn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunicationImpl implements _Communication {
  const _$CommunicationImpl(
      {this.id,
      this.status,
      this.statusReason,
      this.category,
      this.priority,
      this.doNotPerform,
      this.medium,
      this.subject,
      this.about,
      this.authoredOn,
      this.reason,
      this.note});

  factory _$CommunicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunicationImplFromJson(json);

  @override
  final int? id;
  @override
  final dynamic status;
  @override
  final dynamic statusReason;
  @override
  final dynamic category;
  @override
  final dynamic priority;
  @override
  final dynamic doNotPerform;
  @override
  final dynamic medium;
  @override
  final dynamic subject;
  @override
  final dynamic about;
  @override
  final dynamic authoredOn;
  @override
  final dynamic reason;
  @override
  final dynamic note;

  @override
  String toString() {
    return 'Communication(id: $id, status: $status, statusReason: $statusReason, category: $category, priority: $priority, doNotPerform: $doNotPerform, medium: $medium, subject: $subject, about: $about, authoredOn: $authoredOn, reason: $reason, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.statusReason, statusReason) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.priority, priority) &&
            const DeepCollectionEquality()
                .equals(other.doNotPerform, doNotPerform) &&
            const DeepCollectionEquality().equals(other.medium, medium) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality()
                .equals(other.authoredOn, authoredOn) &&
            const DeepCollectionEquality().equals(other.reason, reason) &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(statusReason),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(priority),
      const DeepCollectionEquality().hash(doNotPerform),
      const DeepCollectionEquality().hash(medium),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(about),
      const DeepCollectionEquality().hash(authoredOn),
      const DeepCollectionEquality().hash(reason),
      const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunicationImplCopyWith<_$CommunicationImpl> get copyWith =>
      __$$CommunicationImplCopyWithImpl<_$CommunicationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunicationImplToJson(
      this,
    );
  }
}

abstract class _Communication implements Communication {
  const factory _Communication(
      {final int? id,
      final dynamic status,
      final dynamic statusReason,
      final dynamic category,
      final dynamic priority,
      final dynamic doNotPerform,
      final dynamic medium,
      final dynamic subject,
      final dynamic about,
      final dynamic authoredOn,
      final dynamic reason,
      final dynamic note}) = _$CommunicationImpl;

  factory _Communication.fromJson(Map<String, dynamic> json) =
      _$CommunicationImpl.fromJson;

  @override
  int? get id;
  @override
  dynamic get status;
  @override
  dynamic get statusReason;
  @override
  dynamic get category;
  @override
  dynamic get priority;
  @override
  dynamic get doNotPerform;
  @override
  dynamic get medium;
  @override
  dynamic get subject;
  @override
  dynamic get about;
  @override
  dynamic get authoredOn;
  @override
  dynamic get reason;
  @override
  dynamic get note;
  @override
  @JsonKey(ignore: true)
  _$$CommunicationImplCopyWith<_$CommunicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Goal _$GoalFromJson(Map<String, dynamic> json) {
  return _Goal.fromJson(json);
}

/// @nodoc
mixin _$Goal {
  int? get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get statusDate => throw _privateConstructorUsedError;
  String? get statusReason => throw _privateConstructorUsedError;
  GoalAchievement? get achievementStatus => throw _privateConstructorUsedError;
  GoalLifecycleStatus? get lifecycleStatus =>
      throw _privateConstructorUsedError;
  GoalCategory? get category => throw _privateConstructorUsedError;
  List<GoalOutcomeModel>? get outcomes => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get dueDate => throw _privateConstructorUsedError;
  List<Target>? get targets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalCopyWith<Goal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalCopyWith<$Res> {
  factory $GoalCopyWith(Goal value, $Res Function(Goal) then) =
      _$GoalCopyWithImpl<$Res, Goal>;
  @useResult
  $Res call(
      {int? id,
      @TimestampConverter() DateTime? statusDate,
      String? statusReason,
      GoalAchievement? achievementStatus,
      GoalLifecycleStatus? lifecycleStatus,
      GoalCategory? category,
      List<GoalOutcomeModel>? outcomes,
      @TimestampConverter() DateTime? startDate,
      @TimestampConverter() DateTime? dueDate,
      List<Target>? targets});
}

/// @nodoc
class _$GoalCopyWithImpl<$Res, $Val extends Goal>
    implements $GoalCopyWith<$Res> {
  _$GoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? statusDate = freezed,
    Object? statusReason = freezed,
    Object? achievementStatus = freezed,
    Object? lifecycleStatus = freezed,
    Object? category = freezed,
    Object? outcomes = freezed,
    Object? startDate = freezed,
    Object? dueDate = freezed,
    Object? targets = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementStatus: freezed == achievementStatus
          ? _value.achievementStatus
          : achievementStatus // ignore: cast_nullable_to_non_nullable
              as GoalAchievement?,
      lifecycleStatus: freezed == lifecycleStatus
          ? _value.lifecycleStatus
          : lifecycleStatus // ignore: cast_nullable_to_non_nullable
              as GoalLifecycleStatus?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GoalCategory?,
      outcomes: freezed == outcomes
          ? _value.outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<GoalOutcomeModel>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targets: freezed == targets
          ? _value.targets
          : targets // ignore: cast_nullable_to_non_nullable
              as List<Target>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalImplCopyWith<$Res> implements $GoalCopyWith<$Res> {
  factory _$$GoalImplCopyWith(
          _$GoalImpl value, $Res Function(_$GoalImpl) then) =
      __$$GoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @TimestampConverter() DateTime? statusDate,
      String? statusReason,
      GoalAchievement? achievementStatus,
      GoalLifecycleStatus? lifecycleStatus,
      GoalCategory? category,
      List<GoalOutcomeModel>? outcomes,
      @TimestampConverter() DateTime? startDate,
      @TimestampConverter() DateTime? dueDate,
      List<Target>? targets});
}

/// @nodoc
class __$$GoalImplCopyWithImpl<$Res>
    extends _$GoalCopyWithImpl<$Res, _$GoalImpl>
    implements _$$GoalImplCopyWith<$Res> {
  __$$GoalImplCopyWithImpl(_$GoalImpl _value, $Res Function(_$GoalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? statusDate = freezed,
    Object? statusReason = freezed,
    Object? achievementStatus = freezed,
    Object? lifecycleStatus = freezed,
    Object? category = freezed,
    Object? outcomes = freezed,
    Object? startDate = freezed,
    Object? dueDate = freezed,
    Object? targets = freezed,
  }) {
    return _then(_$GoalImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementStatus: freezed == achievementStatus
          ? _value.achievementStatus
          : achievementStatus // ignore: cast_nullable_to_non_nullable
              as GoalAchievement?,
      lifecycleStatus: freezed == lifecycleStatus
          ? _value.lifecycleStatus
          : lifecycleStatus // ignore: cast_nullable_to_non_nullable
              as GoalLifecycleStatus?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GoalCategory?,
      outcomes: freezed == outcomes
          ? _value._outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<GoalOutcomeModel>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targets: freezed == targets
          ? _value._targets
          : targets // ignore: cast_nullable_to_non_nullable
              as List<Target>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalImpl implements _Goal {
  const _$GoalImpl(
      {required this.id,
      @TimestampConverter() this.statusDate,
      this.statusReason,
      this.achievementStatus,
      this.lifecycleStatus,
      this.category,
      final List<GoalOutcomeModel>? outcomes,
      @TimestampConverter() this.startDate,
      @TimestampConverter() this.dueDate,
      final List<Target>? targets})
      : _outcomes = outcomes,
        _targets = targets;

  factory _$GoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalImplFromJson(json);

  @override
  final int? id;
  @override
  @TimestampConverter()
  final DateTime? statusDate;
  @override
  final String? statusReason;
  @override
  final GoalAchievement? achievementStatus;
  @override
  final GoalLifecycleStatus? lifecycleStatus;
  @override
  final GoalCategory? category;
  final List<GoalOutcomeModel>? _outcomes;
  @override
  List<GoalOutcomeModel>? get outcomes {
    final value = _outcomes;
    if (value == null) return null;
    if (_outcomes is EqualUnmodifiableListView) return _outcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @TimestampConverter()
  final DateTime? startDate;
  @override
  @TimestampConverter()
  final DateTime? dueDate;
  final List<Target>? _targets;
  @override
  List<Target>? get targets {
    final value = _targets;
    if (value == null) return null;
    if (_targets is EqualUnmodifiableListView) return _targets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Goal(id: $id, statusDate: $statusDate, statusReason: $statusReason, achievementStatus: $achievementStatus, lifecycleStatus: $lifecycleStatus, category: $category, outcomes: $outcomes, startDate: $startDate, dueDate: $dueDate, targets: $targets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate) &&
            (identical(other.statusReason, statusReason) ||
                other.statusReason == statusReason) &&
            (identical(other.achievementStatus, achievementStatus) ||
                other.achievementStatus == achievementStatus) &&
            (identical(other.lifecycleStatus, lifecycleStatus) ||
                other.lifecycleStatus == lifecycleStatus) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._outcomes, _outcomes) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            const DeepCollectionEquality().equals(other._targets, _targets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      statusDate,
      statusReason,
      achievementStatus,
      lifecycleStatus,
      category,
      const DeepCollectionEquality().hash(_outcomes),
      startDate,
      dueDate,
      const DeepCollectionEquality().hash(_targets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalImplCopyWith<_$GoalImpl> get copyWith =>
      __$$GoalImplCopyWithImpl<_$GoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalImplToJson(
      this,
    );
  }
}

abstract class _Goal implements Goal {
  const factory _Goal(
      {required final int? id,
      @TimestampConverter() final DateTime? statusDate,
      final String? statusReason,
      final GoalAchievement? achievementStatus,
      final GoalLifecycleStatus? lifecycleStatus,
      final GoalCategory? category,
      final List<GoalOutcomeModel>? outcomes,
      @TimestampConverter() final DateTime? startDate,
      @TimestampConverter() final DateTime? dueDate,
      final List<Target>? targets}) = _$GoalImpl;

  factory _Goal.fromJson(Map<String, dynamic> json) = _$GoalImpl.fromJson;

  @override
  int? get id;
  @override
  @TimestampConverter()
  DateTime? get statusDate;
  @override
  String? get statusReason;
  @override
  GoalAchievement? get achievementStatus;
  @override
  GoalLifecycleStatus? get lifecycleStatus;
  @override
  GoalCategory? get category;
  @override
  List<GoalOutcomeModel>? get outcomes;
  @override
  @TimestampConverter()
  DateTime? get startDate;
  @override
  @TimestampConverter()
  DateTime? get dueDate;
  @override
  List<Target>? get targets;
  @override
  @JsonKey(ignore: true)
  _$$GoalImplCopyWith<_$GoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoalOutcomeModel _$GoalOutcomeModelFromJson(Map<String, dynamic> json) {
  return _GoalOutcomeModel.fromJson(json);
}

/// @nodoc
mixin _$GoalOutcomeModel {
  int? get id => throw _privateConstructorUsedError;
  GoalOutcome? get goalOutcome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalOutcomeModelCopyWith<GoalOutcomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalOutcomeModelCopyWith<$Res> {
  factory $GoalOutcomeModelCopyWith(
          GoalOutcomeModel value, $Res Function(GoalOutcomeModel) then) =
      _$GoalOutcomeModelCopyWithImpl<$Res, GoalOutcomeModel>;
  @useResult
  $Res call({int? id, GoalOutcome? goalOutcome});
}

/// @nodoc
class _$GoalOutcomeModelCopyWithImpl<$Res, $Val extends GoalOutcomeModel>
    implements $GoalOutcomeModelCopyWith<$Res> {
  _$GoalOutcomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? goalOutcome = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      goalOutcome: freezed == goalOutcome
          ? _value.goalOutcome
          : goalOutcome // ignore: cast_nullable_to_non_nullable
              as GoalOutcome?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalOutcomeModelImplCopyWith<$Res>
    implements $GoalOutcomeModelCopyWith<$Res> {
  factory _$$GoalOutcomeModelImplCopyWith(_$GoalOutcomeModelImpl value,
          $Res Function(_$GoalOutcomeModelImpl) then) =
      __$$GoalOutcomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, GoalOutcome? goalOutcome});
}

/// @nodoc
class __$$GoalOutcomeModelImplCopyWithImpl<$Res>
    extends _$GoalOutcomeModelCopyWithImpl<$Res, _$GoalOutcomeModelImpl>
    implements _$$GoalOutcomeModelImplCopyWith<$Res> {
  __$$GoalOutcomeModelImplCopyWithImpl(_$GoalOutcomeModelImpl _value,
      $Res Function(_$GoalOutcomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? goalOutcome = freezed,
  }) {
    return _then(_$GoalOutcomeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      goalOutcome: freezed == goalOutcome
          ? _value.goalOutcome
          : goalOutcome // ignore: cast_nullable_to_non_nullable
              as GoalOutcome?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalOutcomeModelImpl implements _GoalOutcomeModel {
  const _$GoalOutcomeModelImpl({this.id, this.goalOutcome});

  factory _$GoalOutcomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalOutcomeModelImplFromJson(json);

  @override
  final int? id;
  @override
  final GoalOutcome? goalOutcome;

  @override
  String toString() {
    return 'GoalOutcomeModel(id: $id, goalOutcome: $goalOutcome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalOutcomeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.goalOutcome, goalOutcome) ||
                other.goalOutcome == goalOutcome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, goalOutcome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalOutcomeModelImplCopyWith<_$GoalOutcomeModelImpl> get copyWith =>
      __$$GoalOutcomeModelImplCopyWithImpl<_$GoalOutcomeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalOutcomeModelImplToJson(
      this,
    );
  }
}

abstract class _GoalOutcomeModel implements GoalOutcomeModel {
  const factory _GoalOutcomeModel(
      {final int? id, final GoalOutcome? goalOutcome}) = _$GoalOutcomeModelImpl;

  factory _GoalOutcomeModel.fromJson(Map<String, dynamic> json) =
      _$GoalOutcomeModelImpl.fromJson;

  @override
  int? get id;
  @override
  GoalOutcome? get goalOutcome;
  @override
  @JsonKey(ignore: true)
  _$$GoalOutcomeModelImplCopyWith<_$GoalOutcomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Target _$TargetFromJson(Map<String, dynamic> json) {
  return _Target.fromJson(json);
}

/// @nodoc
mixin _$Target {
  int? get id => throw _privateConstructorUsedError;
  GoalMeasure? get measure => throw _privateConstructorUsedError;
  String? get detailString => throw _privateConstructorUsedError;
  int? get detailQuantity => throw _privateConstructorUsedError;
  String? get detailRange => throw _privateConstructorUsedError;
  GoalParameter? get detailCodeableConcept =>
      throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get dueDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TargetCopyWith<Target> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetCopyWith<$Res> {
  factory $TargetCopyWith(Target value, $Res Function(Target) then) =
      _$TargetCopyWithImpl<$Res, Target>;
  @useResult
  $Res call(
      {int? id,
      GoalMeasure? measure,
      String? detailString,
      int? detailQuantity,
      String? detailRange,
      GoalParameter? detailCodeableConcept,
      @TimestampConverter() DateTime? dueDate});
}

/// @nodoc
class _$TargetCopyWithImpl<$Res, $Val extends Target>
    implements $TargetCopyWith<$Res> {
  _$TargetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? measure = freezed,
    Object? detailString = freezed,
    Object? detailQuantity = freezed,
    Object? detailRange = freezed,
    Object? detailCodeableConcept = freezed,
    Object? dueDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      measure: freezed == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as GoalMeasure?,
      detailString: freezed == detailString
          ? _value.detailString
          : detailString // ignore: cast_nullable_to_non_nullable
              as String?,
      detailQuantity: freezed == detailQuantity
          ? _value.detailQuantity
          : detailQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      detailRange: freezed == detailRange
          ? _value.detailRange
          : detailRange // ignore: cast_nullable_to_non_nullable
              as String?,
      detailCodeableConcept: freezed == detailCodeableConcept
          ? _value.detailCodeableConcept
          : detailCodeableConcept // ignore: cast_nullable_to_non_nullable
              as GoalParameter?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TargetImplCopyWith<$Res> implements $TargetCopyWith<$Res> {
  factory _$$TargetImplCopyWith(
          _$TargetImpl value, $Res Function(_$TargetImpl) then) =
      __$$TargetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      GoalMeasure? measure,
      String? detailString,
      int? detailQuantity,
      String? detailRange,
      GoalParameter? detailCodeableConcept,
      @TimestampConverter() DateTime? dueDate});
}

/// @nodoc
class __$$TargetImplCopyWithImpl<$Res>
    extends _$TargetCopyWithImpl<$Res, _$TargetImpl>
    implements _$$TargetImplCopyWith<$Res> {
  __$$TargetImplCopyWithImpl(
      _$TargetImpl _value, $Res Function(_$TargetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? measure = freezed,
    Object? detailString = freezed,
    Object? detailQuantity = freezed,
    Object? detailRange = freezed,
    Object? detailCodeableConcept = freezed,
    Object? dueDate = freezed,
  }) {
    return _then(_$TargetImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      measure: freezed == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as GoalMeasure?,
      detailString: freezed == detailString
          ? _value.detailString
          : detailString // ignore: cast_nullable_to_non_nullable
              as String?,
      detailQuantity: freezed == detailQuantity
          ? _value.detailQuantity
          : detailQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      detailRange: freezed == detailRange
          ? _value.detailRange
          : detailRange // ignore: cast_nullable_to_non_nullable
              as String?,
      detailCodeableConcept: freezed == detailCodeableConcept
          ? _value.detailCodeableConcept
          : detailCodeableConcept // ignore: cast_nullable_to_non_nullable
              as GoalParameter?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TargetImpl implements _Target {
  const _$TargetImpl(
      {this.id,
      this.measure,
      this.detailString,
      this.detailQuantity,
      this.detailRange,
      this.detailCodeableConcept,
      @TimestampConverter() this.dueDate});

  factory _$TargetImpl.fromJson(Map<String, dynamic> json) =>
      _$$TargetImplFromJson(json);

  @override
  final int? id;
  @override
  final GoalMeasure? measure;
  @override
  final String? detailString;
  @override
  final int? detailQuantity;
  @override
  final String? detailRange;
  @override
  final GoalParameter? detailCodeableConcept;
  @override
  @TimestampConverter()
  final DateTime? dueDate;

  @override
  String toString() {
    return 'Target(id: $id, measure: $measure, detailString: $detailString, detailQuantity: $detailQuantity, detailRange: $detailRange, detailCodeableConcept: $detailCodeableConcept, dueDate: $dueDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.measure, measure) || other.measure == measure) &&
            (identical(other.detailString, detailString) ||
                other.detailString == detailString) &&
            (identical(other.detailQuantity, detailQuantity) ||
                other.detailQuantity == detailQuantity) &&
            (identical(other.detailRange, detailRange) ||
                other.detailRange == detailRange) &&
            (identical(other.detailCodeableConcept, detailCodeableConcept) ||
                other.detailCodeableConcept == detailCodeableConcept) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, measure, detailString,
      detailQuantity, detailRange, detailCodeableConcept, dueDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetImplCopyWith<_$TargetImpl> get copyWith =>
      __$$TargetImplCopyWithImpl<_$TargetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TargetImplToJson(
      this,
    );
  }
}

abstract class _Target implements Target {
  const factory _Target(
      {final int? id,
      final GoalMeasure? measure,
      final String? detailString,
      final int? detailQuantity,
      final String? detailRange,
      final GoalParameter? detailCodeableConcept,
      @TimestampConverter() final DateTime? dueDate}) = _$TargetImpl;

  factory _Target.fromJson(Map<String, dynamic> json) = _$TargetImpl.fromJson;

  @override
  int? get id;
  @override
  GoalMeasure? get measure;
  @override
  String? get detailString;
  @override
  int? get detailQuantity;
  @override
  String? get detailRange;
  @override
  GoalParameter? get detailCodeableConcept;
  @override
  @TimestampConverter()
  DateTime? get dueDate;
  @override
  @JsonKey(ignore: true)
  _$$TargetImplCopyWith<_$TargetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
