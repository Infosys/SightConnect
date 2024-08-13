// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'care_plan_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarePlanPostModel _$CarePlanPostModelFromJson(Map<String, dynamic> json) {
  return _CarePlanPostModel.fromJson(json);
}

/// @nodoc
mixin _$CarePlanPostModel {
  int? get id => throw _privateConstructorUsedError;
  List<ReportModel>? get reports => throw _privateConstructorUsedError;
  int? get encounterId => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  int? get tenantCode => throw _privateConstructorUsedError;
  List<PerformerModel>? get performer => throw _privateConstructorUsedError;
  List<ConditionModel>? get conditions => throw _privateConstructorUsedError;
  List<ServiceRequestModel>? get serviceRequest =>
      throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;
  List<GoalModel>? get goal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarePlanPostModelCopyWith<CarePlanPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarePlanPostModelCopyWith<$Res> {
  factory $CarePlanPostModelCopyWith(
          CarePlanPostModel value, $Res Function(CarePlanPostModel) then) =
      _$CarePlanPostModelCopyWithImpl<$Res, CarePlanPostModel>;
  @useResult
  $Res call(
      {int? id,
      List<ReportModel>? reports,
      int? encounterId,
      int? organizationCode,
      int? tenantCode,
      List<PerformerModel>? performer,
      List<ConditionModel>? conditions,
      List<ServiceRequestModel>? serviceRequest,
      String? note,
      @TimestampConverter() DateTime? startDate,
      List<GoalModel>? goal});
}

/// @nodoc
class _$CarePlanPostModelCopyWithImpl<$Res, $Val extends CarePlanPostModel>
    implements $CarePlanPostModelCopyWith<$Res> {
  _$CarePlanPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reports = freezed,
    Object? encounterId = freezed,
    Object? organizationCode = freezed,
    Object? tenantCode = freezed,
    Object? performer = freezed,
    Object? conditions = freezed,
    Object? serviceRequest = freezed,
    Object? note = freezed,
    Object? startDate = freezed,
    Object? goal = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      tenantCode: freezed == tenantCode
          ? _value.tenantCode
          : tenantCode // ignore: cast_nullable_to_non_nullable
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
              as DateTime?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as List<GoalModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarePlanPostModelImplCopyWith<$Res>
    implements $CarePlanPostModelCopyWith<$Res> {
  factory _$$CarePlanPostModelImplCopyWith(_$CarePlanPostModelImpl value,
          $Res Function(_$CarePlanPostModelImpl) then) =
      __$$CarePlanPostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      List<ReportModel>? reports,
      int? encounterId,
      int? organizationCode,
      int? tenantCode,
      List<PerformerModel>? performer,
      List<ConditionModel>? conditions,
      List<ServiceRequestModel>? serviceRequest,
      String? note,
      @TimestampConverter() DateTime? startDate,
      List<GoalModel>? goal});
}

