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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TriageDetailedReportModel _$TriageDetailedReportModelFromJson(
    Map<String, dynamic> json) {
  return _TriageDetailedReportModel.fromJson(json);
}

/// @nodoc
mixin _$TriageDetailedReportModel {
  int? get encounterId => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  ServiceType? get serviceType => throw _privateConstructorUsedError;
  EncounterStatus? get encounterStatus => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  EncounterPeriod? get encounterPeriod => throw _privateConstructorUsedError;
  int? get diagnosticReportId => throw _privateConstructorUsedError;
  int? get assessmentCode => throw _privateConstructorUsedError;
  String? get assessmentVersion => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get issued => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get userStartDate => throw _privateConstructorUsedError;
  Source? get source => throw _privateConstructorUsedError;
  DiagnosticReportStatus? get status => throw _privateConstructorUsedError;
  String? get sourceVersion => throw _privateConstructorUsedError;
  int? get performerId => throw _privateConstructorUsedError;
  PerformerRole? get performerRole => throw _privateConstructorUsedError;
  List<IncompleteTest>? get incompleteTests =>
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
      ServiceType? serviceType,
      EncounterStatus? encounterStatus,
      String? remarks,
      EncounterPeriod? encounterPeriod,
      int? diagnosticReportId,
      int? assessmentCode,
      String? assessmentVersion,
      String? category,
      String? code,
      @TimestampConverter() DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      DiagnosticReportStatus? status,
      String? sourceVersion,
      int? performerId,
      PerformerRole? performerRole,
      List<IncompleteTest>? incompleteTests,
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
    Object? serviceType = freezed,
    Object? encounterStatus = freezed,
    Object? remarks = freezed,
    Object? encounterPeriod = freezed,
    Object? diagnosticReportId = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? category = freezed,
    Object? code = freezed,
    Object? issued = freezed,
    Object? userStartDate = freezed,
    Object? source = freezed,
    Object? status = freezed,
    Object? sourceVersion = freezed,
    Object? performerId = freezed,
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
      performerRole: freezed == performerRole
          ? _value.performerRole
          : performerRole // ignore: cast_nullable_to_non_nullable
              as PerformerRole?,
      incompleteTests: freezed == incompleteTests
          ? _value.incompleteTests
          : incompleteTests // ignore: cast_nullable_to_non_nullable
              as List<IncompleteTest>?,
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
abstract class _$$_TriageDetailedReportModelCopyWith<$Res>
    implements $TriageDetailedReportModelCopyWith<$Res> {
  factory _$$_TriageDetailedReportModelCopyWith(
          _$_TriageDetailedReportModel value,
          $Res Function(_$_TriageDetailedReportModel) then) =
      __$$_TriageDetailedReportModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? encounterId,
      int? organizationCode,
      ServiceType? serviceType,
      EncounterStatus? encounterStatus,
      String? remarks,
      EncounterPeriod? encounterPeriod,
      int? diagnosticReportId,
      int? assessmentCode,
      String? assessmentVersion,
      String? category,
      String? code,
      @TimestampConverter() DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      DiagnosticReportStatus? status,
      String? sourceVersion,
      int? performerId,
      PerformerRole? performerRole,
      List<IncompleteTest>? incompleteTests,
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
class __$$_TriageDetailedReportModelCopyWithImpl<$Res>
    extends _$TriageDetailedReportModelCopyWithImpl<$Res,
        _$_TriageDetailedReportModel>
    implements _$$_TriageDetailedReportModelCopyWith<$Res> {
  __$$_TriageDetailedReportModelCopyWithImpl(
      _$_TriageDetailedReportModel _value,
      $Res Function(_$_TriageDetailedReportModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? organizationCode = freezed,
    Object? serviceType = freezed,
    Object? encounterStatus = freezed,
    Object? remarks = freezed,
    Object? encounterPeriod = freezed,
    Object? diagnosticReportId = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? category = freezed,
    Object? code = freezed,
    Object? issued = freezed,
    Object? userStartDate = freezed,
    Object? source = freezed,
    Object? status = freezed,
    Object? sourceVersion = freezed,
    Object? performerId = freezed,
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
    return _then(_$_TriageDetailedReportModel(
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
      performerRole: freezed == performerRole
          ? _value.performerRole
          : performerRole // ignore: cast_nullable_to_non_nullable
              as PerformerRole?,
      incompleteTests: freezed == incompleteTests
          ? _value._incompleteTests
          : incompleteTests // ignore: cast_nullable_to_non_nullable
              as List<IncompleteTest>?,
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
class _$_TriageDetailedReportModel implements _TriageDetailedReportModel {
  const _$_TriageDetailedReportModel(
      {this.encounterId,
      this.organizationCode,
      this.serviceType,
      this.encounterStatus,
      this.remarks,
      this.encounterPeriod,
      this.diagnosticReportId,
      this.assessmentCode,
      this.assessmentVersion,
      this.category,
      this.code,
      @TimestampConverter() this.issued,
      @TimestampConverter() this.userStartDate,
      this.source,
      this.status,
      this.sourceVersion,
      this.performerId,
      this.performerRole,
      final List<IncompleteTest>? incompleteTests,
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

  factory _$_TriageDetailedReportModel.fromJson(Map<String, dynamic> json) =>
      _$$_TriageDetailedReportModelFromJson(json);

  @override
  final int? encounterId;
  @override
  final int? organizationCode;
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
  final String? category;
  @override
  final String? code;
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
  final PerformerRole? performerRole;
  final List<IncompleteTest>? _incompleteTests;
  @override
  List<IncompleteTest>? get incompleteTests {
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
    return 'TriageDetailedReportModel(encounterId: $encounterId, organizationCode: $organizationCode, serviceType: $serviceType, encounterStatus: $encounterStatus, remarks: $remarks, encounterPeriod: $encounterPeriod, diagnosticReportId: $diagnosticReportId, assessmentCode: $assessmentCode, assessmentVersion: $assessmentVersion, category: $category, code: $code, issued: $issued, userStartDate: $userStartDate, source: $source, status: $status, sourceVersion: $sourceVersion, performerId: $performerId, performerRole: $performerRole, incompleteTests: $incompleteTests, responses: $responses, observations: $observations, media: $media, updateEndTime: $updateEndTime, diagnosticReportDescription: $diagnosticReportDescription, questionResultDescription: $questionResultDescription, observationResultDescription: $observationResultDescription, mediaResultDescription: $mediaResultDescription, cumulativeSeverity: $cumulativeSeverity, observationSeverity: $observationSeverity, mediaSeverity: $mediaSeverity, questionResponseSeverity: $questionResponseSeverity, carePlans: $carePlans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriageDetailedReportModel &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
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
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.issued, issued) || other.issued == issued) &&
            (identical(other.userStartDate, userStartDate) ||
                other.userStartDate == userStartDate) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sourceVersion, sourceVersion) ||
                other.sourceVersion == sourceVersion) &&
            (identical(other.performerId, performerId) ||
                other.performerId == performerId) &&
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
        serviceType,
        encounterStatus,
        remarks,
        encounterPeriod,
        diagnosticReportId,
        assessmentCode,
        assessmentVersion,
        category,
        code,
        issued,
        userStartDate,
        source,
        status,
        sourceVersion,
        performerId,
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
  _$$_TriageDetailedReportModelCopyWith<_$_TriageDetailedReportModel>
      get copyWith => __$$_TriageDetailedReportModelCopyWithImpl<
          _$_TriageDetailedReportModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TriageDetailedReportModelToJson(
      this,
    );
  }
}

abstract class _TriageDetailedReportModel implements TriageDetailedReportModel {
  const factory _TriageDetailedReportModel(
      {final int? encounterId,
      final int? organizationCode,
      final ServiceType? serviceType,
      final EncounterStatus? encounterStatus,
      final String? remarks,
      final EncounterPeriod? encounterPeriod,
      final int? diagnosticReportId,
      final int? assessmentCode,
      final String? assessmentVersion,
      final String? category,
      final String? code,
      @TimestampConverter() final DateTime? issued,
      @TimestampConverter() final DateTime? userStartDate,
      final Source? source,
      final DiagnosticReportStatus? status,
      final String? sourceVersion,
      final int? performerId,
      final PerformerRole? performerRole,
      final List<IncompleteTest>? incompleteTests,
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
      final List<CarePlan>? carePlans}) = _$_TriageDetailedReportModel;

  factory _TriageDetailedReportModel.fromJson(Map<String, dynamic> json) =
      _$_TriageDetailedReportModel.fromJson;

  @override
  int? get encounterId;
  @override
  int? get organizationCode;
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
  String? get category;
  @override
  String? get code;
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
  PerformerRole? get performerRole;
  @override
  List<IncompleteTest>? get incompleteTests;
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
  _$$_TriageDetailedReportModelCopyWith<_$_TriageDetailedReportModel>
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
abstract class _$$_EncounterPeriodCopyWith<$Res>
    implements $EncounterPeriodCopyWith<$Res> {
  factory _$$_EncounterPeriodCopyWith(
          _$_EncounterPeriod value, $Res Function(_$_EncounterPeriod) then) =
      __$$_EncounterPeriodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @TimestampConverter() DateTime? start,
      @TimestampConverter() DateTime? end});
}

/// @nodoc
class __$$_EncounterPeriodCopyWithImpl<$Res>
    extends _$EncounterPeriodCopyWithImpl<$Res, _$_EncounterPeriod>
    implements _$$_EncounterPeriodCopyWith<$Res> {
  __$$_EncounterPeriodCopyWithImpl(
      _$_EncounterPeriod _value, $Res Function(_$_EncounterPeriod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_EncounterPeriod(
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
class _$_EncounterPeriod implements _EncounterPeriod {
  const _$_EncounterPeriod(
      {required this.id,
      @TimestampConverter() this.start,
      @TimestampConverter() this.end});

  factory _$_EncounterPeriod.fromJson(Map<String, dynamic> json) =>
      _$$_EncounterPeriodFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EncounterPeriod &&
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
  _$$_EncounterPeriodCopyWith<_$_EncounterPeriod> get copyWith =>
      __$$_EncounterPeriodCopyWithImpl<_$_EncounterPeriod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EncounterPeriodToJson(
      this,
    );
  }
}

abstract class _EncounterPeriod implements EncounterPeriod {
  const factory _EncounterPeriod(
      {required final int id,
      @TimestampConverter() final DateTime? start,
      @TimestampConverter() final DateTime? end}) = _$_EncounterPeriod;

  factory _EncounterPeriod.fromJson(Map<String, dynamic> json) =
      _$_EncounterPeriod.fromJson;

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
  _$$_EncounterPeriodCopyWith<_$_EncounterPeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

IncompleteTest _$IncompleteTestFromJson(Map<String, dynamic> json) {
  return _IncompleteTest.fromJson(json);
}

/// @nodoc
mixin _$IncompleteTest {
  int get id => throw _privateConstructorUsedError;
  TestType get testName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncompleteTestCopyWith<IncompleteTest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncompleteTestCopyWith<$Res> {
  factory $IncompleteTestCopyWith(
          IncompleteTest value, $Res Function(IncompleteTest) then) =
      _$IncompleteTestCopyWithImpl<$Res, IncompleteTest>;
  @useResult
  $Res call({int id, TestType testName});
}

/// @nodoc
class _$IncompleteTestCopyWithImpl<$Res, $Val extends IncompleteTest>
    implements $IncompleteTestCopyWith<$Res> {
  _$IncompleteTestCopyWithImpl(this._value, this._then);

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
abstract class _$$_IncompleteTestCopyWith<$Res>
    implements $IncompleteTestCopyWith<$Res> {
  factory _$$_IncompleteTestCopyWith(
          _$_IncompleteTest value, $Res Function(_$_IncompleteTest) then) =
      __$$_IncompleteTestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, TestType testName});
}

/// @nodoc
class __$$_IncompleteTestCopyWithImpl<$Res>
    extends _$IncompleteTestCopyWithImpl<$Res, _$_IncompleteTest>
    implements _$$_IncompleteTestCopyWith<$Res> {
  __$$_IncompleteTestCopyWithImpl(
      _$_IncompleteTest _value, $Res Function(_$_IncompleteTest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? testName = null,
  }) {
    return _then(_$_IncompleteTest(
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
class _$_IncompleteTest implements _IncompleteTest {
  const _$_IncompleteTest({required this.id, required this.testName});

  factory _$_IncompleteTest.fromJson(Map<String, dynamic> json) =>
      _$$_IncompleteTestFromJson(json);

  @override
  final int id;
  @override
  final TestType testName;

  @override
  String toString() {
    return 'IncompleteTest(id: $id, testName: $testName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncompleteTest &&
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
  _$$_IncompleteTestCopyWith<_$_IncompleteTest> get copyWith =>
      __$$_IncompleteTestCopyWithImpl<_$_IncompleteTest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IncompleteTestToJson(
      this,
    );
  }
}

abstract class _IncompleteTest implements IncompleteTest {
  const factory _IncompleteTest(
      {required final int id,
      required final TestType testName}) = _$_IncompleteTest;

  factory _IncompleteTest.fromJson(Map<String, dynamic> json) =
      _$_IncompleteTest.fromJson;

  @override
  int get id;
  @override
  TestType get testName;
  @override
  @JsonKey(ignore: true)
  _$$_IncompleteTestCopyWith<_$_IncompleteTest> get copyWith =>
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
abstract class _$$_AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$_AnswerCopyWith(_$_Answer value, $Res Function(_$_Answer) then) =
      __$$_AnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, double score, int? answerCode, String value});
}

/// @nodoc
class __$$_AnswerCopyWithImpl<$Res>
    extends _$AnswerCopyWithImpl<$Res, _$_Answer>
    implements _$$_AnswerCopyWith<$Res> {
  __$$_AnswerCopyWithImpl(_$_Answer _value, $Res Function(_$_Answer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? score = null,
    Object? answerCode = freezed,
    Object? value = null,
  }) {
    return _then(_$_Answer(
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
class _$_Answer implements _Answer {
  const _$_Answer(
      {required this.id,
      required this.score,
      this.answerCode,
      required this.value});

  factory _$_Answer.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Answer &&
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
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      __$$_AnswerCopyWithImpl<_$_Answer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerToJson(
      this,
    );
  }
}

abstract class _Answer implements Answer {
  const factory _Answer(
      {required final int id,
      required final double score,
      final int? answerCode,
      required final String value}) = _$_Answer;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$_Answer.fromJson;

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
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      throw _privateConstructorUsedError;
}

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return _Response.fromJson(json);
}

/// @nodoc
mixin _$Response {
  int get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get authored => throw _privateConstructorUsedError;
  int get linkId => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  dynamic get author => throw _privateConstructorUsedError;
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
  $Res call(
      {int id,
      @TimestampConverter() DateTime? authored,
      int linkId,
      double score,
      dynamic author,
      List<Answer>? answers});
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
    Object? authored = freezed,
    Object? linkId = null,
    Object? score = null,
    Object? author = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      authored: freezed == authored
          ? _value.authored
          : authored // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      linkId: null == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as dynamic,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseCopyWith<$Res> implements $ResponseCopyWith<$Res> {
  factory _$$_ResponseCopyWith(
          _$_Response value, $Res Function(_$_Response) then) =
      __$$_ResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @TimestampConverter() DateTime? authored,
      int linkId,
      double score,
      dynamic author,
      List<Answer>? answers});
}

/// @nodoc
class __$$_ResponseCopyWithImpl<$Res>
    extends _$ResponseCopyWithImpl<$Res, _$_Response>
    implements _$$_ResponseCopyWith<$Res> {
  __$$_ResponseCopyWithImpl(
      _$_Response _value, $Res Function(_$_Response) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authored = freezed,
    Object? linkId = null,
    Object? score = null,
    Object? author = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$_Response(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      authored: freezed == authored
          ? _value.authored
          : authored // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      linkId: null == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as dynamic,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Response implements _Response {
  const _$_Response(
      {required this.id,
      @TimestampConverter() this.authored,
      required this.linkId,
      required this.score,
      this.author,
      final List<Answer>? answers})
      : _answers = answers;

  factory _$_Response.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseFromJson(json);

  @override
  final int id;
  @override
  @TimestampConverter()
  final DateTime? authored;
  @override
  final int linkId;
  @override
  final double score;
  @override
  final dynamic author;
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
    return 'Response(id: $id, authored: $authored, linkId: $linkId, score: $score, author: $author, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Response &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authored, authored) ||
                other.authored == authored) &&
            (identical(other.linkId, linkId) || other.linkId == linkId) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      authored,
      linkId,
      score,
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseCopyWith<_$_Response> get copyWith =>
      __$$_ResponseCopyWithImpl<_$_Response>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseToJson(
      this,
    );
  }
}

abstract class _Response implements Response {
  const factory _Response(
      {required final int id,
      @TimestampConverter() final DateTime? authored,
      required final int linkId,
      required final double score,
      final dynamic author,
      final List<Answer>? answers}) = _$_Response;

  factory _Response.fromJson(Map<String, dynamic> json) = _$_Response.fromJson;

  @override
  int get id;
  @override
  @TimestampConverter()
  DateTime? get authored;
  @override
  int get linkId;
  @override
  double get score;
  @override
  dynamic get author;
  @override
  List<Answer>? get answers;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseCopyWith<_$_Response> get copyWith =>
      throw _privateConstructorUsedError;
}

Observation _$ObservationFromJson(Map<String, dynamic> json) {
  return _Observation.fromJson(json);
}

/// @nodoc
mixin _$Observation {
  int get id => throw _privateConstructorUsedError;
  int? get performer => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get issued => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;
  Severity? get interpretation => throw _privateConstructorUsedError;
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
  $Res call(
      {int id,
      int? performer,
      @TimestampConverter() DateTime? issued,
      int? identifier,
      Severity? interpretation,
      String? value,
      double? score});
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
    Object? performer = freezed,
    Object? issued = freezed,
    Object? identifier = freezed,
    Object? interpretation = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as int?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      interpretation: freezed == interpretation
          ? _value.interpretation
          : interpretation // ignore: cast_nullable_to_non_nullable
              as Severity?,
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
abstract class _$$_ObservationCopyWith<$Res>
    implements $ObservationCopyWith<$Res> {
  factory _$$_ObservationCopyWith(
          _$_Observation value, $Res Function(_$_Observation) then) =
      __$$_ObservationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? performer,
      @TimestampConverter() DateTime? issued,
      int? identifier,
      Severity? interpretation,
      String? value,
      double? score});
}

/// @nodoc
class __$$_ObservationCopyWithImpl<$Res>
    extends _$ObservationCopyWithImpl<$Res, _$_Observation>
    implements _$$_ObservationCopyWith<$Res> {
  __$$_ObservationCopyWithImpl(
      _$_Observation _value, $Res Function(_$_Observation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? performer = freezed,
    Object? issued = freezed,
    Object? identifier = freezed,
    Object? interpretation = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_Observation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as int?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      interpretation: freezed == interpretation
          ? _value.interpretation
          : interpretation // ignore: cast_nullable_to_non_nullable
              as Severity?,
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
class _$_Observation implements _Observation {
  const _$_Observation(
      {required this.id,
      this.performer,
      @TimestampConverter() this.issued,
      this.identifier,
      this.interpretation,
      this.value,
      this.score});

  factory _$_Observation.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationFromJson(json);

  @override
  final int id;
  @override
  final int? performer;
  @override
  @TimestampConverter()
  final DateTime? issued;
  @override
  final int? identifier;
  @override
  final Severity? interpretation;
  @override
  final String? value;
  @override
  final double? score;

  @override
  String toString() {
    return 'Observation(id: $id, performer: $performer, issued: $issued, identifier: $identifier, interpretation: $interpretation, value: $value, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Observation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.performer, performer) ||
                other.performer == performer) &&
            (identical(other.issued, issued) || other.issued == issued) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.interpretation, interpretation) ||
                other.interpretation == interpretation) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, performer, issued,
      identifier, interpretation, value, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationCopyWith<_$_Observation> get copyWith =>
      __$$_ObservationCopyWithImpl<_$_Observation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationToJson(
      this,
    );
  }
}

abstract class _Observation implements Observation {
  const factory _Observation(
      {required final int id,
      final int? performer,
      @TimestampConverter() final DateTime? issued,
      final int? identifier,
      final Severity? interpretation,
      final String? value,
      final double? score}) = _$_Observation;

  factory _Observation.fromJson(Map<String, dynamic> json) =
      _$_Observation.fromJson;

  @override
  int get id;
  @override
  int? get performer;
  @override
  @TimestampConverter()
  DateTime? get issued;
  @override
  int? get identifier;
  @override
  Severity? get interpretation;
  @override
  String? get value;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationCopyWith<_$_Observation> get copyWith =>
      throw _privateConstructorUsedError;
}

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  int get id => throw _privateConstructorUsedError;
  int? get performer => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get issued => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;
  String? get baseUrl => throw _privateConstructorUsedError;
  String? get endpoint => throw _privateConstructorUsedError;
  BodySite? get bodySite => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  int? get fileId => throw _privateConstructorUsedError;

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
      int? performer,
      @TimestampConverter() DateTime? issued,
      int? identifier,
      String? baseUrl,
      String? endpoint,
      BodySite? bodySite,
      double? score,
      int? fileId});
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
    Object? performer = freezed,
    Object? issued = freezed,
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
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as int?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$_MediaCopyWith(_$_Media value, $Res Function(_$_Media) then) =
      __$$_MediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? performer,
      @TimestampConverter() DateTime? issued,
      int? identifier,
      String? baseUrl,
      String? endpoint,
      BodySite? bodySite,
      double? score,
      int? fileId});
}

/// @nodoc
class __$$_MediaCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res, _$_Media>
    implements _$$_MediaCopyWith<$Res> {
  __$$_MediaCopyWithImpl(_$_Media _value, $Res Function(_$_Media) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? performer = freezed,
    Object? issued = freezed,
    Object? identifier = freezed,
    Object? baseUrl = freezed,
    Object? endpoint = freezed,
    Object? bodySite = freezed,
    Object? score = freezed,
    Object? fileId = freezed,
  }) {
    return _then(_$_Media(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as int?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Media implements _Media {
  const _$_Media(
      {required this.id,
      this.performer,
      @TimestampConverter() this.issued,
      this.identifier,
      this.baseUrl,
      this.endpoint,
      this.bodySite,
      this.score,
      this.fileId});

  factory _$_Media.fromJson(Map<String, dynamic> json) =>
      _$$_MediaFromJson(json);

  @override
  final int id;
  @override
  final int? performer;
  @override
  @TimestampConverter()
  final DateTime? issued;
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
  final int? fileId;

  @override
  String toString() {
    return 'Media(id: $id, performer: $performer, issued: $issued, identifier: $identifier, baseUrl: $baseUrl, endpoint: $endpoint, bodySite: $bodySite, score: $score, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Media &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.performer, performer) ||
                other.performer == performer) &&
            (identical(other.issued, issued) || other.issued == issued) &&
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
  int get hashCode => Object.hash(runtimeType, id, performer, issued,
      identifier, baseUrl, endpoint, bodySite, score, fileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      __$$_MediaCopyWithImpl<_$_Media>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaToJson(
      this,
    );
  }
}

abstract class _Media implements Media {
  const factory _Media(
      {required final int id,
      final int? performer,
      @TimestampConverter() final DateTime? issued,
      final int? identifier,
      final String? baseUrl,
      final String? endpoint,
      final BodySite? bodySite,
      final double? score,
      final int? fileId}) = _$_Media;

  factory _Media.fromJson(Map<String, dynamic> json) = _$_Media.fromJson;

  @override
  int get id;
  @override
  int? get performer;
  @override
  @TimestampConverter()
  DateTime? get issued;
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
  int? get fileId;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCopyWith<_$_Media> get copyWith =>
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
  int? get careTeam => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  EncounterPeriod? get period => throw _privateConstructorUsedError;
  dynamic get custodian => throw _privateConstructorUsedError;
  dynamic get partOf => throw _privateConstructorUsedError;
  dynamic get carePlan => throw _privateConstructorUsedError;
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
      int? careTeam,
      String? note,
      EncounterPeriod? period,
      dynamic custodian,
      dynamic partOf,
      dynamic carePlan,
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
    Object? careTeam = freezed,
    Object? note = freezed,
    Object? period = freezed,
    Object? custodian = freezed,
    Object? partOf = freezed,
    Object? carePlan = freezed,
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
      careTeam: freezed == careTeam
          ? _value.careTeam
          : careTeam // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as EncounterPeriod?,
      custodian: freezed == custodian
          ? _value.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as dynamic,
      partOf: freezed == partOf
          ? _value.partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as dynamic,
      carePlan: freezed == carePlan
          ? _value.carePlan
          : carePlan // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$_CarePlanCopyWith<$Res> implements $CarePlanCopyWith<$Res> {
  factory _$$_CarePlanCopyWith(
          _$_CarePlan value, $Res Function(_$_CarePlan) then) =
      __$$_CarePlanCopyWithImpl<$Res>;
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
      int? careTeam,
      String? note,
      EncounterPeriod? period,
      dynamic custodian,
      dynamic partOf,
      dynamic carePlan,
      List<Condition>? conditions,
      List<Activity>? activities,
      List<Goal>? goals});

  @override
  $EncounterPeriodCopyWith<$Res>? get period;
}

/// @nodoc
class __$$_CarePlanCopyWithImpl<$Res>
    extends _$CarePlanCopyWithImpl<$Res, _$_CarePlan>
    implements _$$_CarePlanCopyWith<$Res> {
  __$$_CarePlanCopyWithImpl(
      _$_CarePlan _value, $Res Function(_$_CarePlan) _then)
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
    Object? careTeam = freezed,
    Object? note = freezed,
    Object? period = freezed,
    Object? custodian = freezed,
    Object? partOf = freezed,
    Object? carePlan = freezed,
    Object? conditions = freezed,
    Object? activities = freezed,
    Object? goals = freezed,
  }) {
    return _then(_$_CarePlan(
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
      careTeam: freezed == careTeam
          ? _value.careTeam
          : careTeam // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as EncounterPeriod?,
      custodian: freezed == custodian
          ? _value.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as dynamic,
      partOf: freezed == partOf
          ? _value.partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as dynamic,
      carePlan: freezed == carePlan
          ? _value.carePlan
          : carePlan // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
class _$_CarePlan implements _CarePlan {
  const _$_CarePlan(
      {required this.carePlanId,
      this.carePlanStatus,
      this.category,
      this.title,
      this.description,
      this.subject,
      @TimestampConverter() this.created,
      this.careTeam,
      this.note,
      this.period,
      this.custodian,
      this.partOf,
      this.carePlan,
      final List<Condition>? conditions,
      final List<Activity>? activities,
      final List<Goal>? goals})
      : _conditions = conditions,
        _activities = activities,
        _goals = goals;

  factory _$_CarePlan.fromJson(Map<String, dynamic> json) =>
      _$$_CarePlanFromJson(json);

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
  final int? careTeam;
  @override
  final String? note;
  @override
  final EncounterPeriod? period;
  @override
  final dynamic custodian;
  @override
  final dynamic partOf;
  @override
  final dynamic carePlan;
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
    return 'CarePlan(carePlanId: $carePlanId, carePlanStatus: $carePlanStatus, category: $category, title: $title, description: $description, subject: $subject, created: $created, careTeam: $careTeam, note: $note, period: $period, custodian: $custodian, partOf: $partOf, carePlan: $carePlan, conditions: $conditions, activities: $activities, goals: $goals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarePlan &&
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
            (identical(other.careTeam, careTeam) ||
                other.careTeam == careTeam) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.period, period) || other.period == period) &&
            const DeepCollectionEquality().equals(other.custodian, custodian) &&
            const DeepCollectionEquality().equals(other.partOf, partOf) &&
            const DeepCollectionEquality().equals(other.carePlan, carePlan) &&
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
      careTeam,
      note,
      period,
      const DeepCollectionEquality().hash(custodian),
      const DeepCollectionEquality().hash(partOf),
      const DeepCollectionEquality().hash(carePlan),
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_activities),
      const DeepCollectionEquality().hash(_goals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarePlanCopyWith<_$_CarePlan> get copyWith =>
      __$$_CarePlanCopyWithImpl<_$_CarePlan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarePlanToJson(
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
      final int? careTeam,
      final String? note,
      final EncounterPeriod? period,
      final dynamic custodian,
      final dynamic partOf,
      final dynamic carePlan,
      final List<Condition>? conditions,
      final List<Activity>? activities,
      final List<Goal>? goals}) = _$_CarePlan;

  factory _CarePlan.fromJson(Map<String, dynamic> json) = _$_CarePlan.fromJson;

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
  int? get careTeam;
  @override
  String? get note;
  @override
  EncounterPeriod? get period;
  @override
  dynamic get custodian;
  @override
  dynamic get partOf;
  @override
  dynamic get carePlan;
  @override
  List<Condition>? get conditions;
  @override
  List<Activity>? get activities;
  @override
  List<Goal>? get goals;
  @override
  @JsonKey(ignore: true)
  _$$_CarePlanCopyWith<_$_CarePlan> get copyWith =>
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
abstract class _$$_ConditionCopyWith<$Res> implements $ConditionCopyWith<$Res> {
  factory _$$_ConditionCopyWith(
          _$_Condition value, $Res Function(_$_Condition) then) =
      __$$_ConditionCopyWithImpl<$Res>;
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
class __$$_ConditionCopyWithImpl<$Res>
    extends _$ConditionCopyWithImpl<$Res, _$_Condition>
    implements _$$_ConditionCopyWith<$Res> {
  __$$_ConditionCopyWithImpl(
      _$_Condition _value, $Res Function(_$_Condition) _then)
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
    return _then(_$_Condition(
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
class _$_Condition implements _Condition {
  const _$_Condition(
      {this.id,
      @TimestampConverter() this.recordedDate,
      this.bodySite,
      this.code,
      this.note});

  factory _$_Condition.fromJson(Map<String, dynamic> json) =>
      _$$_ConditionFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Condition &&
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
  _$$_ConditionCopyWith<_$_Condition> get copyWith =>
      __$$_ConditionCopyWithImpl<_$_Condition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConditionToJson(
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
      final String? note}) = _$_Condition;

  factory _Condition.fromJson(Map<String, dynamic> json) =
      _$_Condition.fromJson;

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
  _$$_ConditionCopyWith<_$_Condition> get copyWith =>
      throw _privateConstructorUsedError;
}

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return _Activity.fromJson(json);
}

/// @nodoc
mixin _$Activity {
  int get id => throw _privateConstructorUsedError;
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
      {int id,
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
    Object? id = null,
    Object? progress = freezed,
    Object? plannedActivityReference = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$$_ActivityCopyWith(
          _$_Activity value, $Res Function(_$_Activity) then) =
      __$$_ActivityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? progress,
      PlannedActivityReference? plannedActivityReference});

  @override
  $PlannedActivityReferenceCopyWith<$Res>? get plannedActivityReference;
}

/// @nodoc
class __$$_ActivityCopyWithImpl<$Res>
    extends _$ActivityCopyWithImpl<$Res, _$_Activity>
    implements _$$_ActivityCopyWith<$Res> {
  __$$_ActivityCopyWithImpl(
      _$_Activity _value, $Res Function(_$_Activity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? progress = freezed,
    Object? plannedActivityReference = freezed,
  }) {
    return _then(_$_Activity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_Activity implements _Activity {
  const _$_Activity(
      {required this.id, this.progress, this.plannedActivityReference});

  factory _$_Activity.fromJson(Map<String, dynamic> json) =>
      _$$_ActivityFromJson(json);

  @override
  final int id;
  @override
  final String? progress;
  @override
  final PlannedActivityReference? plannedActivityReference;

  @override
  String toString() {
    return 'Activity(id: $id, progress: $progress, plannedActivityReference: $plannedActivityReference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Activity &&
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
  _$$_ActivityCopyWith<_$_Activity> get copyWith =>
      __$$_ActivityCopyWithImpl<_$_Activity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivityToJson(
      this,
    );
  }
}

abstract class _Activity implements Activity {
  const factory _Activity(
      {required final int id,
      final String? progress,
      final PlannedActivityReference? plannedActivityReference}) = _$_Activity;

  factory _Activity.fromJson(Map<String, dynamic> json) = _$_Activity.fromJson;

  @override
  int get id;
  @override
  String? get progress;
  @override
  PlannedActivityReference? get plannedActivityReference;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityCopyWith<_$_Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

PlannedActivityReference _$PlannedActivityReferenceFromJson(
    Map<String, dynamic> json) {
  return _PlannedActivityReference.fromJson(json);
}

/// @nodoc
mixin _$PlannedActivityReference {
  int get id => throw _privateConstructorUsedError;
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
      {int id,
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
    Object? id = null,
    Object? type = freezed,
    Object? serviceRequest = freezed,
    Object? communication = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_PlannedActivityReferenceCopyWith<$Res>
    implements $PlannedActivityReferenceCopyWith<$Res> {
  factory _$$_PlannedActivityReferenceCopyWith(
          _$_PlannedActivityReference value,
          $Res Function(_$_PlannedActivityReference) then) =
      __$$_PlannedActivityReferenceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? type,
      ServiceRequest? serviceRequest,
      Communication? communication});

  @override
  $ServiceRequestCopyWith<$Res>? get serviceRequest;
  @override
  $CommunicationCopyWith<$Res>? get communication;
}

/// @nodoc
class __$$_PlannedActivityReferenceCopyWithImpl<$Res>
    extends _$PlannedActivityReferenceCopyWithImpl<$Res,
        _$_PlannedActivityReference>
    implements _$$_PlannedActivityReferenceCopyWith<$Res> {
  __$$_PlannedActivityReferenceCopyWithImpl(_$_PlannedActivityReference _value,
      $Res Function(_$_PlannedActivityReference) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = freezed,
    Object? serviceRequest = freezed,
    Object? communication = freezed,
  }) {
    return _then(_$_PlannedActivityReference(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_PlannedActivityReference implements _PlannedActivityReference {
  const _$_PlannedActivityReference(
      {required this.id, this.type, this.serviceRequest, this.communication});

  factory _$_PlannedActivityReference.fromJson(Map<String, dynamic> json) =>
      _$$_PlannedActivityReferenceFromJson(json);

  @override
  final int id;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlannedActivityReference &&
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
  _$$_PlannedActivityReferenceCopyWith<_$_PlannedActivityReference>
      get copyWith => __$$_PlannedActivityReferenceCopyWithImpl<
          _$_PlannedActivityReference>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlannedActivityReferenceToJson(
      this,
    );
  }
}

abstract class _PlannedActivityReference implements PlannedActivityReference {
  const factory _PlannedActivityReference(
      {required final int id,
      final String? type,
      final ServiceRequest? serviceRequest,
      final Communication? communication}) = _$_PlannedActivityReference;

  factory _PlannedActivityReference.fromJson(Map<String, dynamic> json) =
      _$_PlannedActivityReference.fromJson;

  @override
  int get id;
  @override
  String? get type;
  @override
  ServiceRequest? get serviceRequest;
  @override
  Communication? get communication;
  @override
  @JsonKey(ignore: true)
  _$$_PlannedActivityReferenceCopyWith<_$_PlannedActivityReference>
      get copyWith => throw _privateConstructorUsedError;
}

ServiceRequest _$ServiceRequestFromJson(Map<String, dynamic> json) {
  return _ServiceRequest.fromJson(json);
}

/// @nodoc
mixin _$ServiceRequest {
  int get id => throw _privateConstructorUsedError;
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
      {int id,
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
    Object? id = null,
    Object? note = freezed,
    Object? patientInstruction = freezed,
    Object? bodySite = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_ServiceRequestCopyWith<$Res>
    implements $ServiceRequestCopyWith<$Res> {
  factory _$$_ServiceRequestCopyWith(
          _$_ServiceRequest value, $Res Function(_$_ServiceRequest) then) =
      __$$_ServiceRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? note,
      String? patientInstruction,
      BodySite? bodySite,
      RequestPriority? priority});
}

/// @nodoc
class __$$_ServiceRequestCopyWithImpl<$Res>
    extends _$ServiceRequestCopyWithImpl<$Res, _$_ServiceRequest>
    implements _$$_ServiceRequestCopyWith<$Res> {
  __$$_ServiceRequestCopyWithImpl(
      _$_ServiceRequest _value, $Res Function(_$_ServiceRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? note = freezed,
    Object? patientInstruction = freezed,
    Object? bodySite = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$_ServiceRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_ServiceRequest implements _ServiceRequest {
  const _$_ServiceRequest(
      {required this.id,
      this.note,
      this.patientInstruction,
      this.bodySite,
      this.priority});

  factory _$_ServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceRequestFromJson(json);

  @override
  final int id;
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
    return 'ServiceRequest(id: $id, note: $note, patientInstruction: $patientInstruction, bodySite: $bodySite, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceRequest &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(
      runtimeType, id, note, patientInstruction, bodySite, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceRequestCopyWith<_$_ServiceRequest> get copyWith =>
      __$$_ServiceRequestCopyWithImpl<_$_ServiceRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceRequestToJson(
      this,
    );
  }
}

abstract class _ServiceRequest implements ServiceRequest {
  const factory _ServiceRequest(
      {required final int id,
      final String? note,
      final String? patientInstruction,
      final BodySite? bodySite,
      final RequestPriority? priority}) = _$_ServiceRequest;

  factory _ServiceRequest.fromJson(Map<String, dynamic> json) =
      _$_ServiceRequest.fromJson;

  @override
  int get id;
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
  _$$_ServiceRequestCopyWith<_$_ServiceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

Communication _$CommunicationFromJson(Map<String, dynamic> json) {
  return _Communication.fromJson(json);
}

/// @nodoc
mixin _$Communication {
  dynamic get id => throw _privateConstructorUsedError;
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
      {dynamic id,
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
              as dynamic,
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
abstract class _$$_CommunicationCopyWith<$Res>
    implements $CommunicationCopyWith<$Res> {
  factory _$$_CommunicationCopyWith(
          _$_Communication value, $Res Function(_$_Communication) then) =
      __$$_CommunicationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
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
class __$$_CommunicationCopyWithImpl<$Res>
    extends _$CommunicationCopyWithImpl<$Res, _$_Communication>
    implements _$$_CommunicationCopyWith<$Res> {
  __$$_CommunicationCopyWithImpl(
      _$_Communication _value, $Res Function(_$_Communication) _then)
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
    return _then(_$_Communication(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
class _$_Communication implements _Communication {
  const _$_Communication(
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

  factory _$_Communication.fromJson(Map<String, dynamic> json) =>
      _$$_CommunicationFromJson(json);

  @override
  final dynamic id;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Communication &&
            const DeepCollectionEquality().equals(other.id, id) &&
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
      const DeepCollectionEquality().hash(id),
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
  _$$_CommunicationCopyWith<_$_Communication> get copyWith =>
      __$$_CommunicationCopyWithImpl<_$_Communication>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommunicationToJson(
      this,
    );
  }
}

abstract class _Communication implements Communication {
  const factory _Communication(
      {final dynamic id,
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
      final dynamic note}) = _$_Communication;

  factory _Communication.fromJson(Map<String, dynamic> json) =
      _$_Communication.fromJson;

  @override
  dynamic get id;
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
  _$$_CommunicationCopyWith<_$_Communication> get copyWith =>
      throw _privateConstructorUsedError;
}

Goal _$GoalFromJson(Map<String, dynamic> json) {
  return _Goal.fromJson(json);
}

/// @nodoc
mixin _$Goal {
  int get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get statusDate => throw _privateConstructorUsedError;
  String? get statusReason => throw _privateConstructorUsedError;
  GoalAchievement? get achievementStatus => throw _privateConstructorUsedError;
  GoalLifecycleStatus? get lifecycleStatus =>
      throw _privateConstructorUsedError;
  GoalCategory? get category => throw _privateConstructorUsedError;
  GoalOutcome? get outcome => throw _privateConstructorUsedError;
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
      {int id,
      @TimestampConverter() DateTime? statusDate,
      String? statusReason,
      GoalAchievement? achievementStatus,
      GoalLifecycleStatus? lifecycleStatus,
      GoalCategory? category,
      GoalOutcome? outcome,
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
    Object? id = null,
    Object? statusDate = freezed,
    Object? statusReason = freezed,
    Object? achievementStatus = freezed,
    Object? lifecycleStatus = freezed,
    Object? category = freezed,
    Object? outcome = freezed,
    Object? startDate = freezed,
    Object? dueDate = freezed,
    Object? targets = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as GoalOutcome?,
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
abstract class _$$_GoalCopyWith<$Res> implements $GoalCopyWith<$Res> {
  factory _$$_GoalCopyWith(_$_Goal value, $Res Function(_$_Goal) then) =
      __$$_GoalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @TimestampConverter() DateTime? statusDate,
      String? statusReason,
      GoalAchievement? achievementStatus,
      GoalLifecycleStatus? lifecycleStatus,
      GoalCategory? category,
      GoalOutcome? outcome,
      @TimestampConverter() DateTime? startDate,
      @TimestampConverter() DateTime? dueDate,
      List<Target>? targets});
}

/// @nodoc
class __$$_GoalCopyWithImpl<$Res> extends _$GoalCopyWithImpl<$Res, _$_Goal>
    implements _$$_GoalCopyWith<$Res> {
  __$$_GoalCopyWithImpl(_$_Goal _value, $Res Function(_$_Goal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? statusDate = freezed,
    Object? statusReason = freezed,
    Object? achievementStatus = freezed,
    Object? lifecycleStatus = freezed,
    Object? category = freezed,
    Object? outcome = freezed,
    Object? startDate = freezed,
    Object? dueDate = freezed,
    Object? targets = freezed,
  }) {
    return _then(_$_Goal(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as GoalOutcome?,
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
class _$_Goal implements _Goal {
  const _$_Goal(
      {required this.id,
      @TimestampConverter() this.statusDate,
      this.statusReason,
      this.achievementStatus,
      this.lifecycleStatus,
      this.category,
      this.outcome,
      @TimestampConverter() this.startDate,
      @TimestampConverter() this.dueDate,
      final List<Target>? targets})
      : _targets = targets;

  factory _$_Goal.fromJson(Map<String, dynamic> json) => _$$_GoalFromJson(json);

  @override
  final int id;
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
  @override
  final GoalOutcome? outcome;
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
    return 'Goal(id: $id, statusDate: $statusDate, statusReason: $statusReason, achievementStatus: $achievementStatus, lifecycleStatus: $lifecycleStatus, category: $category, outcome: $outcome, startDate: $startDate, dueDate: $dueDate, targets: $targets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Goal &&
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
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
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
      outcome,
      startDate,
      dueDate,
      const DeepCollectionEquality().hash(_targets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoalCopyWith<_$_Goal> get copyWith =>
      __$$_GoalCopyWithImpl<_$_Goal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoalToJson(
      this,
    );
  }
}

abstract class _Goal implements Goal {
  const factory _Goal(
      {required final int id,
      @TimestampConverter() final DateTime? statusDate,
      final String? statusReason,
      final GoalAchievement? achievementStatus,
      final GoalLifecycleStatus? lifecycleStatus,
      final GoalCategory? category,
      final GoalOutcome? outcome,
      @TimestampConverter() final DateTime? startDate,
      @TimestampConverter() final DateTime? dueDate,
      final List<Target>? targets}) = _$_Goal;

  factory _Goal.fromJson(Map<String, dynamic> json) = _$_Goal.fromJson;

  @override
  int get id;
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
  GoalOutcome? get outcome;
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
  _$$_GoalCopyWith<_$_Goal> get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$_TargetCopyWith<$Res> implements $TargetCopyWith<$Res> {
  factory _$$_TargetCopyWith(_$_Target value, $Res Function(_$_Target) then) =
      __$$_TargetCopyWithImpl<$Res>;
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
class __$$_TargetCopyWithImpl<$Res>
    extends _$TargetCopyWithImpl<$Res, _$_Target>
    implements _$$_TargetCopyWith<$Res> {
  __$$_TargetCopyWithImpl(_$_Target _value, $Res Function(_$_Target) _then)
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
    return _then(_$_Target(
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
class _$_Target implements _Target {
  const _$_Target(
      {this.id,
      this.measure,
      this.detailString,
      this.detailQuantity,
      this.detailRange,
      this.detailCodeableConcept,
      @TimestampConverter() this.dueDate});

  factory _$_Target.fromJson(Map<String, dynamic> json) =>
      _$$_TargetFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Target &&
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
  _$$_TargetCopyWith<_$_Target> get copyWith =>
      __$$_TargetCopyWithImpl<_$_Target>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TargetToJson(
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
      @TimestampConverter() final DateTime? dueDate}) = _$_Target;

  factory _Target.fromJson(Map<String, dynamic> json) = _$_Target.fromJson;

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
  _$$_TargetCopyWith<_$_Target> get copyWith =>
      throw _privateConstructorUsedError;
}
