/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ivr_caller_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IVRCallerDetailsModel _$IVRCallerDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _IVRCallerDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$IVRCallerDetailsModel {
  String? get agentMobile => throw _privateConstructorUsedError;
  String? get callerId => throw _privateConstructorUsedError;
  String? get callerName => throw _privateConstructorUsedError;
  String? get callerNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IVRCallerDetailsModelCopyWith<IVRCallerDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IVRCallerDetailsModelCopyWith<$Res> {
  factory $IVRCallerDetailsModelCopyWith(IVRCallerDetailsModel value,
          $Res Function(IVRCallerDetailsModel) then) =
      _$IVRCallerDetailsModelCopyWithImpl<$Res, IVRCallerDetailsModel>;
  @useResult
  $Res call(
      {String? agentMobile,
      String? callerId,
      String? callerName,
      String? callerNumber});
}

/// @nodoc
class _$IVRCallerDetailsModelCopyWithImpl<$Res,
        $Val extends IVRCallerDetailsModel>
    implements $IVRCallerDetailsModelCopyWith<$Res> {
  _$IVRCallerDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentMobile = freezed,
    Object? callerId = freezed,
    Object? callerName = freezed,
    Object? callerNumber = freezed,
  }) {
    return _then(_value.copyWith(
      agentMobile: freezed == agentMobile
          ? _value.agentMobile
          : agentMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      callerId: freezed == callerId
          ? _value.callerId
          : callerId // ignore: cast_nullable_to_non_nullable
              as String?,
      callerName: freezed == callerName
          ? _value.callerName
          : callerName // ignore: cast_nullable_to_non_nullable
              as String?,
      callerNumber: freezed == callerNumber
          ? _value.callerNumber
          : callerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IVRCallerDetailsModelImplCopyWith<$Res>
    implements $IVRCallerDetailsModelCopyWith<$Res> {
  factory _$$IVRCallerDetailsModelImplCopyWith(
          _$IVRCallerDetailsModelImpl value,
          $Res Function(_$IVRCallerDetailsModelImpl) then) =
      __$$IVRCallerDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? agentMobile,
      String? callerId,
      String? callerName,
      String? callerNumber});
}

/// @nodoc
class __$$IVRCallerDetailsModelImplCopyWithImpl<$Res>
    extends _$IVRCallerDetailsModelCopyWithImpl<$Res,
        _$IVRCallerDetailsModelImpl>
    implements _$$IVRCallerDetailsModelImplCopyWith<$Res> {
  __$$IVRCallerDetailsModelImplCopyWithImpl(_$IVRCallerDetailsModelImpl _value,
      $Res Function(_$IVRCallerDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentMobile = freezed,
    Object? callerId = freezed,
    Object? callerName = freezed,
    Object? callerNumber = freezed,
  }) {
    return _then(_$IVRCallerDetailsModelImpl(
      agentMobile: freezed == agentMobile
          ? _value.agentMobile
          : agentMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      callerId: freezed == callerId
          ? _value.callerId
          : callerId // ignore: cast_nullable_to_non_nullable
              as String?,
      callerName: freezed == callerName
          ? _value.callerName
          : callerName // ignore: cast_nullable_to_non_nullable
              as String?,
      callerNumber: freezed == callerNumber
          ? _value.callerNumber
          : callerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IVRCallerDetailsModelImpl implements _IVRCallerDetailsModel {
  const _$IVRCallerDetailsModelImpl(
      {this.agentMobile, this.callerId, this.callerName, this.callerNumber});

  factory _$IVRCallerDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IVRCallerDetailsModelImplFromJson(json);

  @override
  final String? agentMobile;
  @override
  final String? callerId;
  @override
  final String? callerName;
  @override
  final String? callerNumber;

  @override
  String toString() {
    return 'IVRCallerDetailsModel(agentMobile: $agentMobile, callerId: $callerId, callerName: $callerName, callerNumber: $callerNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IVRCallerDetailsModelImpl &&
            (identical(other.agentMobile, agentMobile) ||
                other.agentMobile == agentMobile) &&
            (identical(other.callerId, callerId) ||
                other.callerId == callerId) &&
            (identical(other.callerName, callerName) ||
                other.callerName == callerName) &&
            (identical(other.callerNumber, callerNumber) ||
                other.callerNumber == callerNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, agentMobile, callerId, callerName, callerNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IVRCallerDetailsModelImplCopyWith<_$IVRCallerDetailsModelImpl>
      get copyWith => __$$IVRCallerDetailsModelImplCopyWithImpl<
          _$IVRCallerDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IVRCallerDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _IVRCallerDetailsModel implements IVRCallerDetailsModel {
  const factory _IVRCallerDetailsModel(
      {final String? agentMobile,
      final String? callerId,
      final String? callerName,
      final String? callerNumber}) = _$IVRCallerDetailsModelImpl;

  factory _IVRCallerDetailsModel.fromJson(Map<String, dynamic> json) =
      _$IVRCallerDetailsModelImpl.fromJson;

  @override
  String? get agentMobile;
  @override
  String? get callerId;
  @override
  String? get callerName;
  @override
  String? get callerNumber;
  @override
  @JsonKey(ignore: true)
  _$$IVRCallerDetailsModelImplCopyWith<_$IVRCallerDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
