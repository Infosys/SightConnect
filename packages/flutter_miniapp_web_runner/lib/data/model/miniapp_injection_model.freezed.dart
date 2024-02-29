// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'miniapp_injection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MiniAppInjectionModel _$MiniAppInjectionModelFromJson(
    Map<String, dynamic> json) {
  return _MiniAppInjectionModel.fromJson(json);
}

/// @nodoc
mixin _$MiniAppInjectionModel {
  MiniAppActionType? get action => throw _privateConstructorUsedError;
  String? get parentPatientId => throw _privateConstructorUsedError;
  String? get mobileNumber => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  MiniAppInjectionModelRole? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiniAppInjectionModelCopyWith<MiniAppInjectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiniAppInjectionModelCopyWith<$Res> {
  factory $MiniAppInjectionModelCopyWith(MiniAppInjectionModel value,
          $Res Function(MiniAppInjectionModel) then) =
      _$MiniAppInjectionModelCopyWithImpl<$Res, MiniAppInjectionModel>;
  @useResult
  $Res call(
      {MiniAppActionType? action,
      String? parentPatientId,
      String? mobileNumber,
      String? token,
      MiniAppInjectionModelRole? role});
}

/// @nodoc
class _$MiniAppInjectionModelCopyWithImpl<$Res,
        $Val extends MiniAppInjectionModel>
    implements $MiniAppInjectionModelCopyWith<$Res> {
  _$MiniAppInjectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? parentPatientId = freezed,
    Object? mobileNumber = freezed,
    Object? token = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as MiniAppActionType?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as MiniAppInjectionModelRole?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiniAppInjectionModelImplCopyWith<$Res>
    implements $MiniAppInjectionModelCopyWith<$Res> {
  factory _$$MiniAppInjectionModelImplCopyWith(
          _$MiniAppInjectionModelImpl value,
          $Res Function(_$MiniAppInjectionModelImpl) then) =
      __$$MiniAppInjectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MiniAppActionType? action,
      String? parentPatientId,
      String? mobileNumber,
      String? token,
      MiniAppInjectionModelRole? role});
}

/// @nodoc
class __$$MiniAppInjectionModelImplCopyWithImpl<$Res>
    extends _$MiniAppInjectionModelCopyWithImpl<$Res,
        _$MiniAppInjectionModelImpl>
    implements _$$MiniAppInjectionModelImplCopyWith<$Res> {
  __$$MiniAppInjectionModelImplCopyWithImpl(_$MiniAppInjectionModelImpl _value,
      $Res Function(_$MiniAppInjectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? parentPatientId = freezed,
    Object? mobileNumber = freezed,
    Object? token = freezed,
    Object? role = freezed,
  }) {
    return _then(_$MiniAppInjectionModelImpl(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as MiniAppActionType?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as MiniAppInjectionModelRole?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiniAppInjectionModelImpl implements _MiniAppInjectionModel {
  const _$MiniAppInjectionModelImpl(
      {this.action,
      this.parentPatientId,
      this.mobileNumber,
      this.token,
      this.role});

  factory _$MiniAppInjectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiniAppInjectionModelImplFromJson(json);

  @override
  final MiniAppActionType? action;
  @override
  final String? parentPatientId;
  @override
  final String? mobileNumber;
  @override
  final String? token;
  @override
  final MiniAppInjectionModelRole? role;

  @override
  String toString() {
    return 'MiniAppInjectionModel(action: $action, parentPatientId: $parentPatientId, mobileNumber: $mobileNumber, token: $token, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiniAppInjectionModelImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.parentPatientId, parentPatientId) ||
                other.parentPatientId == parentPatientId) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, action, parentPatientId, mobileNumber, token, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MiniAppInjectionModelImplCopyWith<_$MiniAppInjectionModelImpl>
      get copyWith => __$$MiniAppInjectionModelImplCopyWithImpl<
          _$MiniAppInjectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiniAppInjectionModelImplToJson(
      this,
    );
  }
}

abstract class _MiniAppInjectionModel implements MiniAppInjectionModel {
  const factory _MiniAppInjectionModel(
      {final MiniAppActionType? action,
      final String? parentPatientId,
      final String? mobileNumber,
      final String? token,
      final MiniAppInjectionModelRole? role}) = _$MiniAppInjectionModelImpl;

  factory _MiniAppInjectionModel.fromJson(Map<String, dynamic> json) =
      _$MiniAppInjectionModelImpl.fromJson;

  @override
  MiniAppActionType? get action;
  @override
  String? get parentPatientId;
  @override
  String? get mobileNumber;
  @override
  String? get token;
  @override
  MiniAppInjectionModelRole? get role;
  @override
  @JsonKey(ignore: true)
  _$$MiniAppInjectionModelImplCopyWith<_$MiniAppInjectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
