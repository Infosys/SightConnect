/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ivr_call_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IvrCallHistoryModel _$IvrCallHistoryModelFromJson(Map<String, dynamic> json) {
  return _IvrCallHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$IvrCallHistoryModel {
  @JsonKey(name: "callerIdentifier")
  String get patientId => throw _privateConstructorUsedError;
  @JsonKey(name: "callerName")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "callerNumber")
  String? get mobile => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  DateTime get logDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get direction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IvrCallHistoryModelCopyWith<IvrCallHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IvrCallHistoryModelCopyWith<$Res> {
  factory $IvrCallHistoryModelCopyWith(
          IvrCallHistoryModel value, $Res Function(IvrCallHistoryModel) then) =
      _$IvrCallHistoryModelCopyWithImpl<$Res, IvrCallHistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "callerIdentifier") String patientId,
      @JsonKey(name: "callerName") String name,
      @JsonKey(name: "callerNumber") String? mobile,
      int? duration,
      DateTime logDate,
      String status,
      String direction});
}

/// @nodoc
class _$IvrCallHistoryModelCopyWithImpl<$Res, $Val extends IvrCallHistoryModel>
    implements $IvrCallHistoryModelCopyWith<$Res> {
  _$IvrCallHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = null,
    Object? name = null,
    Object? mobile = freezed,
    Object? duration = freezed,
    Object? logDate = null,
    Object? status = null,
    Object? direction = null,
  }) {
    return _then(_value.copyWith(
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      logDate: null == logDate
          ? _value.logDate
          : logDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IvrCallHistoryModelImplCopyWith<$Res>
    implements $IvrCallHistoryModelCopyWith<$Res> {
  factory _$$IvrCallHistoryModelImplCopyWith(_$IvrCallHistoryModelImpl value,
          $Res Function(_$IvrCallHistoryModelImpl) then) =
      __$$IvrCallHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "callerIdentifier") String patientId,
      @JsonKey(name: "callerName") String name,
      @JsonKey(name: "callerNumber") String? mobile,
      int? duration,
      DateTime logDate,
      String status,
      String direction});
}

/// @nodoc
class __$$IvrCallHistoryModelImplCopyWithImpl<$Res>
    extends _$IvrCallHistoryModelCopyWithImpl<$Res, _$IvrCallHistoryModelImpl>
    implements _$$IvrCallHistoryModelImplCopyWith<$Res> {
  __$$IvrCallHistoryModelImplCopyWithImpl(_$IvrCallHistoryModelImpl _value,
      $Res Function(_$IvrCallHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = null,
    Object? name = null,
    Object? mobile = freezed,
    Object? duration = freezed,
    Object? logDate = null,
    Object? status = null,
    Object? direction = null,
  }) {
    return _then(_$IvrCallHistoryModelImpl(
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      logDate: null == logDate
          ? _value.logDate
          : logDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IvrCallHistoryModelImpl implements _IvrCallHistoryModel {
  const _$IvrCallHistoryModelImpl(
      {@JsonKey(name: "callerIdentifier") required this.patientId,
      @JsonKey(name: "callerName") required this.name,
      @JsonKey(name: "callerNumber") this.mobile,
      this.duration,
      required this.logDate,
      required this.status,
      required this.direction});

  factory _$IvrCallHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IvrCallHistoryModelImplFromJson(json);

  @override
  @JsonKey(name: "callerIdentifier")
  final String patientId;
  @override
  @JsonKey(name: "callerName")
  final String name;
  @override
  @JsonKey(name: "callerNumber")
  final String? mobile;
  @override
  final int? duration;
  @override
  final DateTime logDate;
  @override
  final String status;
  @override
  final String direction;

  @override
  String toString() {
    return 'IvrCallHistoryModel(patientId: $patientId, name: $name, mobile: $mobile, duration: $duration, logDate: $logDate, status: $status, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IvrCallHistoryModelImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.logDate, logDate) || other.logDate == logDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, patientId, name, mobile,
      duration, logDate, status, direction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IvrCallHistoryModelImplCopyWith<_$IvrCallHistoryModelImpl> get copyWith =>
      __$$IvrCallHistoryModelImplCopyWithImpl<_$IvrCallHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IvrCallHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _IvrCallHistoryModel implements IvrCallHistoryModel {
  const factory _IvrCallHistoryModel(
      {@JsonKey(name: "callerIdentifier") required final String patientId,
      @JsonKey(name: "callerName") required final String name,
      @JsonKey(name: "callerNumber") final String? mobile,
      final int? duration,
      required final DateTime logDate,
      required final String status,
      required final String direction}) = _$IvrCallHistoryModelImpl;

  factory _IvrCallHistoryModel.fromJson(Map<String, dynamic> json) =
      _$IvrCallHistoryModelImpl.fromJson;

  @override
  @JsonKey(name: "callerIdentifier")
  String get patientId;
  @override
  @JsonKey(name: "callerName")
  String get name;
  @override
  @JsonKey(name: "callerNumber")
  String? get mobile;
  @override
  int? get duration;
  @override
  DateTime get logDate;
  @override
  String get status;
  @override
  String get direction;
  @override
  @JsonKey(ignore: true)
  _$$IvrCallHistoryModelImplCopyWith<_$IvrCallHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
