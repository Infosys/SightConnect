/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vt_close_assessment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CloseAssessmentDto _$CloseAssessmentDtoFromJson(Map<String, dynamic> json) {
  return _CloseAssessmentDto.fromJson(json);
}

/// @nodoc
mixin _$CloseAssessmentDto {
  int? get encounterId => throw _privateConstructorUsedError;
  int? get diagnosticReportId => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  int? get tenantCode => throw _privateConstructorUsedError;
  List<PerformerDto>? get performer => throw _privateConstructorUsedError;
  int? get carePlanId => throw _privateConstructorUsedError;
  int? get goalId => throw _privateConstructorUsedError;
  GoalAction? get goalAction => throw _privateConstructorUsedError;
  String? get statusReason => throw _privateConstructorUsedError;
  AchievementStatus? get achievementStatus =>
      throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get statusDate => throw _privateConstructorUsedError;
  List<Outcome>? get outcomes => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get mrn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloseAssessmentDtoCopyWith<CloseAssessmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloseAssessmentDtoCopyWith<$Res> {
  factory $CloseAssessmentDtoCopyWith(
          CloseAssessmentDto value, $Res Function(CloseAssessmentDto) then) =
      _$CloseAssessmentDtoCopyWithImpl<$Res, CloseAssessmentDto>;
  @useResult
  $Res call(
      {int? encounterId,
      int? diagnosticReportId,
      int? organizationCode,
      int? tenantCode,
      List<PerformerDto>? performer,
      int? carePlanId,
      int? goalId,
      GoalAction? goalAction,
      String? statusReason,
      AchievementStatus? achievementStatus,
      @TimestampConverter() DateTime? statusDate,
      List<Outcome>? outcomes,
      String? note,
      String? mrn});
}

/// @nodoc
class _$CloseAssessmentDtoCopyWithImpl<$Res, $Val extends CloseAssessmentDto>
    implements $CloseAssessmentDtoCopyWith<$Res> {
  _$CloseAssessmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? diagnosticReportId = freezed,
    Object? organizationCode = freezed,
    Object? tenantCode = freezed,
    Object? performer = freezed,
    Object? carePlanId = freezed,
    Object? goalId = freezed,
    Object? goalAction = freezed,
    Object? statusReason = freezed,
    Object? achievementStatus = freezed,
    Object? statusDate = freezed,
    Object? outcomes = freezed,
    Object? note = freezed,
    Object? mrn = freezed,
  }) {
    return _then(_value.copyWith(
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      diagnosticReportId: freezed == diagnosticReportId
          ? _value.diagnosticReportId
          : diagnosticReportId // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as List<PerformerDto>?,
      carePlanId: freezed == carePlanId
          ? _value.carePlanId
          : carePlanId // ignore: cast_nullable_to_non_nullable
              as int?,
      goalId: freezed == goalId
          ? _value.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as int?,
      goalAction: freezed == goalAction
          ? _value.goalAction
          : goalAction // ignore: cast_nullable_to_non_nullable
              as GoalAction?,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementStatus: freezed == achievementStatus
          ? _value.achievementStatus
          : achievementStatus // ignore: cast_nullable_to_non_nullable
              as AchievementStatus?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      outcomes: freezed == outcomes
          ? _value.outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<Outcome>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      mrn: freezed == mrn
          ? _value.mrn
          : mrn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CloseAssessmentDtoImplCopyWith<$Res>
    implements $CloseAssessmentDtoCopyWith<$Res> {
  factory _$$CloseAssessmentDtoImplCopyWith(_$CloseAssessmentDtoImpl value,
          $Res Function(_$CloseAssessmentDtoImpl) then) =
      __$$CloseAssessmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? encounterId,
      int? diagnosticReportId,
      int? organizationCode,
      int? tenantCode,
      List<PerformerDto>? performer,
      int? carePlanId,
      int? goalId,
      GoalAction? goalAction,
      String? statusReason,
      AchievementStatus? achievementStatus,
      @TimestampConverter() DateTime? statusDate,
      List<Outcome>? outcomes,
      String? note,
      String? mrn});
}

/// @nodoc
class __$$CloseAssessmentDtoImplCopyWithImpl<$Res>
    extends _$CloseAssessmentDtoCopyWithImpl<$Res, _$CloseAssessmentDtoImpl>
    implements _$$CloseAssessmentDtoImplCopyWith<$Res> {
  __$$CloseAssessmentDtoImplCopyWithImpl(_$CloseAssessmentDtoImpl _value,
      $Res Function(_$CloseAssessmentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? diagnosticReportId = freezed,
    Object? organizationCode = freezed,
    Object? tenantCode = freezed,
    Object? performer = freezed,
    Object? carePlanId = freezed,
    Object? goalId = freezed,
    Object? goalAction = freezed,
    Object? statusReason = freezed,
    Object? achievementStatus = freezed,
    Object? statusDate = freezed,
    Object? outcomes = freezed,
    Object? note = freezed,
    Object? mrn = freezed,
  }) {
    return _then(_$CloseAssessmentDtoImpl(
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      diagnosticReportId: freezed == diagnosticReportId
          ? _value.diagnosticReportId
          : diagnosticReportId // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as List<PerformerDto>?,
      carePlanId: freezed == carePlanId
          ? _value.carePlanId
          : carePlanId // ignore: cast_nullable_to_non_nullable
              as int?,
      goalId: freezed == goalId
          ? _value.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as int?,
      goalAction: freezed == goalAction
          ? _value.goalAction
          : goalAction // ignore: cast_nullable_to_non_nullable
              as GoalAction?,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementStatus: freezed == achievementStatus
          ? _value.achievementStatus
          : achievementStatus // ignore: cast_nullable_to_non_nullable
              as AchievementStatus?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      outcomes: freezed == outcomes
          ? _value._outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<Outcome>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
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
class _$CloseAssessmentDtoImpl implements _CloseAssessmentDto {
  const _$CloseAssessmentDtoImpl(
      {this.encounterId,
      this.diagnosticReportId,
      this.organizationCode,
      this.tenantCode,
      final List<PerformerDto>? performer,
      this.carePlanId,
      this.goalId,
      this.goalAction,
      this.statusReason,
      this.achievementStatus,
      @TimestampConverter() this.statusDate,
      final List<Outcome>? outcomes,
      this.note,
      this.mrn})
      : _performer = performer,
        _outcomes = outcomes;

  factory _$CloseAssessmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloseAssessmentDtoImplFromJson(json);

  @override
  final int? encounterId;
  @override
  final int? diagnosticReportId;
  @override
  final int? organizationCode;
  @override
  final int? tenantCode;
  final List<PerformerDto>? _performer;
  @override
  List<PerformerDto>? get performer {
    final value = _performer;
    if (value == null) return null;
    if (_performer is EqualUnmodifiableListView) return _performer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? carePlanId;
  @override
  final int? goalId;
  @override
  final GoalAction? goalAction;
  @override
  final String? statusReason;
  @override
  final AchievementStatus? achievementStatus;
  @override
  @TimestampConverter()
  final DateTime? statusDate;
  final List<Outcome>? _outcomes;
  @override
  List<Outcome>? get outcomes {
    final value = _outcomes;
    if (value == null) return null;
    if (_outcomes is EqualUnmodifiableListView) return _outcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? note;
  @override
  final String? mrn;

  @override
  String toString() {
    return 'CloseAssessmentDto(encounterId: $encounterId, diagnosticReportId: $diagnosticReportId, organizationCode: $organizationCode, tenantCode: $tenantCode, performer: $performer, carePlanId: $carePlanId, goalId: $goalId, goalAction: $goalAction, statusReason: $statusReason, achievementStatus: $achievementStatus, statusDate: $statusDate, outcomes: $outcomes, note: $note, mrn: $mrn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloseAssessmentDtoImpl &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.diagnosticReportId, diagnosticReportId) ||
                other.diagnosticReportId == diagnosticReportId) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            (identical(other.tenantCode, tenantCode) ||
                other.tenantCode == tenantCode) &&
            const DeepCollectionEquality()
                .equals(other._performer, _performer) &&
            (identical(other.carePlanId, carePlanId) ||
                other.carePlanId == carePlanId) &&
            (identical(other.goalId, goalId) || other.goalId == goalId) &&
            (identical(other.goalAction, goalAction) ||
                other.goalAction == goalAction) &&
            (identical(other.statusReason, statusReason) ||
                other.statusReason == statusReason) &&
            (identical(other.achievementStatus, achievementStatus) ||
                other.achievementStatus == achievementStatus) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate) &&
            const DeepCollectionEquality().equals(other._outcomes, _outcomes) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.mrn, mrn) || other.mrn == mrn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      encounterId,
      diagnosticReportId,
      organizationCode,
      tenantCode,
      const DeepCollectionEquality().hash(_performer),
      carePlanId,
      goalId,
      goalAction,
      statusReason,
      achievementStatus,
      statusDate,
      const DeepCollectionEquality().hash(_outcomes),
      note,
      mrn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloseAssessmentDtoImplCopyWith<_$CloseAssessmentDtoImpl> get copyWith =>
      __$$CloseAssessmentDtoImplCopyWithImpl<_$CloseAssessmentDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloseAssessmentDtoImplToJson(
      this,
    );
  }
}

abstract class _CloseAssessmentDto implements CloseAssessmentDto {
  const factory _CloseAssessmentDto(
      {final int? encounterId,
      final int? diagnosticReportId,
      final int? organizationCode,
      final int? tenantCode,
      final List<PerformerDto>? performer,
      final int? carePlanId,
      final int? goalId,
      final GoalAction? goalAction,
      final String? statusReason,
      final AchievementStatus? achievementStatus,
      @TimestampConverter() final DateTime? statusDate,
      final List<Outcome>? outcomes,
      final String? note,
      final String? mrn}) = _$CloseAssessmentDtoImpl;

  factory _CloseAssessmentDto.fromJson(Map<String, dynamic> json) =
      _$CloseAssessmentDtoImpl.fromJson;

  @override
  int? get encounterId;
  @override
  int? get diagnosticReportId;
  @override
  int? get organizationCode;
  @override
  int? get tenantCode;
  @override
  List<PerformerDto>? get performer;
  @override
  int? get carePlanId;
  @override
  int? get goalId;
  @override
  GoalAction? get goalAction;
  @override
  String? get statusReason;
  @override
  AchievementStatus? get achievementStatus;
  @override
  @TimestampConverter()
  DateTime? get statusDate;
  @override
  List<Outcome>? get outcomes;
  @override
  String? get note;
  @override
  String? get mrn;
  @override
  @JsonKey(ignore: true)
  _$$CloseAssessmentDtoImplCopyWith<_$CloseAssessmentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PerformerDto _$PerformerDtoFromJson(Map<String, dynamic> json) {
  return _PerformerDto.fromJson(json);
}

/// @nodoc
mixin _$PerformerDto {
  Role? get role => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformerDtoCopyWith<PerformerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformerDtoCopyWith<$Res> {
  factory $PerformerDtoCopyWith(
          PerformerDto value, $Res Function(PerformerDto) then) =
      _$PerformerDtoCopyWithImpl<$Res, PerformerDto>;
  @useResult
  $Res call({Role? role, int? identifier});
}

/// @nodoc
class _$PerformerDtoCopyWithImpl<$Res, $Val extends PerformerDto>
    implements $PerformerDtoCopyWith<$Res> {
  _$PerformerDtoCopyWithImpl(this._value, this._then);

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
              as Role?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformerDtoImplCopyWith<$Res>
    implements $PerformerDtoCopyWith<$Res> {
  factory _$$PerformerDtoImplCopyWith(
          _$PerformerDtoImpl value, $Res Function(_$PerformerDtoImpl) then) =
      __$$PerformerDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Role? role, int? identifier});
}

/// @nodoc
class __$$PerformerDtoImplCopyWithImpl<$Res>
    extends _$PerformerDtoCopyWithImpl<$Res, _$PerformerDtoImpl>
    implements _$$PerformerDtoImplCopyWith<$Res> {
  __$$PerformerDtoImplCopyWithImpl(
      _$PerformerDtoImpl _value, $Res Function(_$PerformerDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$PerformerDtoImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformerDtoImpl implements _PerformerDto {
  const _$PerformerDtoImpl({this.role, this.identifier});

  factory _$PerformerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformerDtoImplFromJson(json);

  @override
  final Role? role;
  @override
  final int? identifier;

  @override
  String toString() {
    return 'PerformerDto(role: $role, identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformerDtoImpl &&
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
  _$$PerformerDtoImplCopyWith<_$PerformerDtoImpl> get copyWith =>
      __$$PerformerDtoImplCopyWithImpl<_$PerformerDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformerDtoImplToJson(
      this,
    );
  }
}

abstract class _PerformerDto implements PerformerDto {
  const factory _PerformerDto({final Role? role, final int? identifier}) =
      _$PerformerDtoImpl;

  factory _PerformerDto.fromJson(Map<String, dynamic> json) =
      _$PerformerDtoImpl.fromJson;

  @override
  Role? get role;
  @override
  int? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$PerformerDtoImplCopyWith<_$PerformerDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Outcome _$OutcomeFromJson(Map<String, dynamic> json) {
  return _Outcome.fromJson(json);
}

/// @nodoc
mixin _$Outcome {
  ActionOutcome? get action => throw _privateConstructorUsedError;
  GoalOutCome? get goalOutcome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutcomeCopyWith<Outcome> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutcomeCopyWith<$Res> {
  factory $OutcomeCopyWith(Outcome value, $Res Function(Outcome) then) =
      _$OutcomeCopyWithImpl<$Res, Outcome>;
  @useResult
  $Res call({ActionOutcome? action, GoalOutCome? goalOutcome});
}

/// @nodoc
class _$OutcomeCopyWithImpl<$Res, $Val extends Outcome>
    implements $OutcomeCopyWith<$Res> {
  _$OutcomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? goalOutcome = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as ActionOutcome?,
      goalOutcome: freezed == goalOutcome
          ? _value.goalOutcome
          : goalOutcome // ignore: cast_nullable_to_non_nullable
              as GoalOutCome?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutcomeImplCopyWith<$Res> implements $OutcomeCopyWith<$Res> {
  factory _$$OutcomeImplCopyWith(
          _$OutcomeImpl value, $Res Function(_$OutcomeImpl) then) =
      __$$OutcomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActionOutcome? action, GoalOutCome? goalOutcome});
}

/// @nodoc
class __$$OutcomeImplCopyWithImpl<$Res>
    extends _$OutcomeCopyWithImpl<$Res, _$OutcomeImpl>
    implements _$$OutcomeImplCopyWith<$Res> {
  __$$OutcomeImplCopyWithImpl(
      _$OutcomeImpl _value, $Res Function(_$OutcomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? goalOutcome = freezed,
  }) {
    return _then(_$OutcomeImpl(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as ActionOutcome?,
      goalOutcome: freezed == goalOutcome
          ? _value.goalOutcome
          : goalOutcome // ignore: cast_nullable_to_non_nullable
              as GoalOutCome?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutcomeImpl implements _Outcome {
  const _$OutcomeImpl({this.action, this.goalOutcome});

  factory _$OutcomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutcomeImplFromJson(json);

  @override
  final ActionOutcome? action;
  @override
  final GoalOutCome? goalOutcome;

  @override
  String toString() {
    return 'Outcome(action: $action, goalOutcome: $goalOutcome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutcomeImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.goalOutcome, goalOutcome) ||
                other.goalOutcome == goalOutcome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, action, goalOutcome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutcomeImplCopyWith<_$OutcomeImpl> get copyWith =>
      __$$OutcomeImplCopyWithImpl<_$OutcomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutcomeImplToJson(
      this,
    );
  }
}

abstract class _Outcome implements Outcome {
  const factory _Outcome(
      {final ActionOutcome? action,
      final GoalOutCome? goalOutcome}) = _$OutcomeImpl;

  factory _Outcome.fromJson(Map<String, dynamic> json) = _$OutcomeImpl.fromJson;

  @override
  ActionOutcome? get action;
  @override
  GoalOutCome? get goalOutcome;
  @override
  @JsonKey(ignore: true)
  _$$OutcomeImplCopyWith<_$OutcomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