/// @nodoc
class __$$CarePlanPostModelImplCopyWithImpl<$Res>
    extends _$CarePlanPostModelCopyWithImpl<$Res, _$CarePlanPostModelImpl>
    implements _$$CarePlanPostModelImplCopyWith<$Res> {
  __$$CarePlanPostModelImplCopyWithImpl(_$CarePlanPostModelImpl _value,
      $Res Function(_$CarePlanPostModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reports = freezed,
    Object? encounterId = freezed,
    Object? organizationCode = freezed,
    Object? tenantCode = freezed,
    Object? performer = freezed,
    Object? conditions = freezed,
    Object? serviceRequest = freezed,
    Object? note = freezed,
    Object? startDate = freezed,
    Object? goal = freezed,
  }) {
    return _then(_$CarePlanPostModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      tenantCode: freezed == tenantCode
          ? _value.tenantCode
          : tenantCode // ignore: cast_nullable_to_non_nullable
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
              as DateTime?,
      goal: freezed == goal
          ? _value._goal
          : goal // ignore: cast_nullable_to_non_nullable
              as List<GoalModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarePlanPostModelImpl implements _CarePlanPostModel {
  const _$CarePlanPostModelImpl(
      {this.id,
      final List<ReportModel>? reports,
      this.encounterId,
      this.organizationCode,
      this.tenantCode,
      final List<PerformerModel>? performer,
      final List<ConditionModel>? conditions,
      final List<ServiceRequestModel>? serviceRequest,
      this.note,
      @TimestampConverter() this.startDate,
      final List<GoalModel>? goal})
      : _reports = reports,
        _performer = performer,
        _conditions = conditions,
        _serviceRequest = serviceRequest,
        _goal = goal;

  factory _$CarePlanPostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarePlanPostModelImplFromJson(json);

  @override
  final int? id;
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
  @override
  final int? tenantCode;
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
  @TimestampConverter()
  final DateTime? startDate;
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
    return 'CarePlanPostModel(id: $id, reports: $reports, encounterId: $encounterId, organizationCode: $organizationCode, tenantCode: $tenantCode, performer: $performer, conditions: $conditions, serviceRequest: $serviceRequest, note: $note, startDate: $startDate, goal: $goal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarePlanPostModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            (identical(other.tenantCode, tenantCode) ||
                other.tenantCode == tenantCode) &&
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
      id,
      const DeepCollectionEquality().hash(_reports),
      encounterId,
      organizationCode,
      tenantCode,
      const DeepCollectionEquality().hash(_performer),
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_serviceRequest),
      note,
      startDate,
      const DeepCollectionEquality().hash(_goal));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarePlanPostModelImplCopyWith<_$CarePlanPostModelImpl> get copyWith =>
      __$$CarePlanPostModelImplCopyWithImpl<_$CarePlanPostModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarePlanPostModelImplToJson(
      this,
    );
  }
}

abstract class _CarePlanPostModel implements CarePlanPostModel {
  const factory _CarePlanPostModel(
      {final int? id,
      final List<ReportModel>? reports,
      final int? encounterId,
      final int? organizationCode,
      final int? tenantCode,
      final List<PerformerModel>? performer,
      final List<ConditionModel>? conditions,
      final List<ServiceRequestModel>? serviceRequest,
      final String? note,
      @TimestampConverter() final DateTime? startDate,
      final List<GoalModel>? goal}) = _$CarePlanPostModelImpl;

  factory _CarePlanPostModel.fromJson(Map<String, dynamic> json) =
      _$CarePlanPostModelImpl.fromJson;

