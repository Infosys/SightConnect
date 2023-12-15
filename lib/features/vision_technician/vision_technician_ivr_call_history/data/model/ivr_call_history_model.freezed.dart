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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IvrCallHistoryModel _$IvrCallHistoryModelFromJson(Map<String, dynamic> json) {
  return _IvrCallHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$IvrCallHistoryModel {
  String get patientId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get calltype => throw _privateConstructorUsedError;

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
      {String patientId,
      String name,
      String duration,
      String day,
      String time,
      String status,
      String calltype});
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
    Object? duration = null,
    Object? day = null,
    Object? time = null,
    Object? status = null,
    Object? calltype = null,
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
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      calltype: null == calltype
          ? _value.calltype
          : calltype // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IvrCallHistoryModelCopyWith<$Res>
    implements $IvrCallHistoryModelCopyWith<$Res> {
  factory _$$_IvrCallHistoryModelCopyWith(_$_IvrCallHistoryModel value,
          $Res Function(_$_IvrCallHistoryModel) then) =
      __$$_IvrCallHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String patientId,
      String name,
      String duration,
      String day,
      String time,
      String status,
      String calltype});
}

/// @nodoc
class __$$_IvrCallHistoryModelCopyWithImpl<$Res>
    extends _$IvrCallHistoryModelCopyWithImpl<$Res, _$_IvrCallHistoryModel>
    implements _$$_IvrCallHistoryModelCopyWith<$Res> {
  __$$_IvrCallHistoryModelCopyWithImpl(_$_IvrCallHistoryModel _value,
      $Res Function(_$_IvrCallHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = null,
    Object? name = null,
    Object? duration = null,
    Object? day = null,
    Object? time = null,
    Object? status = null,
    Object? calltype = null,
  }) {
    return _then(_$_IvrCallHistoryModel(
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      calltype: null == calltype
          ? _value.calltype
          : calltype // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IvrCallHistoryModel implements _IvrCallHistoryModel {
  const _$_IvrCallHistoryModel(
      {required this.patientId,
      required this.name,
      required this.duration,
      required this.day,
      required this.time,
      required this.status,
      required this.calltype});

  factory _$_IvrCallHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_IvrCallHistoryModelFromJson(json);

  @override
  final String patientId;
  @override
  final String name;
  @override
  final String duration;
  @override
  final String day;
  @override
  final String time;
  @override
  final String status;
  @override
  final String calltype;

  @override
  String toString() {
    return 'IvrCallHistoryModel(patientId: $patientId, name: $name, duration: $duration, day: $day, time: $time, status: $status, calltype: $calltype)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IvrCallHistoryModel &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.calltype, calltype) ||
                other.calltype == calltype));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, patientId, name, duration, day, time, status, calltype);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IvrCallHistoryModelCopyWith<_$_IvrCallHistoryModel> get copyWith =>
      __$$_IvrCallHistoryModelCopyWithImpl<_$_IvrCallHistoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IvrCallHistoryModelToJson(
      this,
    );
  }
}

abstract class _IvrCallHistoryModel implements IvrCallHistoryModel {
  const factory _IvrCallHistoryModel(
      {required final String patientId,
      required final String name,
      required final String duration,
      required final String day,
      required final String time,
      required final String status,
      required final String calltype}) = _$_IvrCallHistoryModel;

  factory _IvrCallHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_IvrCallHistoryModel.fromJson;

  @override
  String get patientId;
  @override
  String get name;
  @override
  String get duration;
  @override
  String get day;
  @override
  String get time;
  @override
  String get status;
  @override
  String get calltype;
  @override
  @JsonKey(ignore: true)
  _$$_IvrCallHistoryModelCopyWith<_$_IvrCallHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
