// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'volunteer_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VolunteerPostModel _$VolunteerPostModelFromJson(Map<String, dynamic> json) {
  return _VolunteerPostModel.fromJson(json);
}

/// @nodoc
mixin _$VolunteerPostModel {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get userType => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  String? get remark => throw _privateConstructorUsedError;
  bool? get isCooldown => throw _privateConstructorUsedError;
  DateTime? get cooldownPeriod => throw _privateConstructorUsedError;
  PatientModel? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VolunteerPostModelCopyWith<VolunteerPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolunteerPostModelCopyWith<$Res> {
  factory $VolunteerPostModelCopyWith(
          VolunteerPostModel value, $Res Function(VolunteerPostModel) then) =
      _$VolunteerPostModelCopyWithImpl<$Res, VolunteerPostModel>;
  @useResult
  $Res call(
      {int? id,
      int? userId,
      String? userType,
      DateTime? startDate,
      DateTime? endDate,
      Status? status,
      String? remark,
      bool? isCooldown,
      DateTime? cooldownPeriod,
      PatientModel? profile});

  $PatientModelCopyWith<$Res>? get profile;
}

/// @nodoc
class _$VolunteerPostModelCopyWithImpl<$Res, $Val extends VolunteerPostModel>
    implements $VolunteerPostModelCopyWith<$Res> {
  _$VolunteerPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? userType = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
    Object? remark = freezed,
    Object? isCooldown = freezed,
    Object? cooldownPeriod = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      isCooldown: freezed == isCooldown
          ? _value.isCooldown
          : isCooldown // ignore: cast_nullable_to_non_nullable
              as bool?,
      cooldownPeriod: freezed == cooldownPeriod
          ? _value.cooldownPeriod
          : cooldownPeriod // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as PatientModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientModelCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $PatientModelCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VolunteerPostModelImplCopyWith<$Res>
    implements $VolunteerPostModelCopyWith<$Res> {
  factory _$$VolunteerPostModelImplCopyWith(_$VolunteerPostModelImpl value,
          $Res Function(_$VolunteerPostModelImpl) then) =
      __$$VolunteerPostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? userId,
      String? userType,
      DateTime? startDate,
      DateTime? endDate,
      Status? status,
      String? remark,
      bool? isCooldown,
      DateTime? cooldownPeriod,
      PatientModel? profile});

  @override
  $PatientModelCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$VolunteerPostModelImplCopyWithImpl<$Res>
    extends _$VolunteerPostModelCopyWithImpl<$Res, _$VolunteerPostModelImpl>
    implements _$$VolunteerPostModelImplCopyWith<$Res> {
  __$$VolunteerPostModelImplCopyWithImpl(_$VolunteerPostModelImpl _value,
      $Res Function(_$VolunteerPostModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? userType = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
    Object? remark = freezed,
    Object? isCooldown = freezed,
    Object? cooldownPeriod = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$VolunteerPostModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      isCooldown: freezed == isCooldown
          ? _value.isCooldown
          : isCooldown // ignore: cast_nullable_to_non_nullable
              as bool?,
      cooldownPeriod: freezed == cooldownPeriod
          ? _value.cooldownPeriod
          : cooldownPeriod // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as PatientModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VolunteerPostModelImpl implements _VolunteerPostModel {
  const _$VolunteerPostModelImpl(
      {this.id,
      this.userId,
      this.userType,
      this.startDate,
      this.endDate,
      this.status,
      this.remark,
      this.isCooldown,
      this.cooldownPeriod,
      this.profile});

  factory _$VolunteerPostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolunteerPostModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? userId;
  @override
  final String? userType;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final Status? status;
  @override
  final String? remark;
  @override
  final bool? isCooldown;
  @override
  final DateTime? cooldownPeriod;
  @override
  final PatientModel? profile;

  @override
  String toString() {
    return 'VolunteerPostModel(id: $id, userId: $userId, userType: $userType, startDate: $startDate, endDate: $endDate, status: $status, remark: $remark, isCooldown: $isCooldown, cooldownPeriod: $cooldownPeriod, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolunteerPostModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.isCooldown, isCooldown) ||
                other.isCooldown == isCooldown) &&
            (identical(other.cooldownPeriod, cooldownPeriod) ||
                other.cooldownPeriod == cooldownPeriod) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, userType, startDate,
      endDate, status, remark, isCooldown, cooldownPeriod, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VolunteerPostModelImplCopyWith<_$VolunteerPostModelImpl> get copyWith =>
      __$$VolunteerPostModelImplCopyWithImpl<_$VolunteerPostModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolunteerPostModelImplToJson(
      this,
    );
  }
}

abstract class _VolunteerPostModel implements VolunteerPostModel {
  const factory _VolunteerPostModel(
      {final int? id,
      final int? userId,
      final String? userType,
      final DateTime? startDate,
      final DateTime? endDate,
      final Status? status,
      final String? remark,
      final bool? isCooldown,
      final DateTime? cooldownPeriod,
      final PatientModel? profile}) = _$VolunteerPostModelImpl;

  factory _VolunteerPostModel.fromJson(Map<String, dynamic> json) =
      _$VolunteerPostModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get userId;
  @override
  String? get userType;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  Status? get status;
  @override
  String? get remark;
  @override
  bool? get isCooldown;
  @override
  DateTime? get cooldownPeriod;
  @override
  PatientModel? get profile;
  @override
  @JsonKey(ignore: true)
  _$$VolunteerPostModelImplCopyWith<_$VolunteerPostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
