// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Triage _$TriageFromJson(Map<String, dynamic> json) {
  return _Triage.fromJson(json);
}

/// @nodoc
mixin _$Triage {
  int get id => throw _privateConstructorUsedError;
  PatientInfo? get patientInfo => throw _privateConstructorUsedError;
  PatientInfo? get facilityInfo => throw _privateConstructorUsedError;
  PatientInfo? get healthWorkerInfo => throw _privateConstructorUsedError;
  TriageStatus get status => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get startedOn => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get closedOn => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  TriageSource get source => throw _privateConstructorUsedError;
  TriageAction get action => throw _privateConstructorUsedError;
  TriageUrgency get urgency => throw _privateConstructorUsedError;
  TriageReason get reason => throw _privateConstructorUsedError;
  String? get statusRemark => throw _privateConstructorUsedError;
  int? get statusChangedBy => throw _privateConstructorUsedError;
  TriageResponse? get triageResponse => throw _privateConstructorUsedError;
  VisualAcuityReport? get visualAcuityReport =>
      throw _privateConstructorUsedError;
  FollowUp? get followUp => throw _privateConstructorUsedError;
  List<String>? get leftEyeImage => throw _privateConstructorUsedError;
  List<String>? get rightEyeImage => throw _privateConstructorUsedError;
  List<String>? get bothEyeImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriageCopyWith<Triage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriageCopyWith<$Res> {
  factory $TriageCopyWith(Triage value, $Res Function(Triage) then) =
      _$TriageCopyWithImpl<$Res, Triage>;
  @useResult
  $Res call(
      {int id,
      PatientInfo? patientInfo,
      PatientInfo? facilityInfo,
      PatientInfo? healthWorkerInfo,
      TriageStatus status,
      @TimestampConverter() DateTime? startedOn,
      @TimestampConverter() DateTime? closedOn,
      bool? isDeleted,
      int? sequence,
      TriageSource source,
      TriageAction action,
      TriageUrgency urgency,
      TriageReason reason,
      String? statusRemark,
      int? statusChangedBy,
      TriageResponse? triageResponse,
      VisualAcuityReport? visualAcuityReport,
      FollowUp? followUp,
      List<String>? leftEyeImage,
      List<String>? rightEyeImage,
      List<String>? bothEyeImage});

  $PatientInfoCopyWith<$Res>? get patientInfo;
  $PatientInfoCopyWith<$Res>? get facilityInfo;
  $PatientInfoCopyWith<$Res>? get healthWorkerInfo;
  $TriageResponseCopyWith<$Res>? get triageResponse;
  $VisualAcuityReportCopyWith<$Res>? get visualAcuityReport;
  $FollowUpCopyWith<$Res>? get followUp;
}

/// @nodoc
class _$TriageCopyWithImpl<$Res, $Val extends Triage>
    implements $TriageCopyWith<$Res> {
  _$TriageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patientInfo = freezed,
    Object? facilityInfo = freezed,
    Object? healthWorkerInfo = freezed,
    Object? status = null,
    Object? startedOn = freezed,
    Object? closedOn = freezed,
    Object? isDeleted = freezed,
    Object? sequence = freezed,
    Object? source = null,
    Object? action = null,
    Object? urgency = null,
    Object? reason = null,
    Object? statusRemark = freezed,
    Object? statusChangedBy = freezed,
    Object? triageResponse = freezed,
    Object? visualAcuityReport = freezed,
    Object? followUp = freezed,
    Object? leftEyeImage = freezed,
    Object? rightEyeImage = freezed,
    Object? bothEyeImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      patientInfo: freezed == patientInfo
          ? _value.patientInfo
          : patientInfo // ignore: cast_nullable_to_non_nullable
              as PatientInfo?,
      facilityInfo: freezed == facilityInfo
          ? _value.facilityInfo
          : facilityInfo // ignore: cast_nullable_to_non_nullable
              as PatientInfo?,
      healthWorkerInfo: freezed == healthWorkerInfo
          ? _value.healthWorkerInfo
          : healthWorkerInfo // ignore: cast_nullable_to_non_nullable
              as PatientInfo?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TriageStatus,
      startedOn: freezed == startedOn
          ? _value.startedOn
          : startedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedOn: freezed == closedOn
          ? _value.closedOn
          : closedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as TriageSource,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as TriageAction,
      urgency: null == urgency
          ? _value.urgency
          : urgency // ignore: cast_nullable_to_non_nullable
              as TriageUrgency,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as TriageReason,
      statusRemark: freezed == statusRemark
          ? _value.statusRemark
          : statusRemark // ignore: cast_nullable_to_non_nullable
              as String?,
      statusChangedBy: freezed == statusChangedBy
          ? _value.statusChangedBy
          : statusChangedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      triageResponse: freezed == triageResponse
          ? _value.triageResponse
          : triageResponse // ignore: cast_nullable_to_non_nullable
              as TriageResponse?,
      visualAcuityReport: freezed == visualAcuityReport
          ? _value.visualAcuityReport
          : visualAcuityReport // ignore: cast_nullable_to_non_nullable
              as VisualAcuityReport?,
      followUp: freezed == followUp
          ? _value.followUp
          : followUp // ignore: cast_nullable_to_non_nullable
              as FollowUp?,
      leftEyeImage: freezed == leftEyeImage
          ? _value.leftEyeImage
          : leftEyeImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rightEyeImage: freezed == rightEyeImage
          ? _value.rightEyeImage
          : rightEyeImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bothEyeImage: freezed == bothEyeImage
          ? _value.bothEyeImage
          : bothEyeImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientInfoCopyWith<$Res>? get patientInfo {
    if (_value.patientInfo == null) {
      return null;
    }

    return $PatientInfoCopyWith<$Res>(_value.patientInfo!, (value) {
      return _then(_value.copyWith(patientInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientInfoCopyWith<$Res>? get facilityInfo {
    if (_value.facilityInfo == null) {
      return null;
    }

    return $PatientInfoCopyWith<$Res>(_value.facilityInfo!, (value) {
      return _then(_value.copyWith(facilityInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientInfoCopyWith<$Res>? get healthWorkerInfo {
    if (_value.healthWorkerInfo == null) {
      return null;
    }

    return $PatientInfoCopyWith<$Res>(_value.healthWorkerInfo!, (value) {
      return _then(_value.copyWith(healthWorkerInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TriageResponseCopyWith<$Res>? get triageResponse {
    if (_value.triageResponse == null) {
      return null;
    }

    return $TriageResponseCopyWith<$Res>(_value.triageResponse!, (value) {
      return _then(_value.copyWith(triageResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VisualAcuityReportCopyWith<$Res>? get visualAcuityReport {
    if (_value.visualAcuityReport == null) {
      return null;
    }

    return $VisualAcuityReportCopyWith<$Res>(_value.visualAcuityReport!,
        (value) {
      return _then(_value.copyWith(visualAcuityReport: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FollowUpCopyWith<$Res>? get followUp {
    if (_value.followUp == null) {
      return null;
    }

    return $FollowUpCopyWith<$Res>(_value.followUp!, (value) {
      return _then(_value.copyWith(followUp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TriageCopyWith<$Res> implements $TriageCopyWith<$Res> {
  factory _$$_TriageCopyWith(_$_Triage value, $Res Function(_$_Triage) then) =
      __$$_TriageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      PatientInfo? patientInfo,
      PatientInfo? facilityInfo,
      PatientInfo? healthWorkerInfo,
      TriageStatus status,
      @TimestampConverter() DateTime? startedOn,
      @TimestampConverter() DateTime? closedOn,
      bool? isDeleted,
      int? sequence,
      TriageSource source,
      TriageAction action,
      TriageUrgency urgency,
      TriageReason reason,
      String? statusRemark,
      int? statusChangedBy,
      TriageResponse? triageResponse,
      VisualAcuityReport? visualAcuityReport,
      FollowUp? followUp,
      List<String>? leftEyeImage,
      List<String>? rightEyeImage,
      List<String>? bothEyeImage});

  @override
  $PatientInfoCopyWith<$Res>? get patientInfo;
  @override
  $PatientInfoCopyWith<$Res>? get facilityInfo;
  @override
  $PatientInfoCopyWith<$Res>? get healthWorkerInfo;
  @override
  $TriageResponseCopyWith<$Res>? get triageResponse;
  @override
  $VisualAcuityReportCopyWith<$Res>? get visualAcuityReport;
  @override
  $FollowUpCopyWith<$Res>? get followUp;
}

/// @nodoc
class __$$_TriageCopyWithImpl<$Res>
    extends _$TriageCopyWithImpl<$Res, _$_Triage>
    implements _$$_TriageCopyWith<$Res> {
  __$$_TriageCopyWithImpl(_$_Triage _value, $Res Function(_$_Triage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patientInfo = freezed,
    Object? facilityInfo = freezed,
    Object? healthWorkerInfo = freezed,
    Object? status = null,
    Object? startedOn = freezed,
    Object? closedOn = freezed,
    Object? isDeleted = freezed,
    Object? sequence = freezed,
    Object? source = null,
    Object? action = null,
    Object? urgency = null,
    Object? reason = null,
    Object? statusRemark = freezed,
    Object? statusChangedBy = freezed,
    Object? triageResponse = freezed,
    Object? visualAcuityReport = freezed,
    Object? followUp = freezed,
    Object? leftEyeImage = freezed,
    Object? rightEyeImage = freezed,
    Object? bothEyeImage = freezed,
  }) {
    return _then(_$_Triage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      patientInfo: freezed == patientInfo
          ? _value.patientInfo
          : patientInfo // ignore: cast_nullable_to_non_nullable
              as PatientInfo?,
      facilityInfo: freezed == facilityInfo
          ? _value.facilityInfo
          : facilityInfo // ignore: cast_nullable_to_non_nullable
              as PatientInfo?,
      healthWorkerInfo: freezed == healthWorkerInfo
          ? _value.healthWorkerInfo
          : healthWorkerInfo // ignore: cast_nullable_to_non_nullable
              as PatientInfo?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TriageStatus,
      startedOn: freezed == startedOn
          ? _value.startedOn
          : startedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedOn: freezed == closedOn
          ? _value.closedOn
          : closedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as TriageSource,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as TriageAction,
      urgency: null == urgency
          ? _value.urgency
          : urgency // ignore: cast_nullable_to_non_nullable
              as TriageUrgency,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as TriageReason,
      statusRemark: freezed == statusRemark
          ? _value.statusRemark
          : statusRemark // ignore: cast_nullable_to_non_nullable
              as String?,
      statusChangedBy: freezed == statusChangedBy
          ? _value.statusChangedBy
          : statusChangedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      triageResponse: freezed == triageResponse
          ? _value.triageResponse
          : triageResponse // ignore: cast_nullable_to_non_nullable
              as TriageResponse?,
      visualAcuityReport: freezed == visualAcuityReport
          ? _value.visualAcuityReport
          : visualAcuityReport // ignore: cast_nullable_to_non_nullable
              as VisualAcuityReport?,
      followUp: freezed == followUp
          ? _value.followUp
          : followUp // ignore: cast_nullable_to_non_nullable
              as FollowUp?,
      leftEyeImage: freezed == leftEyeImage
          ? _value._leftEyeImage
          : leftEyeImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rightEyeImage: freezed == rightEyeImage
          ? _value._rightEyeImage
          : rightEyeImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bothEyeImage: freezed == bothEyeImage
          ? _value._bothEyeImage
          : bothEyeImage // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Triage implements _Triage {
  const _$_Triage(
      {required this.id,
      this.patientInfo,
      this.facilityInfo,
      this.healthWorkerInfo,
      this.status = TriageStatus.OPEN,
      @TimestampConverter() this.startedOn,
      @TimestampConverter() this.closedOn,
      this.isDeleted,
      this.sequence,
      this.source = TriageSource.SELF,
      this.action = TriageAction.NO_ACTION,
      this.urgency = TriageUrgency.ROUTINE,
      this.reason = TriageReason.OTHERS,
      this.statusRemark,
      this.statusChangedBy,
      this.triageResponse,
      this.visualAcuityReport,
      this.followUp,
      final List<String>? leftEyeImage,
      final List<String>? rightEyeImage,
      final List<String>? bothEyeImage})
      : _leftEyeImage = leftEyeImage,
        _rightEyeImage = rightEyeImage,
        _bothEyeImage = bothEyeImage;

  factory _$_Triage.fromJson(Map<String, dynamic> json) =>
      _$$_TriageFromJson(json);

  @override
  final int id;
  @override
  final PatientInfo? patientInfo;
  @override
  final PatientInfo? facilityInfo;
  @override
  final PatientInfo? healthWorkerInfo;
  @override
  @JsonKey()
  final TriageStatus status;
  @override
  @TimestampConverter()
  final DateTime? startedOn;
  @override
  @TimestampConverter()
  final DateTime? closedOn;
  @override
  final bool? isDeleted;
  @override
  final int? sequence;
  @override
  @JsonKey()
  final TriageSource source;
  @override
  @JsonKey()
  final TriageAction action;
  @override
  @JsonKey()
  final TriageUrgency urgency;
  @override
  @JsonKey()
  final TriageReason reason;
  @override
  final String? statusRemark;
  @override
  final int? statusChangedBy;
  @override
  final TriageResponse? triageResponse;
  @override
  final VisualAcuityReport? visualAcuityReport;
  @override
  final FollowUp? followUp;
  final List<String>? _leftEyeImage;
  @override
  List<String>? get leftEyeImage {
    final value = _leftEyeImage;
    if (value == null) return null;
    if (_leftEyeImage is EqualUnmodifiableListView) return _leftEyeImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _rightEyeImage;
  @override
  List<String>? get rightEyeImage {
    final value = _rightEyeImage;
    if (value == null) return null;
    if (_rightEyeImage is EqualUnmodifiableListView) return _rightEyeImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _bothEyeImage;
  @override
  List<String>? get bothEyeImage {
    final value = _bothEyeImage;
    if (value == null) return null;
    if (_bothEyeImage is EqualUnmodifiableListView) return _bothEyeImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Triage(id: $id, patientInfo: $patientInfo, facilityInfo: $facilityInfo, healthWorkerInfo: $healthWorkerInfo, status: $status, startedOn: $startedOn, closedOn: $closedOn, isDeleted: $isDeleted, sequence: $sequence, source: $source, action: $action, urgency: $urgency, reason: $reason, statusRemark: $statusRemark, statusChangedBy: $statusChangedBy, triageResponse: $triageResponse, visualAcuityReport: $visualAcuityReport, followUp: $followUp, leftEyeImage: $leftEyeImage, rightEyeImage: $rightEyeImage, bothEyeImage: $bothEyeImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Triage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.patientInfo, patientInfo) ||
                other.patientInfo == patientInfo) &&
            (identical(other.facilityInfo, facilityInfo) ||
                other.facilityInfo == facilityInfo) &&
            (identical(other.healthWorkerInfo, healthWorkerInfo) ||
                other.healthWorkerInfo == healthWorkerInfo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startedOn, startedOn) ||
                other.startedOn == startedOn) &&
            (identical(other.closedOn, closedOn) ||
                other.closedOn == closedOn) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.urgency, urgency) || other.urgency == urgency) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.statusRemark, statusRemark) ||
                other.statusRemark == statusRemark) &&
            (identical(other.statusChangedBy, statusChangedBy) ||
                other.statusChangedBy == statusChangedBy) &&
            (identical(other.triageResponse, triageResponse) ||
                other.triageResponse == triageResponse) &&
            (identical(other.visualAcuityReport, visualAcuityReport) ||
                other.visualAcuityReport == visualAcuityReport) &&
            (identical(other.followUp, followUp) ||
                other.followUp == followUp) &&
            const DeepCollectionEquality()
                .equals(other._leftEyeImage, _leftEyeImage) &&
            const DeepCollectionEquality()
                .equals(other._rightEyeImage, _rightEyeImage) &&
            const DeepCollectionEquality()
                .equals(other._bothEyeImage, _bothEyeImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        patientInfo,
        facilityInfo,
        healthWorkerInfo,
        status,
        startedOn,
        closedOn,
        isDeleted,
        sequence,
        source,
        action,
        urgency,
        reason,
        statusRemark,
        statusChangedBy,
        triageResponse,
        visualAcuityReport,
        followUp,
        const DeepCollectionEquality().hash(_leftEyeImage),
        const DeepCollectionEquality().hash(_rightEyeImage),
        const DeepCollectionEquality().hash(_bothEyeImage)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TriageCopyWith<_$_Triage> get copyWith =>
      __$$_TriageCopyWithImpl<_$_Triage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TriageToJson(
      this,
    );
  }
}

abstract class _Triage implements Triage {
  const factory _Triage(
      {required final int id,
      final PatientInfo? patientInfo,
      final PatientInfo? facilityInfo,
      final PatientInfo? healthWorkerInfo,
      final TriageStatus status,
      @TimestampConverter() final DateTime? startedOn,
      @TimestampConverter() final DateTime? closedOn,
      final bool? isDeleted,
      final int? sequence,
      final TriageSource source,
      final TriageAction action,
      final TriageUrgency urgency,
      final TriageReason reason,
      final String? statusRemark,
      final int? statusChangedBy,
      final TriageResponse? triageResponse,
      final VisualAcuityReport? visualAcuityReport,
      final FollowUp? followUp,
      final List<String>? leftEyeImage,
      final List<String>? rightEyeImage,
      final List<String>? bothEyeImage}) = _$_Triage;

  factory _Triage.fromJson(Map<String, dynamic> json) = _$_Triage.fromJson;

  @override
  int get id;
  @override
  PatientInfo? get patientInfo;
  @override
  PatientInfo? get facilityInfo;
  @override
  PatientInfo? get healthWorkerInfo;
  @override
  TriageStatus get status;
  @override
  @TimestampConverter()
  DateTime? get startedOn;
  @override
  @TimestampConverter()
  DateTime? get closedOn;
  @override
  bool? get isDeleted;
  @override
  int? get sequence;
  @override
  TriageSource get source;
  @override
  TriageAction get action;
  @override
  TriageUrgency get urgency;
  @override
  TriageReason get reason;
  @override
  String? get statusRemark;
  @override
  int? get statusChangedBy;
  @override
  TriageResponse? get triageResponse;
  @override
  VisualAcuityReport? get visualAcuityReport;
  @override
  FollowUp? get followUp;
  @override
  List<String>? get leftEyeImage;
  @override
  List<String>? get rightEyeImage;
  @override
  List<String>? get bothEyeImage;
  @override
  @JsonKey(ignore: true)
  _$$_TriageCopyWith<_$_Triage> get copyWith =>
      throw _privateConstructorUsedError;
}
