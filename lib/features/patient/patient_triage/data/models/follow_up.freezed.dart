// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_up.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FollowUp _$FollowUpFromJson(Map<String, dynamic> json) {
  return _FollowUp.fromJson(json);
}

/// @nodoc
mixin _$FollowUp {
  int get id => throw _privateConstructorUsedError;
  String? get followupCode => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get requestedOn => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get finalizedOn => throw _privateConstructorUsedError;
  String? get json => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get finalResponse => throw _privateConstructorUsedError;
  TriageAction get action => throw _privateConstructorUsedError;
  TriageUrgency get urgency => throw _privateConstructorUsedError;
  TriageReason get reason => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowUpCopyWith<FollowUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowUpCopyWith<$Res> {
  factory $FollowUpCopyWith(FollowUp value, $Res Function(FollowUp) then) =
      _$FollowUpCopyWithImpl<$Res, FollowUp>;
  @useResult
  $Res call(
      {int id,
      String? followupCode,
      @TimestampConverter() DateTime? requestedOn,
      @TimestampConverter() DateTime? finalizedOn,
      String? json,
      String? status,
      String? finalResponse,
      TriageAction action,
      TriageUrgency urgency,
      TriageReason reason,
      String? remarks});
}

/// @nodoc
class _$FollowUpCopyWithImpl<$Res, $Val extends FollowUp>
    implements $FollowUpCopyWith<$Res> {
  _$FollowUpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? followupCode = freezed,
    Object? requestedOn = freezed,
    Object? finalizedOn = freezed,
    Object? json = freezed,
    Object? status = freezed,
    Object? finalResponse = freezed,
    Object? action = null,
    Object? urgency = null,
    Object? reason = null,
    Object? remarks = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      followupCode: freezed == followupCode
          ? _value.followupCode
          : followupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedOn: freezed == requestedOn
          ? _value.requestedOn
          : requestedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finalizedOn: freezed == finalizedOn
          ? _value.finalizedOn
          : finalizedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      json: freezed == json
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      finalResponse: freezed == finalResponse
          ? _value.finalResponse
          : finalResponse // ignore: cast_nullable_to_non_nullable
              as String?,
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
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FollowUpCopyWith<$Res> implements $FollowUpCopyWith<$Res> {
  factory _$$_FollowUpCopyWith(
          _$_FollowUp value, $Res Function(_$_FollowUp) then) =
      __$$_FollowUpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? followupCode,
      @TimestampConverter() DateTime? requestedOn,
      @TimestampConverter() DateTime? finalizedOn,
      String? json,
      String? status,
      String? finalResponse,
      TriageAction action,
      TriageUrgency urgency,
      TriageReason reason,
      String? remarks});
}

/// @nodoc
class __$$_FollowUpCopyWithImpl<$Res>
    extends _$FollowUpCopyWithImpl<$Res, _$_FollowUp>
    implements _$$_FollowUpCopyWith<$Res> {
  __$$_FollowUpCopyWithImpl(
      _$_FollowUp _value, $Res Function(_$_FollowUp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? followupCode = freezed,
    Object? requestedOn = freezed,
    Object? finalizedOn = freezed,
    Object? json = freezed,
    Object? status = freezed,
    Object? finalResponse = freezed,
    Object? action = null,
    Object? urgency = null,
    Object? reason = null,
    Object? remarks = freezed,
  }) {
    return _then(_$_FollowUp(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      followupCode: freezed == followupCode
          ? _value.followupCode
          : followupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedOn: freezed == requestedOn
          ? _value.requestedOn
          : requestedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finalizedOn: freezed == finalizedOn
          ? _value.finalizedOn
          : finalizedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      json: freezed == json
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      finalResponse: freezed == finalResponse
          ? _value.finalResponse
          : finalResponse // ignore: cast_nullable_to_non_nullable
              as String?,
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
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowUp implements _FollowUp {
  const _$_FollowUp(
      {required this.id,
      this.followupCode,
      @TimestampConverter() this.requestedOn,
      @TimestampConverter() this.finalizedOn,
      this.json,
      this.status,
      this.finalResponse,
      this.action = TriageAction.NO_ACTION,
      this.urgency = TriageUrgency.ROUTINE,
      this.reason = TriageReason.OTHERS,
      this.remarks});

  factory _$_FollowUp.fromJson(Map<String, dynamic> json) =>
      _$$_FollowUpFromJson(json);

  @override
  final int id;
  @override
  final String? followupCode;
  @override
  @TimestampConverter()
  final DateTime? requestedOn;
  @override
  @TimestampConverter()
  final DateTime? finalizedOn;
  @override
  final String? json;
  @override
  final String? status;
  @override
  final String? finalResponse;
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
  final String? remarks;

  @override
  String toString() {
    return 'FollowUp(id: $id, followupCode: $followupCode, requestedOn: $requestedOn, finalizedOn: $finalizedOn, json: $json, status: $status, finalResponse: $finalResponse, action: $action, urgency: $urgency, reason: $reason, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FollowUp &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.followupCode, followupCode) ||
                other.followupCode == followupCode) &&
            (identical(other.requestedOn, requestedOn) ||
                other.requestedOn == requestedOn) &&
            (identical(other.finalizedOn, finalizedOn) ||
                other.finalizedOn == finalizedOn) &&
            (identical(other.json, json) || other.json == json) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.finalResponse, finalResponse) ||
                other.finalResponse == finalResponse) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.urgency, urgency) || other.urgency == urgency) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      followupCode,
      requestedOn,
      finalizedOn,
      json,
      status,
      finalResponse,
      action,
      urgency,
      reason,
      remarks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FollowUpCopyWith<_$_FollowUp> get copyWith =>
      __$$_FollowUpCopyWithImpl<_$_FollowUp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowUpToJson(
      this,
    );
  }
}

abstract class _FollowUp implements FollowUp {
  const factory _FollowUp(
      {required final int id,
      final String? followupCode,
      @TimestampConverter() final DateTime? requestedOn,
      @TimestampConverter() final DateTime? finalizedOn,
      final String? json,
      final String? status,
      final String? finalResponse,
      final TriageAction action,
      final TriageUrgency urgency,
      final TriageReason reason,
      final String? remarks}) = _$_FollowUp;

  factory _FollowUp.fromJson(Map<String, dynamic> json) = _$_FollowUp.fromJson;

  @override
  int get id;
  @override
  String? get followupCode;
  @override
  @TimestampConverter()
  DateTime? get requestedOn;
  @override
  @TimestampConverter()
  DateTime? get finalizedOn;
  @override
  String? get json;
  @override
  String? get status;
  @override
  String? get finalResponse;
  @override
  TriageAction get action;
  @override
  TriageUrgency get urgency;
  @override
  TriageReason get reason;
  @override
  String? get remarks;
  @override
  @JsonKey(ignore: true)
  _$$_FollowUpCopyWith<_$_FollowUp> get copyWith =>
      throw _privateConstructorUsedError;
}
