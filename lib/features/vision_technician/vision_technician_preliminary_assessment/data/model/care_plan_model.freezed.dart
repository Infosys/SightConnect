// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'care_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarePlanModel _$CarePlanModelFromJson(Map<String, dynamic> json) {
  return _CarePlanModel.fromJson(json);
}

/// @nodoc
mixin _$CarePlanModel {
  List<ReportModel>? get reports => throw _privateConstructorUsedError;
  int? get encounterId => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  List<PerformerModel>? get performer => throw _privateConstructorUsedError;
  List<ConditionModel>? get conditions => throw _privateConstructorUsedError;
  List<ServiceRequestModel>? get serviceRequest =>
      throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  List<GoalModel>? get goal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarePlanModelCopyWith<CarePlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarePlanModelCopyWith<$Res> {
  factory $CarePlanModelCopyWith(
          CarePlanModel value, $Res Function(CarePlanModel) then) =
      _$CarePlanModelCopyWithImpl<$Res, CarePlanModel>;
  @useResult
  $Res call(
      {List<ReportModel>? reports,
      int? encounterId,
      int? organizationCode,
      List<PerformerModel>? performer,
      List<ConditionModel>? conditions,
      List<ServiceRequestModel>? serviceRequest,
      String? note,
      String? startDate,
      List<GoalModel>? goal});
}

/// @nodoc
class _$CarePlanModelCopyWithImpl<$Res, $Val extends CarePlanModel>
    implements $CarePlanModelCopyWith<$Res> {
  _$CarePlanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reports = freezed,
    Object? encounterId = freezed,
    Object? organizationCode = freezed,
    Object? performer = freezed,
    Object? conditions = freezed,
    Object? serviceRequest = freezed,
    Object? note = freezed,
    Object? startDate = freezed,
    Object? goal = freezed,
  }) {
    return _then(_value.copyWith(
      reports: freezed == reports
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>?,
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<PerformerModel>?,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<ConditionModel>?,
      serviceRequest: freezed == serviceRequest
          ? _value.serviceRequest
          : serviceRequest // ignore: cast_nullable_to_non_nullable
              as List<ServiceRequestModel>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as List<GoalModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarePlanModelCopyWith<$Res>
    implements $CarePlanModelCopyWith<$Res> {
  factory _$$_CarePlanModelCopyWith(
          _$_CarePlanModel value, $Res Function(_$_CarePlanModel) then) =
      __$$_CarePlanModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ReportModel>? reports,
      int? encounterId,
      int? organizationCode,
      List<PerformerModel>? performer,
      List<ConditionModel>? conditions,
      List<ServiceRequestModel>? serviceRequest,
      String? note,
      String? startDate,
      List<GoalModel>? goal});
}

/// @nodoc
class __$$_CarePlanModelCopyWithImpl<$Res>
    extends _$CarePlanModelCopyWithImpl<$Res, _$_CarePlanModel>
    implements _$$_CarePlanModelCopyWith<$Res> {
  __$$_CarePlanModelCopyWithImpl(
      _$_CarePlanModel _value, $Res Function(_$_CarePlanModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reports = freezed,
    Object? encounterId = freezed,
    Object? organizationCode = freezed,
    Object? performer = freezed,
    Object? conditions = freezed,
    Object? serviceRequest = freezed,
    Object? note = freezed,
    Object? startDate = freezed,
    Object? goal = freezed,
  }) {
    return _then(_$_CarePlanModel(
      reports: freezed == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportModel>?,
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value._performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<PerformerModel>?,
      conditions: freezed == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<ConditionModel>?,
      serviceRequest: freezed == serviceRequest
          ? _value._serviceRequest
          : serviceRequest // ignore: cast_nullable_to_non_nullable
              as List<ServiceRequestModel>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      goal: freezed == goal
          ? _value._goal
          : goal // ignore: cast_nullable_to_non_nullable
              as List<GoalModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarePlanModel implements _CarePlanModel {
  const _$_CarePlanModel(
      {final List<ReportModel>? reports,
      this.encounterId,
      this.organizationCode,
      final List<PerformerModel>? performer,
      final List<ConditionModel>? conditions,
      final List<ServiceRequestModel>? serviceRequest,
      this.note,
      this.startDate,
      final List<GoalModel>? goal})
      : _reports = reports,
        _performer = performer,
        _conditions = conditions,
        _serviceRequest = serviceRequest,
        _goal = goal;

  factory _$_CarePlanModel.fromJson(Map<String, dynamic> json) =>
      _$$_CarePlanModelFromJson(json);

  final List<ReportModel>? _reports;
  @override
  List<ReportModel>? get reports {
    final value = _reports;
    if (value == null) return null;
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? encounterId;
  @override
  final int? organizationCode;
  final List<PerformerModel>? _performer;
  @override
  List<PerformerModel>? get performer {
    final value = _performer;
    if (value == null) return null;
    if (_performer is EqualUnmodifiableListView) return _performer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ConditionModel>? _conditions;
  @override
  List<ConditionModel>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ServiceRequestModel>? _serviceRequest;
  @override
  List<ServiceRequestModel>? get serviceRequest {
    final value = _serviceRequest;
    if (value == null) return null;
    if (_serviceRequest is EqualUnmodifiableListView) return _serviceRequest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? note;
  @override
  final String? startDate;
  final List<GoalModel>? _goal;
  @override
  List<GoalModel>? get goal {
    final value = _goal;
    if (value == null) return null;
    if (_goal is EqualUnmodifiableListView) return _goal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CarePlanModel(reports: $reports, encounterId: $encounterId, organizationCode: $organizationCode, performer: $performer, conditions: $conditions, serviceRequest: $serviceRequest, note: $note, startDate: $startDate, goal: $goal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarePlanModel &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            const DeepCollectionEquality()
                .equals(other._performer, _performer) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality()
                .equals(other._serviceRequest, _serviceRequest) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality().equals(other._goal, _goal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_reports),
      encounterId,
      organizationCode,
      const DeepCollectionEquality().hash(_performer),
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_serviceRequest),
      note,
      startDate,
      const DeepCollectionEquality().hash(_goal));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarePlanModelCopyWith<_$_CarePlanModel> get copyWith =>
      __$$_CarePlanModelCopyWithImpl<_$_CarePlanModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarePlanModelToJson(
      this,
    );
  }
}

abstract class _CarePlanModel implements CarePlanModel {
  const factory _CarePlanModel(
      {final List<ReportModel>? reports,
      final int? encounterId,
      final int? organizationCode,
      final List<PerformerModel>? performer,
      final List<ConditionModel>? conditions,
      final List<ServiceRequestModel>? serviceRequest,
      final String? note,
      final String? startDate,
      final List<GoalModel>? goal}) = _$_CarePlanModel;

  factory _CarePlanModel.fromJson(Map<String, dynamic> json) =
      _$_CarePlanModel.fromJson;

  @override
  List<ReportModel>? get reports;
  @override
  int? get encounterId;
  @override
  int? get organizationCode;
  @override
  List<PerformerModel>? get performer;
  @override
  List<ConditionModel>? get conditions;
  @override
  List<ServiceRequestModel>? get serviceRequest;
  @override
  String? get note;
  @override
  String? get startDate;
  @override
  List<GoalModel>? get goal;
  @override
  @JsonKey(ignore: true)
  _$$_CarePlanModelCopyWith<_$_CarePlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportModel _$ReportModelFromJson(Map<String, dynamic> json) {
  return _ReportModel.fromJson(json);
}

/// @nodoc
mixin _$ReportModel {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportModelCopyWith<ReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportModelCopyWith<$Res> {
  factory $ReportModelCopyWith(
          ReportModel value, $Res Function(ReportModel) then) =
      _$ReportModelCopyWithImpl<$Res, ReportModel>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$ReportModelCopyWithImpl<$Res, $Val extends ReportModel>
    implements $ReportModelCopyWith<$Res> {
  _$ReportModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ReportModelCopyWith<$Res>
    implements $ReportModelCopyWith<$Res> {
  factory _$$_ReportModelCopyWith(
          _$_ReportModel value, $Res Function(_$_ReportModel) then) =
      __$$_ReportModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$_ReportModelCopyWithImpl<$Res>
    extends _$ReportModelCopyWithImpl<$Res, _$_ReportModel>
    implements _$$_ReportModelCopyWith<$Res> {
  __$$_ReportModelCopyWithImpl(
      _$_ReportModel _value, $Res Function(_$_ReportModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_ReportModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportModel implements _ReportModel {
  const _$_ReportModel({this.id});

  factory _$_ReportModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReportModelFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'ReportModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportModelCopyWith<_$_ReportModel> get copyWith =>
      __$$_ReportModelCopyWithImpl<_$_ReportModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportModelToJson(
      this,
    );
  }
}

abstract class _ReportModel implements ReportModel {
  const factory _ReportModel({final int? id}) = _$_ReportModel;

  factory _ReportModel.fromJson(Map<String, dynamic> json) =
      _$_ReportModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ReportModelCopyWith<_$_ReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PerformerModel _$PerformerModelFromJson(Map<String, dynamic> json) {
  return _PerformerModel.fromJson(json);
}

/// @nodoc
mixin _$PerformerModel {
  String? get role => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformerModelCopyWith<PerformerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformerModelCopyWith<$Res> {
  factory $PerformerModelCopyWith(
          PerformerModel value, $Res Function(PerformerModel) then) =
      _$PerformerModelCopyWithImpl<$Res, PerformerModel>;
  @useResult
  $Res call({String? role, int? identifier});
}

/// @nodoc
class _$PerformerModelCopyWithImpl<$Res, $Val extends PerformerModel>
    implements $PerformerModelCopyWith<$Res> {
  _$PerformerModelCopyWithImpl(this._value, this._then);

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
              as String?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PerformerModelCopyWith<$Res>
    implements $PerformerModelCopyWith<$Res> {
  factory _$$_PerformerModelCopyWith(
          _$_PerformerModel value, $Res Function(_$_PerformerModel) then) =
      __$$_PerformerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? role, int? identifier});
}

/// @nodoc
class __$$_PerformerModelCopyWithImpl<$Res>
    extends _$PerformerModelCopyWithImpl<$Res, _$_PerformerModel>
    implements _$$_PerformerModelCopyWith<$Res> {
  __$$_PerformerModelCopyWithImpl(
      _$_PerformerModel _value, $Res Function(_$_PerformerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$_PerformerModel(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PerformerModel implements _PerformerModel {
  const _$_PerformerModel({this.role, this.identifier});

  factory _$_PerformerModel.fromJson(Map<String, dynamic> json) =>
      _$$_PerformerModelFromJson(json);

  @override
  final String? role;
  @override
  final int? identifier;

  @override
  String toString() {
    return 'PerformerModel(role: $role, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PerformerModel &&
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
  _$$_PerformerModelCopyWith<_$_PerformerModel> get copyWith =>
      __$$_PerformerModelCopyWithImpl<_$_PerformerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerformerModelToJson(
      this,
    );
  }
}

abstract class _PerformerModel implements PerformerModel {
  const factory _PerformerModel({final String? role, final int? identifier}) =
      _$_PerformerModel;

  factory _PerformerModel.fromJson(Map<String, dynamic> json) =
      _$_PerformerModel.fromJson;

  @override
  String? get role;
  @override
  int? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$_PerformerModelCopyWith<_$_PerformerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ConditionModel _$ConditionModelFromJson(Map<String, dynamic> json) {
  return _ConditionModel.fromJson(json);
}

/// @nodoc
mixin _$ConditionModel {
  String? get recordedDate => throw _privateConstructorUsedError;
  String? get bodySite => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionModelCopyWith<ConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionModelCopyWith<$Res> {
  factory $ConditionModelCopyWith(
          ConditionModel value, $Res Function(ConditionModel) then) =
      _$ConditionModelCopyWithImpl<$Res, ConditionModel>;
  @useResult
  $Res call(
      {String? recordedDate, String? bodySite, String? code, String? note});
}

/// @nodoc
class _$ConditionModelCopyWithImpl<$Res, $Val extends ConditionModel>
    implements $ConditionModelCopyWith<$Res> {
  _$ConditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordedDate = freezed,
    Object? bodySite = freezed,
    Object? code = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      recordedDate: freezed == recordedDate
          ? _value.recordedDate
          : recordedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_ConditionModelCopyWith<$Res>
    implements $ConditionModelCopyWith<$Res> {
  factory _$$_ConditionModelCopyWith(
          _$_ConditionModel value, $Res Function(_$_ConditionModel) then) =
      __$$_ConditionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? recordedDate, String? bodySite, String? code, String? note});
}

/// @nodoc
class __$$_ConditionModelCopyWithImpl<$Res>
    extends _$ConditionModelCopyWithImpl<$Res, _$_ConditionModel>
    implements _$$_ConditionModelCopyWith<$Res> {
  __$$_ConditionModelCopyWithImpl(
      _$_ConditionModel _value, $Res Function(_$_ConditionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordedDate = freezed,
    Object? bodySite = freezed,
    Object? code = freezed,
    Object? note = freezed,
  }) {
    return _then(_$_ConditionModel(
      recordedDate: freezed == recordedDate
          ? _value.recordedDate
          : recordedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_ConditionModel implements _ConditionModel {
  const _$_ConditionModel(
      {this.recordedDate, this.bodySite, this.code, this.note});

  factory _$_ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConditionModelFromJson(json);

  @override
  final String? recordedDate;
  @override
  final String? bodySite;
  @override
  final String? code;
  @override
  final String? note;

  @override
  String toString() {
    return 'ConditionModel(recordedDate: $recordedDate, bodySite: $bodySite, code: $code, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConditionModel &&
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
      Object.hash(runtimeType, recordedDate, bodySite, code, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConditionModelCopyWith<_$_ConditionModel> get copyWith =>
      __$$_ConditionModelCopyWithImpl<_$_ConditionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConditionModelToJson(
      this,
    );
  }
}

abstract class _ConditionModel implements ConditionModel {
  const factory _ConditionModel(
      {final String? recordedDate,
      final String? bodySite,
      final String? code,
      final String? note}) = _$_ConditionModel;

  factory _ConditionModel.fromJson(Map<String, dynamic> json) =
      _$_ConditionModel.fromJson;

  @override
  String? get recordedDate;
  @override
  String? get bodySite;
  @override
  String? get code;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$_ConditionModelCopyWith<_$_ConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceRequestModel _$ServiceRequestModelFromJson(Map<String, dynamic> json) {
  return _ServiceRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceRequestModel {
  String? get note => throw _privateConstructorUsedError;
  String? get patientInstruction => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;
  String? get bodySite => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceRequestModelCopyWith<ServiceRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestModelCopyWith<$Res> {
  factory $ServiceRequestModelCopyWith(
          ServiceRequestModel value, $Res Function(ServiceRequestModel) then) =
      _$ServiceRequestModelCopyWithImpl<$Res, ServiceRequestModel>;
  @useResult
  $Res call(
      {String? note,
      String? patientInstruction,
      int? identifier,
      String? bodySite,
      String? priority});
}

/// @nodoc
class _$ServiceRequestModelCopyWithImpl<$Res, $Val extends ServiceRequestModel>
    implements $ServiceRequestModelCopyWith<$Res> {
  _$ServiceRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
    Object? patientInstruction = freezed,
    Object? identifier = freezed,
    Object? bodySite = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      patientInstruction: freezed == patientInstruction
          ? _value.patientInstruction
          : patientInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceRequestModelCopyWith<$Res>
    implements $ServiceRequestModelCopyWith<$Res> {
  factory _$$_ServiceRequestModelCopyWith(_$_ServiceRequestModel value,
          $Res Function(_$_ServiceRequestModel) then) =
      __$$_ServiceRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? note,
      String? patientInstruction,
      int? identifier,
      String? bodySite,
      String? priority});
}

/// @nodoc
class __$$_ServiceRequestModelCopyWithImpl<$Res>
    extends _$ServiceRequestModelCopyWithImpl<$Res, _$_ServiceRequestModel>
    implements _$$_ServiceRequestModelCopyWith<$Res> {
  __$$_ServiceRequestModelCopyWithImpl(_$_ServiceRequestModel _value,
      $Res Function(_$_ServiceRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
    Object? patientInstruction = freezed,
    Object? identifier = freezed,
    Object? bodySite = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$_ServiceRequestModel(
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      patientInstruction: freezed == patientInstruction
          ? _value.patientInstruction
          : patientInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceRequestModel implements _ServiceRequestModel {
  const _$_ServiceRequestModel(
      {this.note,
      this.patientInstruction,
      this.identifier,
      this.bodySite,
      this.priority});

  factory _$_ServiceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceRequestModelFromJson(json);

  @override
  final String? note;
  @override
  final String? patientInstruction;
  @override
  final int? identifier;
  @override
  final String? bodySite;
  @override
  final String? priority;

  @override
  String toString() {
    return 'ServiceRequestModel(note: $note, patientInstruction: $patientInstruction, identifier: $identifier, bodySite: $bodySite, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceRequestModel &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.patientInstruction, patientInstruction) ||
                other.patientInstruction == patientInstruction) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.bodySite, bodySite) ||
                other.bodySite == bodySite) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, note, patientInstruction, identifier, bodySite, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceRequestModelCopyWith<_$_ServiceRequestModel> get copyWith =>
      __$$_ServiceRequestModelCopyWithImpl<_$_ServiceRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceRequestModelToJson(
      this,
    );
  }
}

abstract class _ServiceRequestModel implements ServiceRequestModel {
  const factory _ServiceRequestModel(
      {final String? note,
      final String? patientInstruction,
      final int? identifier,
      final String? bodySite,
      final String? priority}) = _$_ServiceRequestModel;

  factory _ServiceRequestModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceRequestModel.fromJson;

  @override
  String? get note;
  @override
  String? get patientInstruction;
  @override
  int? get identifier;
  @override
  String? get bodySite;
  @override
  String? get priority;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceRequestModelCopyWith<_$_ServiceRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GoalModel _$GoalModelFromJson(Map<String, dynamic> json) {
  return _GoalModel.fromJson(json);
}

/// @nodoc
mixin _$GoalModel {
  String? get statusReason => throw _privateConstructorUsedError;
  String? get achievementStatus => throw _privateConstructorUsedError;
  List<GoalOutcomeModel>? get outcomes => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  List<TargetModel>? get target => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalModelCopyWith<GoalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalModelCopyWith<$Res> {
  factory $GoalModelCopyWith(GoalModel value, $Res Function(GoalModel) then) =
      _$GoalModelCopyWithImpl<$Res, GoalModel>;
  @useResult
  $Res call(
      {String? statusReason,
      String? achievementStatus,
      List<GoalOutcomeModel>? outcomes,
      String? note,
      String? startDate,
      List<TargetModel>? target});
}

/// @nodoc
class _$GoalModelCopyWithImpl<$Res, $Val extends GoalModel>
    implements $GoalModelCopyWith<$Res> {
  _$GoalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusReason = freezed,
    Object? achievementStatus = freezed,
    Object? outcomes = freezed,
    Object? note = freezed,
    Object? startDate = freezed,
    Object? target = freezed,
  }) {
    return _then(_value.copyWith(
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementStatus: freezed == achievementStatus
          ? _value.achievementStatus
          : achievementStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      outcomes: freezed == outcomes
          ? _value.outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<GoalOutcomeModel>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as List<TargetModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GoalModelCopyWith<$Res> implements $GoalModelCopyWith<$Res> {
  factory _$$_GoalModelCopyWith(
          _$_GoalModel value, $Res Function(_$_GoalModel) then) =
      __$$_GoalModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? statusReason,
      String? achievementStatus,
      List<GoalOutcomeModel>? outcomes,
      String? note,
      String? startDate,
      List<TargetModel>? target});
}

/// @nodoc
class __$$_GoalModelCopyWithImpl<$Res>
    extends _$GoalModelCopyWithImpl<$Res, _$_GoalModel>
    implements _$$_GoalModelCopyWith<$Res> {
  __$$_GoalModelCopyWithImpl(
      _$_GoalModel _value, $Res Function(_$_GoalModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusReason = freezed,
    Object? achievementStatus = freezed,
    Object? outcomes = freezed,
    Object? note = freezed,
    Object? startDate = freezed,
    Object? target = freezed,
  }) {
    return _then(_$_GoalModel(
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementStatus: freezed == achievementStatus
          ? _value.achievementStatus
          : achievementStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      outcomes: freezed == outcomes
          ? _value._outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<GoalOutcomeModel>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      target: freezed == target
          ? _value._target
          : target // ignore: cast_nullable_to_non_nullable
              as List<TargetModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GoalModel implements _GoalModel {
  const _$_GoalModel(
      {this.statusReason,
      this.achievementStatus,
      final List<GoalOutcomeModel>? outcomes,
      this.note,
      this.startDate,
      final List<TargetModel>? target})
      : _outcomes = outcomes,
        _target = target;

  factory _$_GoalModel.fromJson(Map<String, dynamic> json) =>
      _$$_GoalModelFromJson(json);

  @override
  final String? statusReason;
  @override
  final String? achievementStatus;
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
  final String? note;
  @override
  final String? startDate;
  final List<TargetModel>? _target;
  @override
  List<TargetModel>? get target {
    final value = _target;
    if (value == null) return null;
    if (_target is EqualUnmodifiableListView) return _target;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GoalModel(statusReason: $statusReason, achievementStatus: $achievementStatus, outcomes: $outcomes, note: $note, startDate: $startDate, target: $target)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoalModel &&
            (identical(other.statusReason, statusReason) ||
                other.statusReason == statusReason) &&
            (identical(other.achievementStatus, achievementStatus) ||
                other.achievementStatus == achievementStatus) &&
            const DeepCollectionEquality().equals(other._outcomes, _outcomes) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality().equals(other._target, _target));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      statusReason,
      achievementStatus,
      const DeepCollectionEquality().hash(_outcomes),
      note,
      startDate,
      const DeepCollectionEquality().hash(_target));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoalModelCopyWith<_$_GoalModel> get copyWith =>
      __$$_GoalModelCopyWithImpl<_$_GoalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoalModelToJson(
      this,
    );
  }
}

abstract class _GoalModel implements GoalModel {
  const factory _GoalModel(
      {final String? statusReason,
      final String? achievementStatus,
      final List<GoalOutcomeModel>? outcomes,
      final String? note,
      final String? startDate,
      final List<TargetModel>? target}) = _$_GoalModel;

  factory _GoalModel.fromJson(Map<String, dynamic> json) =
      _$_GoalModel.fromJson;

  @override
  String? get statusReason;
  @override
  String? get achievementStatus;
  @override
  List<GoalOutcomeModel>? get outcomes;
  @override
  String? get note;
  @override
  String? get startDate;
  @override
  List<TargetModel>? get target;
  @override
  @JsonKey(ignore: true)
  _$$_GoalModelCopyWith<_$_GoalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GoalOutcomeModel _$GoalOutcomeModelFromJson(Map<String, dynamic> json) {
  return _GoalOutcomeModel.fromJson(json);
}

/// @nodoc
mixin _$GoalOutcomeModel {
  String? get goalOutcome => throw _privateConstructorUsedError;

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
  $Res call({String? goalOutcome});
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
    Object? goalOutcome = freezed,
  }) {
    return _then(_value.copyWith(
      goalOutcome: freezed == goalOutcome
          ? _value.goalOutcome
          : goalOutcome // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GoalOutcomeModelCopyWith<$Res>
    implements $GoalOutcomeModelCopyWith<$Res> {
  factory _$$_GoalOutcomeModelCopyWith(
          _$_GoalOutcomeModel value, $Res Function(_$_GoalOutcomeModel) then) =
      __$$_GoalOutcomeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? goalOutcome});
}

/// @nodoc
class __$$_GoalOutcomeModelCopyWithImpl<$Res>
    extends _$GoalOutcomeModelCopyWithImpl<$Res, _$_GoalOutcomeModel>
    implements _$$_GoalOutcomeModelCopyWith<$Res> {
  __$$_GoalOutcomeModelCopyWithImpl(
      _$_GoalOutcomeModel _value, $Res Function(_$_GoalOutcomeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goalOutcome = freezed,
  }) {
    return _then(_$_GoalOutcomeModel(
      goalOutcome: freezed == goalOutcome
          ? _value.goalOutcome
          : goalOutcome // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GoalOutcomeModel implements _GoalOutcomeModel {
  const _$_GoalOutcomeModel({this.goalOutcome});

  factory _$_GoalOutcomeModel.fromJson(Map<String, dynamic> json) =>
      _$$_GoalOutcomeModelFromJson(json);

  @override
  final String? goalOutcome;

  @override
  String toString() {
    return 'GoalOutcomeModel(goalOutcome: $goalOutcome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoalOutcomeModel &&
            (identical(other.goalOutcome, goalOutcome) ||
                other.goalOutcome == goalOutcome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, goalOutcome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoalOutcomeModelCopyWith<_$_GoalOutcomeModel> get copyWith =>
      __$$_GoalOutcomeModelCopyWithImpl<_$_GoalOutcomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoalOutcomeModelToJson(
      this,
    );
  }
}

abstract class _GoalOutcomeModel implements GoalOutcomeModel {
  const factory _GoalOutcomeModel({final String? goalOutcome}) =
      _$_GoalOutcomeModel;

  factory _GoalOutcomeModel.fromJson(Map<String, dynamic> json) =
      _$_GoalOutcomeModel.fromJson;

  @override
  String? get goalOutcome;
  @override
  @JsonKey(ignore: true)
  _$$_GoalOutcomeModelCopyWith<_$_GoalOutcomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TargetModel _$TargetModelFromJson(Map<String, dynamic> json) {
  return _TargetModel.fromJson(json);
}

/// @nodoc
mixin _$TargetModel {
  String? get detailString => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TargetModelCopyWith<TargetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetModelCopyWith<$Res> {
  factory $TargetModelCopyWith(
          TargetModel value, $Res Function(TargetModel) then) =
      _$TargetModelCopyWithImpl<$Res, TargetModel>;
  @useResult
  $Res call({String? detailString});
}

/// @nodoc
class _$TargetModelCopyWithImpl<$Res, $Val extends TargetModel>
    implements $TargetModelCopyWith<$Res> {
  _$TargetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailString = freezed,
  }) {
    return _then(_value.copyWith(
      detailString: freezed == detailString
          ? _value.detailString
          : detailString // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TargetModelCopyWith<$Res>
    implements $TargetModelCopyWith<$Res> {
  factory _$$_TargetModelCopyWith(
          _$_TargetModel value, $Res Function(_$_TargetModel) then) =
      __$$_TargetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? detailString});
}

/// @nodoc
class __$$_TargetModelCopyWithImpl<$Res>
    extends _$TargetModelCopyWithImpl<$Res, _$_TargetModel>
    implements _$$_TargetModelCopyWith<$Res> {
  __$$_TargetModelCopyWithImpl(
      _$_TargetModel _value, $Res Function(_$_TargetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailString = freezed,
  }) {
    return _then(_$_TargetModel(
      detailString: freezed == detailString
          ? _value.detailString
          : detailString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TargetModel implements _TargetModel {
  const _$_TargetModel({this.detailString});

  factory _$_TargetModel.fromJson(Map<String, dynamic> json) =>
      _$$_TargetModelFromJson(json);

  @override
  final String? detailString;

  @override
  String toString() {
    return 'TargetModel(detailString: $detailString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TargetModel &&
            (identical(other.detailString, detailString) ||
                other.detailString == detailString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, detailString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TargetModelCopyWith<_$_TargetModel> get copyWith =>
      __$$_TargetModelCopyWithImpl<_$_TargetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TargetModelToJson(
      this,
    );
  }
}

abstract class _TargetModel implements TargetModel {
  const factory _TargetModel({final String? detailString}) = _$_TargetModel;

  factory _TargetModel.fromJson(Map<String, dynamic> json) =
      _$_TargetModel.fromJson;

  @override
  String? get detailString;
  @override
  @JsonKey(ignore: true)
  _$$_TargetModelCopyWith<_$_TargetModel> get copyWith =>
      throw _privateConstructorUsedError;
}
