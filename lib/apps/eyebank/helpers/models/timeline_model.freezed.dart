// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimelineModel _$TimelineModelFromJson(Map<String, dynamic> json) {
  return _TimelineModel.fromJson(json);
}

/// @nodoc
mixin _$TimelineModel {
  AssessmentName? get assessmentName => throw _privateConstructorUsedError;
  String? get assessmentVersion => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimelineModelCopyWith<TimelineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineModelCopyWith<$Res> {
  factory $TimelineModelCopyWith(
          TimelineModel value, $Res Function(TimelineModel) then) =
      _$TimelineModelCopyWithImpl<$Res, TimelineModel>;
  @useResult
  $Res call(
      {AssessmentName? assessmentName,
      String? assessmentVersion,
      List<Datum>? data});
}

/// @nodoc
class _$TimelineModelCopyWithImpl<$Res, $Val extends TimelineModel>
    implements $TimelineModelCopyWith<$Res> {
  _$TimelineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assessmentName = freezed,
    Object? assessmentVersion = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      assessmentName: freezed == assessmentName
          ? _value.assessmentName
          : assessmentName // ignore: cast_nullable_to_non_nullable
              as AssessmentName?,
      assessmentVersion: freezed == assessmentVersion
          ? _value.assessmentVersion
          : assessmentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimelineModelImplCopyWith<$Res>
    implements $TimelineModelCopyWith<$Res> {
  factory _$$TimelineModelImplCopyWith(
          _$TimelineModelImpl value, $Res Function(_$TimelineModelImpl) then) =
      __$$TimelineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AssessmentName? assessmentName,
      String? assessmentVersion,
      List<Datum>? data});
}

/// @nodoc
class __$$TimelineModelImplCopyWithImpl<$Res>
    extends _$TimelineModelCopyWithImpl<$Res, _$TimelineModelImpl>
    implements _$$TimelineModelImplCopyWith<$Res> {
  __$$TimelineModelImplCopyWithImpl(
      _$TimelineModelImpl _value, $Res Function(_$TimelineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assessmentName = freezed,
    Object? assessmentVersion = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TimelineModelImpl(
      assessmentName: freezed == assessmentName
          ? _value.assessmentName
          : assessmentName // ignore: cast_nullable_to_non_nullable
              as AssessmentName?,
      assessmentVersion: freezed == assessmentVersion
          ? _value.assessmentVersion
          : assessmentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimelineModelImpl implements _TimelineModel {
  const _$TimelineModelImpl(
      {this.assessmentName, this.assessmentVersion, final List<Datum>? data})
      : _data = data;

  factory _$TimelineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimelineModelImplFromJson(json);

  @override
  final AssessmentName? assessmentName;
  @override
  final String? assessmentVersion;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TimelineModel(assessmentName: $assessmentName, assessmentVersion: $assessmentVersion, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineModelImpl &&
            (identical(other.assessmentName, assessmentName) ||
                other.assessmentName == assessmentName) &&
            (identical(other.assessmentVersion, assessmentVersion) ||
                other.assessmentVersion == assessmentVersion) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, assessmentName,
      assessmentVersion, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineModelImplCopyWith<_$TimelineModelImpl> get copyWith =>
      __$$TimelineModelImplCopyWithImpl<_$TimelineModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimelineModelImplToJson(
      this,
    );
  }
}

abstract class _TimelineModel implements TimelineModel {
  const factory _TimelineModel(
      {final AssessmentName? assessmentName,
      final String? assessmentVersion,
      final List<Datum>? data}) = _$TimelineModelImpl;

  factory _TimelineModel.fromJson(Map<String, dynamic> json) =
      _$TimelineModelImpl.fromJson;

  @override
  AssessmentName? get assessmentName;
  @override
  String? get assessmentVersion;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$TimelineModelImplCopyWith<_$TimelineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  String? get title => throw _privateConstructorUsedError;
  DateTime? get initiateDate => throw _privateConstructorUsedError;
  DateTime? get recentUpdated => throw _privateConstructorUsedError;
  EncounterStatus? get status => throw _privateConstructorUsedError;
  int? get serviceRequestId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {String? title,
      DateTime? initiateDate,
      DateTime? recentUpdated,
      EncounterStatus? status,
      int? serviceRequestId});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? initiateDate = freezed,
    Object? recentUpdated = freezed,
    Object? status = freezed,
    Object? serviceRequestId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      initiateDate: freezed == initiateDate
          ? _value.initiateDate
          : initiateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recentUpdated: freezed == recentUpdated
          ? _value.recentUpdated
          : recentUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EncounterStatus?,
      serviceRequestId: freezed == serviceRequestId
          ? _value.serviceRequestId
          : serviceRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      DateTime? initiateDate,
      DateTime? recentUpdated,
      EncounterStatus? status,
      int? serviceRequestId});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? initiateDate = freezed,
    Object? recentUpdated = freezed,
    Object? status = freezed,
    Object? serviceRequestId = freezed,
  }) {
    return _then(_$DatumImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      initiateDate: freezed == initiateDate
          ? _value.initiateDate
          : initiateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recentUpdated: freezed == recentUpdated
          ? _value.recentUpdated
          : recentUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EncounterStatus?,
      serviceRequestId: freezed == serviceRequestId
          ? _value.serviceRequestId
          : serviceRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {this.title,
      this.initiateDate,
      this.recentUpdated,
      this.status,
      this.serviceRequestId});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final String? title;
  @override
  final DateTime? initiateDate;
  @override
  final DateTime? recentUpdated;
  @override
  final EncounterStatus? status;
  @override
  final int? serviceRequestId;

  @override
  String toString() {
    return 'Datum(title: $title, initiateDate: $initiateDate, recentUpdated: $recentUpdated, status: $status, serviceRequestId: $serviceRequestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.initiateDate, initiateDate) ||
                other.initiateDate == initiateDate) &&
            (identical(other.recentUpdated, recentUpdated) ||
                other.recentUpdated == recentUpdated) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.serviceRequestId, serviceRequestId) ||
                other.serviceRequestId == serviceRequestId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, initiateDate,
      recentUpdated, status, serviceRequestId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final String? title,
      final DateTime? initiateDate,
      final DateTime? recentUpdated,
      final EncounterStatus? status,
      final int? serviceRequestId}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  String? get title;
  @override
  DateTime? get initiateDate;
  @override
  DateTime? get recentUpdated;
  @override
  EncounterStatus? get status;
  @override
  int? get serviceRequestId;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