  @override
  int? get id;
  @override
  List<ReportModel>? get reports;
  @override
  int? get encounterId;
  @override
  int? get organizationCode;
  @override
  int? get tenantCode;
  @override
  List<PerformerModel>? get performer;
  @override
  List<ConditionModel>? get conditions;
  @override
  List<ServiceRequestModel>? get serviceRequest;
  @override
  String? get note;
  @override
  @TimestampConverter()
  DateTime? get startDate;
  @override
  List<GoalModel>? get goal;
  @override
  @JsonKey(ignore: true)
  _$$CarePlanPostModelImplCopyWith<_$CarePlanPostModelImpl> get copyWith =>
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
abstract class _$$ReportModelImplCopyWith<$Res>
    implements $ReportModelCopyWith<$Res> {
  factory _$$ReportModelImplCopyWith(
          _$ReportModelImpl value, $Res Function(_$ReportModelImpl) then) =
      __$$ReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$ReportModelImplCopyWithImpl<$Res>
    extends _$ReportModelCopyWithImpl<$Res, _$ReportModelImpl>
    implements _$$ReportModelImplCopyWith<$Res> {
  __$$ReportModelImplCopyWithImpl(
      _$ReportModelImpl _value, $Res Function(_$ReportModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ReportModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportModelImpl implements _ReportModel {
  const _$ReportModelImpl({this.id});

  factory _$ReportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportModelImplFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'ReportModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportModelImplCopyWith<_$ReportModelImpl> get copyWith =>
      __$$ReportModelImplCopyWithImpl<_$ReportModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportModelImplToJson(
      this,
    );
  }
}

abstract class _ReportModel implements ReportModel {
  const factory _ReportModel({final int? id}) = _$ReportModelImpl;

  factory _ReportModel.fromJson(Map<String, dynamic> json) =
      _$ReportModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$ReportModelImplCopyWith<_$ReportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PerformerModel _$PerformerModelFromJson(Map<String, dynamic> json) {
  return _PerformerModel.fromJson(json);
}

/// @nodoc
mixin _$PerformerModel {
  Role? get role => throw _privateConstructorUsedError;
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
  $Res call({Role? role, int? identifier});
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
              as Role?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerformerModelImplCopyWith<$Res>
    implements $PerformerModelCopyWith<$Res> {
  factory _$$PerformerModelImplCopyWith(_$PerformerModelImpl value,
          $Res Function(_$PerformerModelImpl) then) =
      __$$PerformerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Role? role, int? identifier});
}

/// @nodoc
class __$$PerformerModelImplCopyWithImpl<$Res>
    extends _$PerformerModelCopyWithImpl<$Res, _$PerformerModelImpl>
    implements _$$PerformerModelImplCopyWith<$Res> {
  __$$PerformerModelImplCopyWithImpl(
      _$PerformerModelImpl _value, $Res Function(_$PerformerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$PerformerModelImpl(
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
class _$PerformerModelImpl implements _PerformerModel {
  const _$PerformerModelImpl({this.role, this.identifier});

  factory _$PerformerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformerModelImplFromJson(json);

  @override
  final Role? role;
  @override
  final int? identifier;

  @override
  String toString() {
    return 'PerformerModel(role: $role, identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformerModelImpl &&
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
  _$$PerformerModelImplCopyWith<_$PerformerModelImpl> get copyWith =>
      __$$PerformerModelImplCopyWithImpl<_$PerformerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformerModelImplToJson(
      this,
    );
  }
}

abstract class _PerformerModel implements PerformerModel {
  const factory _PerformerModel({final Role? role, final int? identifier}) =
      _$PerformerModelImpl;

  factory _PerformerModel.fromJson(Map<String, dynamic> json) =
      _$PerformerModelImpl.fromJson;

  @override
  Role? get role;
  @override
  int? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$PerformerModelImplCopyWith<_$PerformerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConditionModel _$ConditionModelFromJson(Map<String, dynamic> json) {
  return _ConditionModel.fromJson(json);
}

/// @nodoc
mixin _$ConditionModel {
  int? get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get recordedDate => throw _privateConstructorUsedError;
  BodySite? get bodySite => throw _privateConstructorUsedError;
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
      {int? id,
      @TimestampConverter() DateTime? recordedDate,
      BodySite? bodySite,
      String? code,
      String? note});
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
abstract class _$$ConditionModelImplCopyWith<$Res>
    implements $ConditionModelCopyWith<$Res> {
  factory _$$ConditionModelImplCopyWith(_$ConditionModelImpl value,
          $Res Function(_$ConditionModelImpl) then) =
      __$$ConditionModelImplCopyWithImpl<$Res>;
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
class __$$ConditionModelImplCopyWithImpl<$Res>
    extends _$ConditionModelCopyWithImpl<$Res, _$ConditionModelImpl>
    implements _$$ConditionModelImplCopyWith<$Res> {
  __$$ConditionModelImplCopyWithImpl(
      _$ConditionModelImpl _value, $Res Function(_$ConditionModelImpl) _then)
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
    return _then(_$ConditionModelImpl(
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
class _$ConditionModelImpl implements _ConditionModel {
  const _$ConditionModelImpl(
      {this.id,
      @TimestampConverter() this.recordedDate,
      this.bodySite,
      this.code,
      this.note});

  factory _$ConditionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionModelImplFromJson(json);

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
    return 'ConditionModel(id: $id, recordedDate: $recordedDate, bodySite: $bodySite, code: $code, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionModelImpl &&
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
  _$$ConditionModelImplCopyWith<_$ConditionModelImpl> get copyWith =>
      __$$ConditionModelImplCopyWithImpl<_$ConditionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionModelImplToJson(
      this,
    );
  }
}

abstract class _ConditionModel implements ConditionModel {
  const factory _ConditionModel(
      {final int? id,
      @TimestampConverter() final DateTime? recordedDate,
      final BodySite? bodySite,
      final String? code,
      final String? note}) = _$ConditionModelImpl;

  factory _ConditionModel.fromJson(Map<String, dynamic> json) =
      _$ConditionModelImpl.fromJson;

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
  _$$ConditionModelImplCopyWith<_$ConditionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceRequestModel _$ServiceRequestModelFromJson(Map<String, dynamic> json) {
  return _ServiceRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceRequestModel {
  int? get id => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  PatientInstruction? get patientInstruction =>
      throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;
  BodySite? get bodySite => throw _privateConstructorUsedError;
  TriagePriority? get priority => throw _privateConstructorUsedError;

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
      {int? id,
      String? note,
      PatientInstruction? patientInstruction,
      int? identifier,
      BodySite? bodySite,
      TriagePriority? priority});
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
    Object? id = freezed,
    Object? note = freezed,
    Object? patientInstruction = freezed,
    Object? identifier = freezed,
    Object? bodySite = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      patientInstruction: freezed == patientInstruction
          ? _value.patientInstruction
          : patientInstruction // ignore: cast_nullable_to_non_nullable
              as PatientInstruction?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TriagePriority?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceRequestModelImplCopyWith<$Res>
    implements $ServiceRequestModelCopyWith<$Res> {
  factory _$$ServiceRequestModelImplCopyWith(_$ServiceRequestModelImpl value,
          $Res Function(_$ServiceRequestModelImpl) then) =
      __$$ServiceRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? note,
      PatientInstruction? patientInstruction,
      int? identifier,
      BodySite? bodySite,
      TriagePriority? priority});
}

/// @nodoc
class __$$ServiceRequestModelImplCopyWithImpl<$Res>
    extends _$ServiceRequestModelCopyWithImpl<$Res, _$ServiceRequestModelImpl>
    implements _$$ServiceRequestModelImplCopyWith<$Res> {
  __$$ServiceRequestModelImplCopyWithImpl(_$ServiceRequestModelImpl _value,
      $Res Function(_$ServiceRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? note = freezed,
    Object? patientInstruction = freezed,
    Object? identifier = freezed,
    Object? bodySite = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$ServiceRequestModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      patientInstruction: freezed == patientInstruction
          ? _value.patientInstruction
          : patientInstruction // ignore: cast_nullable_to_non_nullable
              as PatientInstruction?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TriagePriority?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceRequestModelImpl implements _ServiceRequestModel {
  const _$ServiceRequestModelImpl(
      {this.id,
      this.note,
      this.patientInstruction,
      this.identifier,
      this.bodySite,
      this.priority});

  factory _$ServiceRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceRequestModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? note;
  @override
  final PatientInstruction? patientInstruction;
  @override
  final int? identifier;
  @override
  final BodySite? bodySite;
  @override
  final TriagePriority? priority;

  @override
  String toString() {
    return 'ServiceRequestModel(id: $id, note: $note, patientInstruction: $patientInstruction, identifier: $identifier, bodySite: $bodySite, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(runtimeType, id, note, patientInstruction,
      identifier, bodySite, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceRequestModelImplCopyWith<_$ServiceRequestModelImpl> get copyWith =>
      __$$ServiceRequestModelImplCopyWithImpl<_$ServiceRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceRequestModel implements ServiceRequestModel {
  const factory _ServiceRequestModel(
      {final int? id,
      final String? note,
      final PatientInstruction? patientInstruction,
      final int? identifier,
      final BodySite? bodySite,
      final TriagePriority? priority}) = _$ServiceRequestModelImpl;

  factory _ServiceRequestModel.fromJson(Map<String, dynamic> json) =
      _$ServiceRequestModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get note;
  @override
  PatientInstruction? get patientInstruction;
  @override
  int? get identifier;
  @override
  BodySite? get bodySite;
  @override
  TriagePriority? get priority;
  @override
  @JsonKey(ignore: true)
  _$$ServiceRequestModelImplCopyWith<_$ServiceRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoalModel _$GoalModelFromJson(Map<String, dynamic> json) {
  return _GoalModel.fromJson(json);
}

/// @nodoc
mixin _$GoalModel {
  int? get id => throw _privateConstructorUsedError;
  String? get statusReason => throw _privateConstructorUsedError;
  Status? get achievementStatus => throw _privateConstructorUsedError;
  List<GoalOutcomeModel>? get outcomes => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;
  List<TargetModel>? get target => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;

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
      {int? id,
      String? statusReason,
      Status? achievementStatus,
      List<GoalOutcomeModel>? outcomes,
      String? note,
      @TimestampConverter() DateTime? startDate,
      List<TargetModel>? target,
      Category? category});
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
    Object? id = freezed,
    Object? statusReason = freezed,
    Object? achievementStatus = freezed,
    Object? outcomes = freezed,
    Object? note = freezed,
    Object? startDate = freezed,
    Object? target = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementStatus: freezed == achievementStatus
          ? _value.achievementStatus
          : achievementStatus // ignore: cast_nullable_to_non_nullable
              as Status?,
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
              as DateTime?,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as List<TargetModel>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalModelImplCopyWith<$Res>
    implements $GoalModelCopyWith<$Res> {
  factory _$$GoalModelImplCopyWith(
          _$GoalModelImpl value, $Res Function(_$GoalModelImpl) then) =
      __$$GoalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? statusReason,
      Status? achievementStatus,
      List<GoalOutcomeModel>? outcomes,
      String? note,
      @TimestampConverter() DateTime? startDate,
      List<TargetModel>? target,
      Category? category});
}

/// @nodoc
class __$$GoalModelImplCopyWithImpl<$Res>
    extends _$GoalModelCopyWithImpl<$Res, _$GoalModelImpl>
    implements _$$GoalModelImplCopyWith<$Res> {
  __$$GoalModelImplCopyWithImpl(
      _$GoalModelImpl _value, $Res Function(_$GoalModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? statusReason = freezed,
    Object? achievementStatus = freezed,
    Object? outcomes = freezed,
    Object? note = freezed,
    Object? startDate = freezed,
    Object? target = freezed,
    Object? category = freezed,
  }) {
    return _then(_$GoalModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      statusReason: freezed == statusReason
          ? _value.statusReason
          : statusReason // ignore: cast_nullable_to_non_nullable
              as String?,
      achievementStatus: freezed == achievementStatus
          ? _value.achievementStatus
          : achievementStatus // ignore: cast_nullable_to_non_nullable
              as Status?,
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
              as DateTime?,
      target: freezed == target
          ? _value._target
          : target // ignore: cast_nullable_to_non_nullable
              as List<TargetModel>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalModelImpl implements _GoalModel {
  const _$GoalModelImpl(
      {this.id,
      this.statusReason,
      this.achievementStatus,
      final List<GoalOutcomeModel>? outcomes,
      this.note,
      @TimestampConverter() this.startDate,
      final List<TargetModel>? target,
      this.category})
      : _outcomes = outcomes,
        _target = target;

  factory _$GoalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? statusReason;
  @override
  final Status? achievementStatus;
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
  @TimestampConverter()
  final DateTime? startDate;
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
  final Category? category;

  @override
  String toString() {
    return 'GoalModel(id: $id, statusReason: $statusReason, achievementStatus: $achievementStatus, outcomes: $outcomes, note: $note, startDate: $startDate, target: $target, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.statusReason, statusReason) ||
                other.statusReason == statusReason) &&
            (identical(other.achievementStatus, achievementStatus) ||
                other.achievementStatus == achievementStatus) &&
            const DeepCollectionEquality().equals(other._outcomes, _outcomes) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality().equals(other._target, _target) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      statusReason,
      achievementStatus,
      const DeepCollectionEquality().hash(_outcomes),
      note,
      startDate,
      const DeepCollectionEquality().hash(_target),
      category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalModelImplCopyWith<_$GoalModelImpl> get copyWith =>
      __$$GoalModelImplCopyWithImpl<_$GoalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalModelImplToJson(
      this,
    );
  }
}

abstract class _GoalModel implements GoalModel {
  const factory _GoalModel(
      {final int? id,
      final String? statusReason,
      final Status? achievementStatus,
      final List<GoalOutcomeModel>? outcomes,
      final String? note,
      @TimestampConverter() final DateTime? startDate,
      final List<TargetModel>? target,
      final Category? category}) = _$GoalModelImpl;

  factory _GoalModel.fromJson(Map<String, dynamic> json) =
      _$GoalModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get statusReason;
  @override
  Status? get achievementStatus;
  @override
  List<GoalOutcomeModel>? get outcomes;
  @override
  String? get note;
  @override
  @TimestampConverter()
  DateTime? get startDate;
  @override
  List<TargetModel>? get target;
  @override
  Category? get category;
  @override
  @JsonKey(ignore: true)
  _$$GoalModelImplCopyWith<_$GoalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoalOutcomeModel _$GoalOutcomeModelFromJson(Map<String, dynamic> json) {
  return _GoalOutcomeModel.fromJson(json);
}

/// @nodoc
mixin _$GoalOutcomeModel {
  int? get id => throw _privateConstructorUsedError;
  GoalOutCome? get goalOutcome => throw _privateConstructorUsedError;

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
  $Res call({int? id, GoalOutCome? goalOutcome});
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
              as GoalOutCome?,
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
  $Res call({int? id, GoalOutCome? goalOutcome});
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
              as GoalOutCome?,
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
  final GoalOutCome? goalOutcome;

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
      {final int? id, final GoalOutCome? goalOutcome}) = _$GoalOutcomeModelImpl;

  factory _GoalOutcomeModel.fromJson(Map<String, dynamic> json) =
      _$GoalOutcomeModelImpl.fromJson;

  @override
  int? get id;
  @override
  GoalOutCome? get goalOutcome;
  @override
  @JsonKey(ignore: true)
  _$$GoalOutcomeModelImplCopyWith<_$GoalOutcomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TargetModel _$TargetModelFromJson(Map<String, dynamic> json) {
  return _TargetModel.fromJson(json);
}

/// @nodoc
mixin _$TargetModel {
  int? get id => throw _privateConstructorUsedError;
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
  $Res call({int? id, String? detailString});
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
    Object? id = freezed,
    Object? detailString = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      detailString: freezed == detailString
          ? _value.detailString
          : detailString // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TargetModelImplCopyWith<$Res>
    implements $TargetModelCopyWith<$Res> {
  factory _$$TargetModelImplCopyWith(
          _$TargetModelImpl value, $Res Function(_$TargetModelImpl) then) =
      __$$TargetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? detailString});
}

/// @nodoc
class __$$TargetModelImplCopyWithImpl<$Res>
    extends _$TargetModelCopyWithImpl<$Res, _$TargetModelImpl>
    implements _$$TargetModelImplCopyWith<$Res> {
  __$$TargetModelImplCopyWithImpl(
      _$TargetModelImpl _value, $Res Function(_$TargetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? detailString = freezed,
  }) {
    return _then(_$TargetModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      detailString: freezed == detailString
          ? _value.detailString
          : detailString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TargetModelImpl implements _TargetModel {
  const _$TargetModelImpl({this.id, this.detailString});

  factory _$TargetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TargetModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? detailString;

  @override
  String toString() {
    return 'TargetModel(id: $id, detailString: $detailString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.detailString, detailString) ||
                other.detailString == detailString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, detailString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetModelImplCopyWith<_$TargetModelImpl> get copyWith =>
      __$$TargetModelImplCopyWithImpl<_$TargetModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TargetModelImplToJson(
      this,
    );
  }
}

abstract class _TargetModel implements TargetModel {
  const factory _TargetModel({final int? id, final String? detailString}) =
      _$TargetModelImpl;

  factory _TargetModel.fromJson(Map<String, dynamic> json) =
      _$TargetModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get detailString;
  @override
  @JsonKey(ignore: true)
  _$$TargetModelImplCopyWith<_$TargetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
