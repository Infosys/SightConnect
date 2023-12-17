// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TriageDTO _$TriageDTOFromJson(Map<String, dynamic> json) {
  return _TriageDTO.fromJson(json);
}

/// @nodoc
mixin _$TriageDTO {
  int? get patientId => throw _privateConstructorUsedError;
  int? get encounterId => throw _privateConstructorUsedError;
  String? get serviceType => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  List<PerformerDTO>? get performer => throw _privateConstructorUsedError;
  int? get assessmentCode => throw _privateConstructorUsedError;
  String? get assessmentVersion => throw _privateConstructorUsedError;
  String? get issued => throw _privateConstructorUsedError;
  String? get userStartDate => throw _privateConstructorUsedError;
  Source? get source => throw _privateConstructorUsedError;
  String? get sourceVersion => throw _privateConstructorUsedError;
  List<IncompleteTestDTO>? get incompleteSection =>
      throw _privateConstructorUsedError;
  List<PostImagingSelectionDTO>? get imagingSelection =>
      throw _privateConstructorUsedError;
  List<PostObservationsDTO>? get observations =>
      throw _privateConstructorUsedError;
  List<PostQuestionResponseDTO>? get questionResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriageDTOCopyWith<TriageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriageDTOCopyWith<$Res> {
  factory $TriageDTOCopyWith(TriageDTO value, $Res Function(TriageDTO) then) =
      _$TriageDTOCopyWithImpl<$Res, TriageDTO>;
  @useResult
  $Res call(
      {int? patientId,
      int? encounterId,
      String? serviceType,
      int? organizationCode,
      List<PerformerDTO>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      String? issued,
      String? userStartDate,
      Source? source,
      String? sourceVersion,
      List<IncompleteTestDTO>? incompleteSection,
      List<PostImagingSelectionDTO>? imagingSelection,
      List<PostObservationsDTO>? observations,
      List<PostQuestionResponseDTO>? questionResponse});
}

/// @nodoc
class _$TriageDTOCopyWithImpl<$Res, $Val extends TriageDTO>
    implements $TriageDTOCopyWith<$Res> {
  _$TriageDTOCopyWithImpl(this._value, this._then);

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
    Object? performer = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? issued = freezed,
    Object? userStartDate = freezed,
    Object? source = freezed,
    Object? sourceVersion = freezed,
    Object? incompleteSection = freezed,
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
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<PerformerDTO>?,
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
              as String?,
      userStartDate: freezed == userStartDate
          ? _value.userStartDate
          : userStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<IncompleteTestDTO>?,
      imagingSelection: freezed == imagingSelection
          ? _value.imagingSelection
          : imagingSelection // ignore: cast_nullable_to_non_nullable
              as List<PostImagingSelectionDTO>?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<PostObservationsDTO>?,
      questionResponse: freezed == questionResponse
          ? _value.questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<PostQuestionResponseDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TriageDTOCopyWith<$Res> implements $TriageDTOCopyWith<$Res> {
  factory _$$_TriageDTOCopyWith(
          _$_TriageDTO value, $Res Function(_$_TriageDTO) then) =
      __$$_TriageDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? patientId,
      int? encounterId,
      String? serviceType,
      int? organizationCode,
      List<PerformerDTO>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      String? issued,
      String? userStartDate,
      Source? source,
      String? sourceVersion,
      List<IncompleteTestDTO>? incompleteSection,
      List<PostImagingSelectionDTO>? imagingSelection,
      List<PostObservationsDTO>? observations,
      List<PostQuestionResponseDTO>? questionResponse});
}

