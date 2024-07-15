// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PerformerModel _$PerformerModelFromJson(Map<String, dynamic> json) {
  return _PerformerModel.fromJson(json);
}

/// @nodoc
mixin _$PerformerModel {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get userType => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  PatientModel? get profile => throw _privateConstructorUsedError;

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
  $Res call(
      {int? id,
      int? userId,
      String? userType,
      DateTime? startDate,
      DateTime? endDate,
      String? status,
      PatientModel? profile});

  $PatientModelCopyWith<$Res>? get profile;
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
    Object? id = freezed,
    Object? userId = freezed,
    Object? userType = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
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
              as String?,
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
abstract class _$$PerformerModelImplCopyWith<$Res>
    implements $PerformerModelCopyWith<$Res> {
  factory _$$PerformerModelImplCopyWith(_$PerformerModelImpl value,
          $Res Function(_$PerformerModelImpl) then) =
      __$$PerformerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? userId,
      String? userType,
      DateTime? startDate,
      DateTime? endDate,
      String? status,
      PatientModel? profile});

  @override
  $PatientModelCopyWith<$Res>? get profile;
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
    Object? id = freezed,
    Object? userId = freezed,
    Object? userType = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$PerformerModelImpl(
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
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as PatientModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerformerModelImpl implements _PerformerModel {
  const _$PerformerModelImpl(
      {this.id,
      this.userId,
      this.userType,
      this.startDate,
      this.endDate,
      this.status,
      this.profile});

  factory _$PerformerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformerModelImplFromJson(json);

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
  final String? status;
  @override
  final PatientModel? profile;

  @override
  String toString() {
    return 'PerformerModel(id: $id, userId: $userId, userType: $userType, startDate: $startDate, endDate: $endDate, status: $status, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, userType, startDate, endDate, status, profile);

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
  const factory _PerformerModel(
      {final int? id,
      final int? userId,
      final String? userType,
      final DateTime? startDate,
      final DateTime? endDate,
      final String? status,
      final PatientModel? profile}) = _$PerformerModelImpl;

  factory _PerformerModel.fromJson(Map<String, dynamic> json) =
      _$PerformerModelImpl.fromJson;

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
  String? get status;
  @override
  PatientModel? get profile;
  @override
  @JsonKey(ignore: true)
  _$$PerformerModelImplCopyWith<_$PerformerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
