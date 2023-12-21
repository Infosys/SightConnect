// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TriageResponseDto _$TriageResponseDtoFromJson(Map<String, dynamic> json) {
  return _TriageResponseDto.fromJson(json);
}

/// @nodoc
mixin _$TriageResponseDto {
  int? get id => throw _privateConstructorUsedError;
  int? get assessmentCode => throw _privateConstructorUsedError;
  String? get assessmentVersion => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  TestCode? get code => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get issued => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get userStartDate => throw _privateConstructorUsedError;
  Source? get source => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  int? get subject => throw _privateConstructorUsedError;
  Severity? get observationSeverity => throw _privateConstructorUsedError;
  Severity? get questionResponseSeverity => throw _privateConstructorUsedError;
  Severity? get mediaSeverity => throw _privateConstructorUsedError;
  Severity? get cumulativeSeverity => throw _privateConstructorUsedError;
  String? get sourceVersion => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  int? get performerId => throw _privateConstructorUsedError;
  PerformerRole? get performerRole => throw _privateConstructorUsedError;
  List<IncompleteTest>? get incompleteTests =>
      throw _privateConstructorUsedError;
  List<Response>? get responses => throw _privateConstructorUsedError;
  List<Observation>? get observations => throw _privateConstructorUsedError;
  List<Media>? get media => throw _privateConstructorUsedError;
  Encounter? get encounter => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updateEndTime => throw _privateConstructorUsedError;
  String? get diagnosticReportDescription => throw _privateConstructorUsedError;
  String? get questionResultDescription => throw _privateConstructorUsedError;
  String? get observationResultDescription =>
      throw _privateConstructorUsedError;
  String? get mediaResultDescription => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriageResponseDtoCopyWith<TriageResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriageResponseDtoCopyWith<$Res> {
  factory $TriageResponseDtoCopyWith(
          TriageResponseDto value, $Res Function(TriageResponseDto) then) =
      _$TriageResponseDtoCopyWithImpl<$Res, TriageResponseDto>;
  @useResult
  $Res call(
      {int? id,
      int? assessmentCode,
      String? assessmentVersion,
      Category? category,
      TestCode? code,
      @TimestampConverter() DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      Status? status,
      int? subject,
      Severity? observationSeverity,
      Severity? questionResponseSeverity,
      Severity? mediaSeverity,
      Severity? cumulativeSeverity,
      String? sourceVersion,
      bool? isDeleted,
      int? performerId,
      PerformerRole? performerRole,
      List<IncompleteTest>? incompleteTests,
      List<Response>? responses,
      List<Observation>? observations,
      List<Media>? media,
      Encounter? encounter,
      @TimestampConverter() DateTime? updateEndTime,
      String? diagnosticReportDescription,
      String? questionResultDescription,
      String? observationResultDescription,
      String? mediaResultDescription,
      bool? deleted});

  $EncounterCopyWith<$Res>? get encounter;
}

/// @nodoc
class _$TriageResponseDtoCopyWithImpl<$Res, $Val extends TriageResponseDto>
    implements $TriageResponseDtoCopyWith<$Res> {
  _$TriageResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? category = freezed,
    Object? code = freezed,
    Object? issued = freezed,
    Object? userStartDate = freezed,
    Object? source = freezed,
    Object? status = freezed,
    Object? subject = freezed,
    Object? observationSeverity = freezed,
    Object? questionResponseSeverity = freezed,
    Object? mediaSeverity = freezed,
    Object? cumulativeSeverity = freezed,
    Object? sourceVersion = freezed,
    Object? isDeleted = freezed,
    Object? performerId = freezed,
    Object? performerRole = freezed,
    Object? incompleteTests = freezed,
    Object? responses = freezed,
    Object? observations = freezed,
    Object? media = freezed,
    Object? encounter = freezed,
    Object? updateEndTime = freezed,
    Object? diagnosticReportDescription = freezed,
    Object? questionResultDescription = freezed,
    Object? observationResultDescription = freezed,
    Object? mediaResultDescription = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
              as Category?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as TestCode?,
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
              as Status?,
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
      sourceVersion: freezed == sourceVersion
          ? _value.sourceVersion
          : sourceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Encounter?,
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
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EncounterCopyWith<$Res>? get encounter {
    if (_value.encounter == null) {
      return null;
    }

    return $EncounterCopyWith<$Res>(_value.encounter!, (value) {
      return _then(_value.copyWith(encounter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TriageResponseDtoCopyWith<$Res>
    implements $TriageResponseDtoCopyWith<$Res> {
  factory _$$_TriageResponseDtoCopyWith(_$_TriageResponseDto value,
          $Res Function(_$_TriageResponseDto) then) =
      __$$_TriageResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? assessmentCode,
      String? assessmentVersion,
      Category? category,
      TestCode? code,
      @TimestampConverter() DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      Status? status,
      int? subject,
      Severity? observationSeverity,
      Severity? questionResponseSeverity,
      Severity? mediaSeverity,
      Severity? cumulativeSeverity,
      String? sourceVersion,
      bool? isDeleted,
      int? performerId,
      PerformerRole? performerRole,
      List<IncompleteTest>? incompleteTests,
      List<Response>? responses,
      List<Observation>? observations,
      List<Media>? media,
      Encounter? encounter,
      @TimestampConverter() DateTime? updateEndTime,
      String? diagnosticReportDescription,
      String? questionResultDescription,
      String? observationResultDescription,
      String? mediaResultDescription,
      bool? deleted});

  @override
  $EncounterCopyWith<$Res>? get encounter;
}

/// @nodoc
class __$$_TriageResponseDtoCopyWithImpl<$Res>
    extends _$TriageResponseDtoCopyWithImpl<$Res, _$_TriageResponseDto>
    implements _$$_TriageResponseDtoCopyWith<$Res> {
  __$$_TriageResponseDtoCopyWithImpl(
      _$_TriageResponseDto _value, $Res Function(_$_TriageResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? category = freezed,
    Object? code = freezed,
    Object? issued = freezed,
    Object? userStartDate = freezed,
    Object? source = freezed,
    Object? status = freezed,
    Object? subject = freezed,
    Object? observationSeverity = freezed,
    Object? questionResponseSeverity = freezed,
    Object? mediaSeverity = freezed,
    Object? cumulativeSeverity = freezed,
    Object? sourceVersion = freezed,
    Object? isDeleted = freezed,
    Object? performerId = freezed,
    Object? performerRole = freezed,
    Object? incompleteTests = freezed,
    Object? responses = freezed,
    Object? observations = freezed,
    Object? media = freezed,
    Object? encounter = freezed,
    Object? updateEndTime = freezed,
    Object? diagnosticReportDescription = freezed,
    Object? questionResultDescription = freezed,
    Object? observationResultDescription = freezed,
    Object? mediaResultDescription = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_TriageResponseDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
              as Category?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as TestCode?,
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
              as Status?,
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
      sourceVersion: freezed == sourceVersion
          ? _value.sourceVersion
          : sourceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Encounter?,
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
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TriageResponseDto implements _TriageResponseDto {
  const _$_TriageResponseDto(
      {this.id,
      this.assessmentCode,
      this.assessmentVersion,
      this.category,
      this.code,
      @TimestampConverter() this.issued,
      @TimestampConverter() this.userStartDate,
      this.source,
      this.status,
      this.subject,
      this.observationSeverity,
      this.questionResponseSeverity,
      this.mediaSeverity,
      this.cumulativeSeverity,
      this.sourceVersion,
      this.isDeleted,
      this.performerId,
      this.performerRole,
      final List<IncompleteTest>? incompleteTests,
      final List<Response>? responses,
      final List<Observation>? observations,
      final List<Media>? media,
      this.encounter,
      @TimestampConverter() this.updateEndTime,
      this.diagnosticReportDescription,
      this.questionResultDescription,
      this.observationResultDescription,
      this.mediaResultDescription,
      this.deleted})
      : _incompleteTests = incompleteTests,
        _responses = responses,
        _observations = observations,
        _media = media;

  factory _$_TriageResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_TriageResponseDtoFromJson(json);

  @override
  final int? id;
  @override
  final int? assessmentCode;
  @override
  final String? assessmentVersion;
  @override
  final Category? category;
  @override
  final TestCode? code;
  @override
  @TimestampConverter()
  final DateTime? issued;
  @override
  @TimestampConverter()
  final DateTime? userStartDate;
  @override
  final Source? source;
  @override
  final Status? status;
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
  final String? sourceVersion;
  @override
  final bool? isDeleted;
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
  final Encounter? encounter;
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
  final bool? deleted;

  @override
  String toString() {
    return 'TriageResponseDto(id: $id, assessmentCode: $assessmentCode, assessmentVersion: $assessmentVersion, category: $category, code: $code, issued: $issued, userStartDate: $userStartDate, source: $source, status: $status, subject: $subject, observationSeverity: $observationSeverity, questionResponseSeverity: $questionResponseSeverity, mediaSeverity: $mediaSeverity, cumulativeSeverity: $cumulativeSeverity, sourceVersion: $sourceVersion, isDeleted: $isDeleted, performerId: $performerId, performerRole: $performerRole, incompleteTests: $incompleteTests, responses: $responses, observations: $observations, media: $media, encounter: $encounter, updateEndTime: $updateEndTime, diagnosticReportDescription: $diagnosticReportDescription, questionResultDescription: $questionResultDescription, observationResultDescription: $observationResultDescription, mediaResultDescription: $mediaResultDescription, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriageResponseDto &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.sourceVersion, sourceVersion) ||
                other.sourceVersion == sourceVersion) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
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
            (identical(other.encounter, encounter) ||
                other.encounter == encounter) &&
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
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        assessmentCode,
        assessmentVersion,
        category,
        code,
        issued,
        userStartDate,
        source,
        status,
        subject,
        observationSeverity,
        questionResponseSeverity,
        mediaSeverity,
        cumulativeSeverity,
        sourceVersion,
        isDeleted,
        performerId,
        performerRole,
        const DeepCollectionEquality().hash(_incompleteTests),
        const DeepCollectionEquality().hash(_responses),
        const DeepCollectionEquality().hash(_observations),
        const DeepCollectionEquality().hash(_media),
        encounter,
        updateEndTime,
        diagnosticReportDescription,
        questionResultDescription,
        observationResultDescription,
        mediaResultDescription,
        deleted
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TriageResponseDtoCopyWith<_$_TriageResponseDto> get copyWith =>
      __$$_TriageResponseDtoCopyWithImpl<_$_TriageResponseDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TriageResponseDtoToJson(
      this,
    );
  }
}

abstract class _TriageResponseDto implements TriageResponseDto {
  const factory _TriageResponseDto(
      {final int? id,
      final int? assessmentCode,
      final String? assessmentVersion,
      final Category? category,
      final TestCode? code,
      @TimestampConverter() final DateTime? issued,
      @TimestampConverter() final DateTime? userStartDate,
      final Source? source,
      final Status? status,
      final int? subject,
      final Severity? observationSeverity,
      final Severity? questionResponseSeverity,
      final Severity? mediaSeverity,
      final Severity? cumulativeSeverity,
      final String? sourceVersion,
      final bool? isDeleted,
      final int? performerId,
      final PerformerRole? performerRole,
      final List<IncompleteTest>? incompleteTests,
      final List<Response>? responses,
      final List<Observation>? observations,
      final List<Media>? media,
      final Encounter? encounter,
      @TimestampConverter() final DateTime? updateEndTime,
      final String? diagnosticReportDescription,
      final String? questionResultDescription,
      final String? observationResultDescription,
      final String? mediaResultDescription,
      final bool? deleted}) = _$_TriageResponseDto;

  factory _TriageResponseDto.fromJson(Map<String, dynamic> json) =
      _$_TriageResponseDto.fromJson;

  @override
  int? get id;
  @override
  int? get assessmentCode;
  @override
  String? get assessmentVersion;
  @override
  Category? get category;
  @override
  TestCode? get code;
  @override
  @TimestampConverter()
  DateTime? get issued;
  @override
  @TimestampConverter()
  DateTime? get userStartDate;
  @override
  Source? get source;
  @override
  Status? get status;
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
  String? get sourceVersion;
  @override
  bool? get isDeleted;
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
  Encounter? get encounter;
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
  bool? get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_TriageResponseDtoCopyWith<_$_TriageResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

IncompleteTest _$IncompleteTestFromJson(Map<String, dynamic> json) {
  return _IncompleteTest.fromJson(json);
}

/// @nodoc
mixin _$IncompleteTest {
  int? get id => throw _privateConstructorUsedError;
  TestType? get testName => throw _privateConstructorUsedError;

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
  $Res call({int? id, TestType? testName});
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
              as TestType?,
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
  $Res call({int? id, TestType? testName});
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
    Object? id = freezed,
    Object? testName = freezed,
  }) {
    return _then(_$_IncompleteTest(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      testName: freezed == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IncompleteTest implements _IncompleteTest {
  const _$_IncompleteTest({this.id, this.testName});

  factory _$_IncompleteTest.fromJson(Map<String, dynamic> json) =>
      _$$_IncompleteTestFromJson(json);

  @override
  final int? id;
  @override
  final TestType? testName;

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
  const factory _IncompleteTest({final int? id, final TestType? testName}) =
      _$_IncompleteTest;

  factory _IncompleteTest.fromJson(Map<String, dynamic> json) =
      _$_IncompleteTest.fromJson;

  @override
  int? get id;
  @override
  TestType? get testName;
  @override
  @JsonKey(ignore: true)
  _$$_IncompleteTestCopyWith<_$_IncompleteTest> get copyWith =>
      throw _privateConstructorUsedError;
}

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return _Response.fromJson(json);
}

/// @nodoc
mixin _$Response {
  int? get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get authored => throw _privateConstructorUsedError;
  int? get linkId => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  Author? get author => throw _privateConstructorUsedError;
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
      {int? id,
      @TimestampConverter() DateTime? authored,
      int? linkId,
      int? score,
      Author? author,
      List<Answer>? answers});

  $AuthorCopyWith<$Res>? get author;
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
    Object? id = freezed,
    Object? authored = freezed,
    Object? linkId = freezed,
    Object? score = freezed,
    Object? author = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      authored: freezed == authored
          ? _value.authored
          : authored // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
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
      {int? id,
      @TimestampConverter() DateTime? authored,
      int? linkId,
      int? score,
      Author? author,
      List<Answer>? answers});

  @override
  $AuthorCopyWith<$Res>? get author;
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
    Object? id = freezed,
    Object? authored = freezed,
    Object? linkId = freezed,
    Object? score = freezed,
    Object? author = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$_Response(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      authored: freezed == authored
          ? _value.authored
          : authored // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
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
      {this.id,
      @TimestampConverter() this.authored,
      this.linkId,
      this.score,
      this.author,
      final List<Answer>? answers})
      : _answers = answers;

  factory _$_Response.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseFromJson(json);

  @override
  final int? id;
  @override
  @TimestampConverter()
  final DateTime? authored;
  @override
  final int? linkId;
  @override
  final int? score;
  @override
  final Author? author;
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
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, authored, linkId, score,
      author, const DeepCollectionEquality().hash(_answers));

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
      {final int? id,
      @TimestampConverter() final DateTime? authored,
      final int? linkId,
      final int? score,
      final Author? author,
      final List<Answer>? answers}) = _$_Response;

  factory _Response.fromJson(Map<String, dynamic> json) = _$_Response.fromJson;

  @override
  int? get id;
  @override
  @TimestampConverter()
  DateTime? get authored;
  @override
  int? get linkId;
  @override
  int? get score;
  @override
  Author? get author;
  @override
  List<Answer>? get answers;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseCopyWith<_$_Response> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  int? get id => throw _privateConstructorUsedError;
  AuthorType? get type => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call({int? id, AuthorType? type, int? identifier});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AuthorType?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$_AuthorCopyWith(_$_Author value, $Res Function(_$_Author) then) =
      __$$_AuthorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, AuthorType? type, int? identifier});
}

/// @nodoc
class __$$_AuthorCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$_Author>
    implements _$$_AuthorCopyWith<$Res> {
  __$$_AuthorCopyWithImpl(_$_Author _value, $Res Function(_$_Author) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$_Author(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AuthorType?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Author implements _Author {
  const _$_Author({this.id, this.type, this.identifier});

  factory _$_Author.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorFromJson(json);

  @override
  final int? id;
  @override
  final AuthorType? type;
  @override
  final int? identifier;

  @override
  String toString() {
    return 'Author(id: $id, type: $type, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Author &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      __$$_AuthorCopyWithImpl<_$_Author>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorToJson(
      this,
    );
  }
}

abstract class _Author implements Author {
  const factory _Author(
      {final int? id,
      final AuthorType? type,
      final int? identifier}) = _$_Author;

  factory _Author.fromJson(Map<String, dynamic> json) = _$_Author.fromJson;

  @override
  int? get id;
  @override
  AuthorType? get type;
  @override
  int? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      throw _privateConstructorUsedError;
}

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
mixin _$Answer {
  int? get id => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  int? get answerCode => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res, Answer>;
  @useResult
  $Res call({int? id, int? score, int? answerCode, String? value});
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
    Object? id = freezed,
    Object? score = freezed,
    Object? answerCode = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      answerCode: freezed == answerCode
          ? _value.answerCode
          : answerCode // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$_AnswerCopyWith(_$_Answer value, $Res Function(_$_Answer) then) =
      __$$_AnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? score, int? answerCode, String? value});
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
    Object? id = freezed,
    Object? score = freezed,
    Object? answerCode = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Answer(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      answerCode: freezed == answerCode
          ? _value.answerCode
          : answerCode // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Answer implements _Answer {
  const _$_Answer({this.id, this.score, this.answerCode, this.value});

  factory _$_Answer.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFromJson(json);

  @override
  final int? id;
  @override
  final int? score;
  @override
  final int? answerCode;
  @override
  final String? value;

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
      {final int? id,
      final int? score,
      final int? answerCode,
      final String? value}) = _$_Answer;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$_Answer.fromJson;

  @override
  int? get id;
  @override
  int? get score;
  @override
  int? get answerCode;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerCopyWith<_$_Answer> get copyWith =>
      throw _privateConstructorUsedError;
}

Observation _$ObservationFromJson(Map<String, dynamic> json) {
  return _Observation.fromJson(json);
}

/// @nodoc
mixin _$Observation {
  int? get id => throw _privateConstructorUsedError;
  int? get performer => throw _privateConstructorUsedError;
  String? get issued => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;
  Severity? get interpretation => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;

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
      {int? id,
      int? performer,
      String? issued,
      int? identifier,
      Severity? interpretation,
      String? value,
      int? score});
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
    Object? id = freezed,
    Object? performer = freezed,
    Object? issued = freezed,
    Object? identifier = freezed,
    Object? interpretation = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as int?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as int?,
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
      {int? id,
      int? performer,
      String? issued,
      int? identifier,
      Severity? interpretation,
      String? value,
      int? score});
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
    Object? id = freezed,
    Object? performer = freezed,
    Object? issued = freezed,
    Object? identifier = freezed,
    Object? interpretation = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_Observation(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as int?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Observation implements _Observation {
  const _$_Observation(
      {this.id,
      this.performer,
      this.issued,
      this.identifier,
      this.interpretation,
      this.value,
      this.score});

  factory _$_Observation.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationFromJson(json);

  @override
  final int? id;
  @override
  final int? performer;
  @override
  final String? issued;
  @override
  final int? identifier;
  @override
  final Severity? interpretation;
  @override
  final String? value;
  @override
  final int? score;

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
      {final int? id,
      final int? performer,
      final String? issued,
      final int? identifier,
      final Severity? interpretation,
      final String? value,
      final int? score}) = _$_Observation;

  factory _Observation.fromJson(Map<String, dynamic> json) =
      _$_Observation.fromJson;

  @override
  int? get id;
  @override
  int? get performer;
  @override
  String? get issued;
  @override
  int? get identifier;
  @override
  Severity? get interpretation;
  @override
  String? get value;
  @override
  int? get score;
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
  int? get id => throw _privateConstructorUsedError;
  int? get performer => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get issued => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;
  String? get baseUrl => throw _privateConstructorUsedError;
  String? get endpoint => throw _privateConstructorUsedError;
  BodySite? get bodySite => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
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
      {int? id,
      int? performer,
      @TimestampConverter() DateTime? issued,
      int? identifier,
      String? baseUrl,
      String? endpoint,
      BodySite? bodySite,
      int? score,
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
    Object? id = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as int?,
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {int? id,
      int? performer,
      @TimestampConverter() DateTime? issued,
      int? identifier,
      String? baseUrl,
      String? endpoint,
      BodySite? bodySite,
      int? score,
      String? fileId});
}

/// @nodoc
class __$$_MediaCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res, _$_Media>
    implements _$$_MediaCopyWith<$Res> {
  __$$_MediaCopyWithImpl(_$_Media _value, $Res Function(_$_Media) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as int?,
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Media implements _Media {
  const _$_Media(
      {this.id,
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
  final int? id;
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
  final int? score;
  @override
  final String? fileId;

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
      {final int? id,
      final int? performer,
      @TimestampConverter() final DateTime? issued,
      final int? identifier,
      final String? baseUrl,
      final String? endpoint,
      final BodySite? bodySite,
      final int? score,
      final String? fileId}) = _$_Media;

  factory _Media.fromJson(Map<String, dynamic> json) = _$_Media.fromJson;

  @override
  int? get id;
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
  int? get score;
  @override
  String? get fileId;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      throw _privateConstructorUsedError;
}

Encounter _$EncounterFromJson(Map<String, dynamic> json) {
  return _Encounter.fromJson(json);
}

/// @nodoc
mixin _$Encounter {
  int? get id => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  int? get serviceProvider => throw _privateConstructorUsedError;
  int? get subject => throw _privateConstructorUsedError;
  ServiceType? get serviceType => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  int? get performerReference => throw _privateConstructorUsedError;
  Period? get period => throw _privateConstructorUsedError;
  String? get partOf => throw _privateConstructorUsedError;
  String? get mrn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncounterCopyWith<Encounter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncounterCopyWith<$Res> {
  factory $EncounterCopyWith(Encounter value, $Res Function(Encounter) then) =
      _$EncounterCopyWithImpl<$Res, Encounter>;
  @useResult
  $Res call(
      {int? id,
      String? uuid,
      int? serviceProvider,
      int? subject,
      ServiceType? serviceType,
      Status? status,
      bool? isDeleted,
      String? remarks,
      int? performerReference,
      Period? period,
      String? partOf,
      String? mrn});

  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class _$EncounterCopyWithImpl<$Res, $Val extends Encounter>
    implements $EncounterCopyWith<$Res> {
  _$EncounterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? serviceProvider = freezed,
    Object? subject = freezed,
    Object? serviceType = freezed,
    Object? status = freezed,
    Object? isDeleted = freezed,
    Object? remarks = freezed,
    Object? performerReference = freezed,
    Object? period = freezed,
    Object? partOf = freezed,
    Object? mrn = freezed,
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
      serviceProvider: freezed == serviceProvider
          ? _value.serviceProvider
          : serviceProvider // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      performerReference: freezed == performerReference
          ? _value.performerReference
          : performerReference // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      partOf: freezed == partOf
          ? _value.partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as String?,
      mrn: freezed == mrn
          ? _value.mrn
          : mrn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EncounterCopyWith<$Res> implements $EncounterCopyWith<$Res> {
  factory _$$_EncounterCopyWith(
          _$_Encounter value, $Res Function(_$_Encounter) then) =
      __$$_EncounterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? uuid,
      int? serviceProvider,
      int? subject,
      ServiceType? serviceType,
      Status? status,
      bool? isDeleted,
      String? remarks,
      int? performerReference,
      Period? period,
      String? partOf,
      String? mrn});

  @override
  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class __$$_EncounterCopyWithImpl<$Res>
    extends _$EncounterCopyWithImpl<$Res, _$_Encounter>
    implements _$$_EncounterCopyWith<$Res> {
  __$$_EncounterCopyWithImpl(
      _$_Encounter _value, $Res Function(_$_Encounter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? serviceProvider = freezed,
    Object? subject = freezed,
    Object? serviceType = freezed,
    Object? status = freezed,
    Object? isDeleted = freezed,
    Object? remarks = freezed,
    Object? performerReference = freezed,
    Object? period = freezed,
    Object? partOf = freezed,
    Object? mrn = freezed,
  }) {
    return _then(_$_Encounter(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceProvider: freezed == serviceProvider
          ? _value.serviceProvider
          : serviceProvider // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      performerReference: freezed == performerReference
          ? _value.performerReference
          : performerReference // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      partOf: freezed == partOf
          ? _value.partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as String?,
      mrn: freezed == mrn
          ? _value.mrn
          : mrn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Encounter implements _Encounter {
  const _$_Encounter(
      {this.id,
      this.uuid,
      this.serviceProvider,
      this.subject,
      this.serviceType,
      this.status,
      this.isDeleted,
      this.remarks,
      this.performerReference,
      this.period,
      this.partOf,
      this.mrn});

  factory _$_Encounter.fromJson(Map<String, dynamic> json) =>
      _$$_EncounterFromJson(json);

  @override
  final int? id;
  @override
  final String? uuid;
  @override
  final int? serviceProvider;
  @override
  final int? subject;
  @override
  final ServiceType? serviceType;
  @override
  final Status? status;
  @override
  final bool? isDeleted;
  @override
  final String? remarks;
  @override
  final int? performerReference;
  @override
  final Period? period;
  @override
  final String? partOf;
  @override
  final String? mrn;

  @override
  String toString() {
    return 'Encounter(id: $id, uuid: $uuid, serviceProvider: $serviceProvider, subject: $subject, serviceType: $serviceType, status: $status, isDeleted: $isDeleted, remarks: $remarks, performerReference: $performerReference, period: $period, partOf: $partOf, mrn: $mrn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Encounter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.serviceProvider, serviceProvider) ||
                other.serviceProvider == serviceProvider) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.performerReference, performerReference) ||
                other.performerReference == performerReference) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.partOf, partOf) || other.partOf == partOf) &&
            (identical(other.mrn, mrn) || other.mrn == mrn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      uuid,
      serviceProvider,
      subject,
      serviceType,
      status,
      isDeleted,
      remarks,
      performerReference,
      period,
      partOf,
      mrn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EncounterCopyWith<_$_Encounter> get copyWith =>
      __$$_EncounterCopyWithImpl<_$_Encounter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EncounterToJson(
      this,
    );
  }
}

abstract class _Encounter implements Encounter {
  const factory _Encounter(
      {final int? id,
      final String? uuid,
      final int? serviceProvider,
      final int? subject,
      final ServiceType? serviceType,
      final Status? status,
      final bool? isDeleted,
      final String? remarks,
      final int? performerReference,
      final Period? period,
      final String? partOf,
      final String? mrn}) = _$_Encounter;

  factory _Encounter.fromJson(Map<String, dynamic> json) =
      _$_Encounter.fromJson;

  @override
  int? get id;
  @override
  String? get uuid;
  @override
  int? get serviceProvider;
  @override
  int? get subject;
  @override
  ServiceType? get serviceType;
  @override
  Status? get status;
  @override
  bool? get isDeleted;
  @override
  String? get remarks;
  @override
  int? get performerReference;
  @override
  Period? get period;
  @override
  String? get partOf;
  @override
  String? get mrn;
  @override
  @JsonKey(ignore: true)
  _$$_EncounterCopyWith<_$_Encounter> get copyWith =>
      throw _privateConstructorUsedError;
}

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return _Period.fromJson(json);
}

/// @nodoc
mixin _$Period {
  int? get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get start => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeriodCopyWith<Period> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodCopyWith<$Res> {
  factory $PeriodCopyWith(Period value, $Res Function(Period) then) =
      _$PeriodCopyWithImpl<$Res, Period>;
  @useResult
  $Res call(
      {int? id,
      @TimestampConverter() DateTime? start,
      @TimestampConverter() DateTime? end});
}

/// @nodoc
class _$PeriodCopyWithImpl<$Res, $Val extends Period>
    implements $PeriodCopyWith<$Res> {
  _$PeriodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_PeriodCopyWith<$Res> implements $PeriodCopyWith<$Res> {
  factory _$$_PeriodCopyWith(_$_Period value, $Res Function(_$_Period) then) =
      __$$_PeriodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @TimestampConverter() DateTime? start,
      @TimestampConverter() DateTime? end});
}

/// @nodoc
class __$$_PeriodCopyWithImpl<$Res>
    extends _$PeriodCopyWithImpl<$Res, _$_Period>
    implements _$$_PeriodCopyWith<$Res> {
  __$$_PeriodCopyWithImpl(_$_Period _value, $Res Function(_$_Period) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_Period(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_Period implements _Period {
  const _$_Period(
      {this.id,
      @TimestampConverter() this.start,
      @TimestampConverter() this.end});

  factory _$_Period.fromJson(Map<String, dynamic> json) =>
      _$$_PeriodFromJson(json);

  @override
  final int? id;
  @override
  @TimestampConverter()
  final DateTime? start;
  @override
  @TimestampConverter()
  final DateTime? end;

  @override
  String toString() {
    return 'Period(id: $id, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Period &&
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
  _$$_PeriodCopyWith<_$_Period> get copyWith =>
      __$$_PeriodCopyWithImpl<_$_Period>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeriodToJson(
      this,
    );
  }
}

abstract class _Period implements Period {
  const factory _Period(
      {final int? id,
      @TimestampConverter() final DateTime? start,
      @TimestampConverter() final DateTime? end}) = _$_Period;

  factory _Period.fromJson(Map<String, dynamic> json) = _$_Period.fromJson;

  @override
  int? get id;
  @override
  @TimestampConverter()
  DateTime? get start;
  @override
  @TimestampConverter()
  DateTime? get end;
  @override
  @JsonKey(ignore: true)
  _$$_PeriodCopyWith<_$_Period> get copyWith =>
      throw _privateConstructorUsedError;
}