/// @nodoc
class __$$_TriageDTOCopyWithImpl<$Res>
    extends _$TriageDTOCopyWithImpl<$Res, _$_TriageDTO>
    implements _$$_TriageDTOCopyWith<$Res> {
  __$$_TriageDTOCopyWithImpl(
      _$_TriageDTO _value, $Res Function(_$_TriageDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? encounterId = freezed,
    Object? serviceType = freezed,
    Object? organizationCode = freezed,
    Object? performer = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? issued = freezed,
    Object? userStartDate = freezed,
    Object? source = freezed,
    Object? sourceVersion = freezed,
    Object? incompleteSection = freezed,
    Object? imagingSelection = freezed,
    Object? observations = freezed,
    Object? questionResponse = freezed,
  }) {
    return _then(_$_TriageDTO(
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
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value._performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<PerformerDTO>?,
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
              as String?,
      userStartDate: freezed == userStartDate
          ? _value.userStartDate
          : userStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<IncompleteTestDTO>?,
      imagingSelection: freezed == imagingSelection
          ? _value._imagingSelection
          : imagingSelection // ignore: cast_nullable_to_non_nullable
              as List<PostImagingSelectionDTO>?,
      observations: freezed == observations
          ? _value._observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<PostObservationsDTO>?,
      questionResponse: freezed == questionResponse
          ? _value._questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<PostQuestionResponseDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TriageDTO implements _TriageDTO {
  const _$_TriageDTO(
      {this.patientId,
      this.encounterId,
      this.serviceType,
      this.organizationCode,
      final List<PerformerDTO>? performer,
      this.assessmentCode,
      this.assessmentVersion,
      this.issued,
      this.userStartDate,
      this.source,
      this.sourceVersion,
      final List<IncompleteTestDTO>? incompleteSection,
      final List<PostImagingSelectionDTO>? imagingSelection,
      final List<PostObservationsDTO>? observations,
      final List<PostQuestionResponseDTO>? questionResponse})
      : _performer = performer,
        _incompleteSection = incompleteSection,
        _imagingSelection = imagingSelection,
        _observations = observations,
        _questionResponse = questionResponse;

  factory _$_TriageDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TriageDTOFromJson(json);

  @override
  final int? patientId;
  @override
  final int? encounterId;
  @override
  final String? serviceType;
  @override
  final int? organizationCode;
  final List<PerformerDTO>? _performer;
  @override
  List<PerformerDTO>? get performer {
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
  final String? issued;
  @override
  final String? userStartDate;
  @override
  final Source? source;
  @override
  final String? sourceVersion;
  final List<IncompleteTestDTO>? _incompleteSection;
  @override
  List<IncompleteTestDTO>? get incompleteSection {
    final value = _incompleteSection;
    if (value == null) return null;
    if (_incompleteSection is EqualUnmodifiableListView)
      return _incompleteSection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostImagingSelectionDTO>? _imagingSelection;
  @override
  List<PostImagingSelectionDTO>? get imagingSelection {
    final value = _imagingSelection;
    if (value == null) return null;
    if (_imagingSelection is EqualUnmodifiableListView)
      return _imagingSelection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostObservationsDTO>? _observations;
  @override
  List<PostObservationsDTO>? get observations {
    final value = _observations;
    if (value == null) return null;
    if (_observations is EqualUnmodifiableListView) return _observations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostQuestionResponseDTO>? _questionResponse;
  @override
  List<PostQuestionResponseDTO>? get questionResponse {
    final value = _questionResponse;
    if (value == null) return null;
    if (_questionResponse is EqualUnmodifiableListView)
      return _questionResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TriageDTO(patientId: $patientId, encounterId: $encounterId, serviceType: $serviceType, organizationCode: $organizationCode, performer: $performer, assessmentCode: $assessmentCode, assessmentVersion: $assessmentVersion, issued: $issued, userStartDate: $userStartDate, source: $source, sourceVersion: $sourceVersion, incompleteSection: $incompleteSection, imagingSelection: $imagingSelection, observations: $observations, questionResponse: $questionResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriageDTO &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
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
      const DeepCollectionEquality().hash(_performer),
      assessmentCode,
      assessmentVersion,
      issued,
      userStartDate,
      source,
      sourceVersion,
      const DeepCollectionEquality().hash(_incompleteSection),
      const DeepCollectionEquality().hash(_imagingSelection),
      const DeepCollectionEquality().hash(_observations),
      const DeepCollectionEquality().hash(_questionResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TriageDTOCopyWith<_$_TriageDTO> get copyWith =>
      __$$_TriageDTOCopyWithImpl<_$_TriageDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TriageDTOToJson(
      this,
    );
  }
}

abstract class _TriageDTO implements TriageDTO {
  const factory _TriageDTO(
      {final int? patientId,
      final int? encounterId,
      final String? serviceType,
      final int? organizationCode,
      final List<PerformerDTO>? performer,
      final int? assessmentCode,
      final String? assessmentVersion,
      final String? issued,
      final String? userStartDate,
      final Source? source,
      final String? sourceVersion,
      final List<IncompleteTestDTO>? incompleteSection,
      final List<PostImagingSelectionDTO>? imagingSelection,
      final List<PostObservationsDTO>? observations,
      final List<PostQuestionResponseDTO>? questionResponse}) = _$_TriageDTO;

  factory _TriageDTO.fromJson(Map<String, dynamic> json) =
      _$_TriageDTO.fromJson;

  @override
  int? get patientId;
  @override
  int? get encounterId;
  @override
  String? get serviceType;
  @override
  int? get organizationCode;
  @override
  List<PerformerDTO>? get performer;
  @override
  int? get assessmentCode;
  @override
  String? get assessmentVersion;
  @override
  String? get issued;
  @override
  String? get userStartDate;
  @override
  Source? get source;
  @override
  String? get sourceVersion;
  @override
  List<IncompleteTestDTO>? get incompleteSection;
  @override
  List<PostImagingSelectionDTO>? get imagingSelection;
  @override
  List<PostObservationsDTO>? get observations;
  @override
  List<PostQuestionResponseDTO>? get questionResponse;
  @override
  @JsonKey(ignore: true)
  _$$_TriageDTOCopyWith<_$_TriageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
