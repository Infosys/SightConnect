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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CloseAssessmentDto _$CloseAssessmentDtoFromJson(Map<String, dynamic> json) {
  return _CloseAssessmentDto.fromJson(json);
}

/// @nodoc
mixin _$CloseAssessmentDto {
  int? get encounterId => throw _privateConstructorUsedError;
  int? get diagnosticReportId => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
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
abstract class _$$_CloseAssessmentDtoCopyWith<$Res>
    implements $CloseAssessmentDtoCopyWith<$Res> {
  factory _$$_CloseAssessmentDtoCopyWith(_$_CloseAssessmentDto value,
          $Res Function(_$_CloseAssessmentDto) then) =
      __$$_CloseAssessmentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? encounterId,
      int? diagnosticReportId,
      int? organizationCode,
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
class __$$_CloseAssessmentDtoCopyWithImpl<$Res>
    extends _$CloseAssessmentDtoCopyWithImpl<$Res, _$_CloseAssessmentDto>
    implements _$$_CloseAssessmentDtoCopyWith<$Res> {
  __$$_CloseAssessmentDtoCopyWithImpl(
      _$_CloseAssessmentDto _value, $Res Function(_$_CloseAssessmentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? diagnosticReportId = freezed,
    Object? organizationCode = freezed,
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
    return _then(_$_CloseAssessmentDto(
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
class _$_CloseAssessmentDto implements _CloseAssessmentDto {
  const _$_CloseAssessmentDto(
      {this.encounterId,
      this.diagnosticReportId,
      this.organizationCode,
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

  factory _$_CloseAssessmentDto.fromJson(Map<String, dynamic> json) =>
      _$$_CloseAssessmentDtoFromJson(json);

  @override
  final int? encounterId;
  @override
  final int? diagnosticReportId;
  @override
  final int? organizationCode;
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
    return 'CloseAssessmentDto(encounterId: $encounterId, diagnosticReportId: $diagnosticReportId, organizationCode: $organizationCode, performer: $performer, carePlanId: $carePlanId, goalId: $goalId, goalAction: $goalAction, statusReason: $statusReason, achievementStatus: $achievementStatus, statusDate: $statusDate, outcomes: $outcomes, note: $note, mrn: $mrn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CloseAssessmentDto &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.diagnosticReportId, diagnosticReportId) ||
                other.diagnosticReportId == diagnosticReportId) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
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
  _$$_CloseAssessmentDtoCopyWith<_$_CloseAssessmentDto> get copyWith =>
      __$$_CloseAssessmentDtoCopyWithImpl<_$_CloseAssessmentDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CloseAssessmentDtoToJson(
      this,
    );
  }
}

abstract class _CloseAssessmentDto implements CloseAssessmentDto {
  const factory _CloseAssessmentDto(
      {final int? encounterId,
      final int? diagnosticReportId,
      final int? organizationCode,
      final List<PerformerDto>? performer,
      final int? carePlanId,
      final int? goalId,
      final GoalAction? goalAction,
      final String? statusReason,
      final AchievementStatus? achievementStatus,
      @TimestampConverter() final DateTime? statusDate,
      final List<Outcome>? outcomes,
      final String? note,
      final String? mrn}) = _$_CloseAssessmentDto;

  factory _CloseAssessmentDto.fromJson(Map<String, dynamic> json) =
      _$_CloseAssessmentDto.fromJson;

  @override
  int? get encounterId;
  @override
  int? get diagnosticReportId;
  @override
  int? get organizationCode;
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
  _$$_CloseAssessmentDtoCopyWith<_$_CloseAssessmentDto> get copyWith =>
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
abstract class _$$_PerformerDtoCopyWith<$Res>
    implements $PerformerDtoCopyWith<$Res> {
  factory _$$_PerformerDtoCopyWith(
          _$_PerformerDto value, $Res Function(_$_PerformerDto) then) =
      __$$_PerformerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Role? role, int? identifier});
}

/// @nodoc
class __$$_PerformerDtoCopyWithImpl<$Res>
    extends _$PerformerDtoCopyWithImpl<$Res, _$_PerformerDto>
    implements _$$_PerformerDtoCopyWith<$Res> {
  __$$_PerformerDtoCopyWithImpl(
      _$_PerformerDto _value, $Res Function(_$_PerformerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$_PerformerDto(
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
class _$_PerformerDto implements _PerformerDto {
  const _$_PerformerDto({this.role, this.identifier});

  factory _$_PerformerDto.fromJson(Map<String, dynamic> json) =>
      _$$_PerformerDtoFromJson(json);

  @override
  final Role? role;
  @override
  final int? identifier;

  @override
  String toString() {
    return 'PerformerDto(role: $role, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PerformerDto &&
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
  _$$_PerformerDtoCopyWith<_$_PerformerDto> get copyWith =>
      __$$_PerformerDtoCopyWithImpl<_$_PerformerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerformerDtoToJson(
      this,
    );
  }
}

abstract class _PerformerDto implements PerformerDto {
  const factory _PerformerDto({final Role? role, final int? identifier}) =
      _$_PerformerDto;

  factory _PerformerDto.fromJson(Map<String, dynamic> json) =
      _$_PerformerDto.fromJson;

  @override
  Role? get role;
  @override
  int? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$_PerformerDtoCopyWith<_$_PerformerDto> get copyWith =>
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
abstract class _$$_OutcomeCopyWith<$Res> implements $OutcomeCopyWith<$Res> {
  factory _$$_OutcomeCopyWith(
          _$_Outcome value, $Res Function(_$_Outcome) then) =
      __$$_OutcomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActionOutcome? action, GoalOutCome? goalOutcome});
}

/// @nodoc
class __$$_OutcomeCopyWithImpl<$Res>
    extends _$OutcomeCopyWithImpl<$Res, _$_Outcome>
    implements _$$_OutcomeCopyWith<$Res> {
  __$$_OutcomeCopyWithImpl(_$_Outcome _value, $Res Function(_$_Outcome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? goalOutcome = freezed,
  }) {
    return _then(_$_Outcome(
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
class _$_Outcome implements _Outcome {
  const _$_Outcome({this.action, this.goalOutcome});

  factory _$_Outcome.fromJson(Map<String, dynamic> json) =>
      _$$_OutcomeFromJson(json);

  @override
  final ActionOutcome? action;
  @override
  final GoalOutCome? goalOutcome;

  @override
  String toString() {
    return 'Outcome(action: $action, goalOutcome: $goalOutcome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Outcome &&
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
  _$$_OutcomeCopyWith<_$_Outcome> get copyWith =>
      __$$_OutcomeCopyWithImpl<_$_Outcome>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutcomeToJson(
      this,
    );
  }
}

abstract class _Outcome implements Outcome {
  const factory _Outcome(
      {final ActionOutcome? action,
      final GoalOutCome? goalOutcome}) = _$_Outcome;

  factory _Outcome.fromJson(Map<String, dynamic> json) = _$_Outcome.fromJson;

  @override
  ActionOutcome? get action;
  @override
  GoalOutCome? get goalOutcome;
  @override
  @JsonKey(ignore: true)
  _$$_OutcomeCopyWith<_$_Outcome> get copyWith =>
      throw _privateConstructorUsedError;
}
