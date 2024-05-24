// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availability_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvailabilityModel _$AvailabilityModelFromJson(Map<String, dynamic> json) {
  return _AvailabilityModel.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityModel {
  int get userId => throw _privateConstructorUsedError;
  String? get userType => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityModelCopyWith<AvailabilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityModelCopyWith<$Res> {
  factory $AvailabilityModelCopyWith(
          AvailabilityModel value, $Res Function(AvailabilityModel) then) =
      _$AvailabilityModelCopyWithImpl<$Res, AvailabilityModel>;
  @useResult
  $Res call({int userId, String? userType, String? mobile, bool? available});
}

/// @nodoc
class _$AvailabilityModelCopyWithImpl<$Res, $Val extends AvailabilityModel>
    implements $AvailabilityModelCopyWith<$Res> {
  _$AvailabilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userType = freezed,
    Object? mobile = freezed,
    Object? available = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityModelImplCopyWith<$Res>
    implements $AvailabilityModelCopyWith<$Res> {
  factory _$$AvailabilityModelImplCopyWith(_$AvailabilityModelImpl value,
          $Res Function(_$AvailabilityModelImpl) then) =
      __$$AvailabilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String? userType, String? mobile, bool? available});
}

/// @nodoc
class __$$AvailabilityModelImplCopyWithImpl<$Res>
    extends _$AvailabilityModelCopyWithImpl<$Res, _$AvailabilityModelImpl>
    implements _$$AvailabilityModelImplCopyWith<$Res> {
  __$$AvailabilityModelImplCopyWithImpl(_$AvailabilityModelImpl _value,
      $Res Function(_$AvailabilityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userType = freezed,
    Object? mobile = freezed,
    Object? available = freezed,
  }) {
    return _then(_$AvailabilityModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityModelImpl implements _AvailabilityModel {
  const _$AvailabilityModelImpl(
      {required this.userId, this.userType, this.mobile, this.available});

  factory _$AvailabilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityModelImplFromJson(json);

  @override
  final int userId;
  @override
  final String? userType;
  @override
  final String? mobile;
  @override
  final bool? available;

  @override
  String toString() {
    return 'AvailabilityModel(userId: $userId, userType: $userType, mobile: $mobile, available: $available)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, userType, mobile, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityModelImplCopyWith<_$AvailabilityModelImpl> get copyWith =>
      __$$AvailabilityModelImplCopyWithImpl<_$AvailabilityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityModelImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityModel implements AvailabilityModel {
  const factory _AvailabilityModel(
      {required final int userId,
      final String? userType,
      final String? mobile,
      final bool? available}) = _$AvailabilityModelImpl;

  factory _AvailabilityModel.fromJson(Map<String, dynamic> json) =
      _$AvailabilityModelImpl.fromJson;

  @override
  int get userId;
  @override
  String? get userType;
  @override
  String? get mobile;
  @override
  bool? get available;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityModelImplCopyWith<_$AvailabilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
