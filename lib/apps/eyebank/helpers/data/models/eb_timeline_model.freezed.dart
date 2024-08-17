// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eb_timeline_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EBTimelineModel _$EBTimelineModelFromJson(Map<String, dynamic> json) {
  return _EBTimelineModel.fromJson(json);
}

/// @nodoc
mixin _$EBTimelineModel {
  int? get serviceRequestId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get stage => throw _privateConstructorUsedError;
  String? get assessmentVersion => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get initiateDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get recentUpdated => throw _privateConstructorUsedError;
  List<EBTimelineModel>? get stages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EBTimelineModelCopyWith<EBTimelineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EBTimelineModelCopyWith<$Res> {
  factory $EBTimelineModelCopyWith(
          EBTimelineModel value, $Res Function(EBTimelineModel) then) =
      _$EBTimelineModelCopyWithImpl<$Res, EBTimelineModel>;
  @useResult
  $Res call(
      {int? serviceRequestId,
      String? title,
      String? stage,
      String? assessmentVersion,
      String? status,
      @TimestampConverter() DateTime? initiateDate,
      @TimestampConverter() DateTime? recentUpdated,
      List<EBTimelineModel>? stages});
}

/// @nodoc
class _$EBTimelineModelCopyWithImpl<$Res, $Val extends EBTimelineModel>
    implements $EBTimelineModelCopyWith<$Res> {
  _$EBTimelineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceRequestId = freezed,
    Object? title = freezed,
    Object? stage = freezed,
    Object? assessmentVersion = freezed,
    Object? status = freezed,
    Object? initiateDate = freezed,
    Object? recentUpdated = freezed,
    Object? stages = freezed,
  }) {
    return _then(_value.copyWith(
      serviceRequestId: freezed == serviceRequestId
          ? _value.serviceRequestId
          : serviceRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String?,
      assessmentVersion: freezed == assessmentVersion
          ? _value.assessmentVersion
          : assessmentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      initiateDate: freezed == initiateDate
          ? _value.initiateDate
          : initiateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recentUpdated: freezed == recentUpdated
          ? _value.recentUpdated
          : recentUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stages: freezed == stages
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<EBTimelineModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EBTimelineModelImplCopyWith<$Res>
    implements $EBTimelineModelCopyWith<$Res> {
  factory _$$EBTimelineModelImplCopyWith(_$EBTimelineModelImpl value,
          $Res Function(_$EBTimelineModelImpl) then) =
      __$$EBTimelineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? serviceRequestId,
      String? title,
      String? stage,
      String? assessmentVersion,
      String? status,
      @TimestampConverter() DateTime? initiateDate,
      @TimestampConverter() DateTime? recentUpdated,
      List<EBTimelineModel>? stages});
}

/// @nodoc
class __$$EBTimelineModelImplCopyWithImpl<$Res>
    extends _$EBTimelineModelCopyWithImpl<$Res, _$EBTimelineModelImpl>
    implements _$$EBTimelineModelImplCopyWith<$Res> {
  __$$EBTimelineModelImplCopyWithImpl(
      _$EBTimelineModelImpl _value, $Res Function(_$EBTimelineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceRequestId = freezed,
    Object? title = freezed,
    Object? stage = freezed,
    Object? assessmentVersion = freezed,
    Object? status = freezed,
    Object? initiateDate = freezed,
    Object? recentUpdated = freezed,
    Object? stages = freezed,
  }) {
    return _then(_$EBTimelineModelImpl(
      serviceRequestId: freezed == serviceRequestId
          ? _value.serviceRequestId
          : serviceRequestId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String?,
      assessmentVersion: freezed == assessmentVersion
          ? _value.assessmentVersion
          : assessmentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      initiateDate: freezed == initiateDate
          ? _value.initiateDate
          : initiateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recentUpdated: freezed == recentUpdated
          ? _value.recentUpdated
          : recentUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stages: freezed == stages
          ? _value._stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<EBTimelineModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EBTimelineModelImpl implements _EBTimelineModel {
  const _$EBTimelineModelImpl(
      {this.serviceRequestId,
      this.title,
      this.stage,
      this.assessmentVersion,
      this.status,
      @TimestampConverter() this.initiateDate,
      @TimestampConverter() this.recentUpdated,
      final List<EBTimelineModel>? stages})
      : _stages = stages;

  factory _$EBTimelineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EBTimelineModelImplFromJson(json);

  @override
  final int? serviceRequestId;
  @override
  final String? title;
  @override
  final String? stage;
  @override
  final String? assessmentVersion;
  @override
  final String? status;
  @override
  @TimestampConverter()
  final DateTime? initiateDate;
  @override
  @TimestampConverter()
  final DateTime? recentUpdated;
  final List<EBTimelineModel>? _stages;
  @override
  List<EBTimelineModel>? get stages {
    final value = _stages;
    if (value == null) return null;
    if (_stages is EqualUnmodifiableListView) return _stages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EBTimelineModel(serviceRequestId: $serviceRequestId, title: $title, stage: $stage, assessmentVersion: $assessmentVersion, status: $status, initiateDate: $initiateDate, recentUpdated: $recentUpdated, stages: $stages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EBTimelineModelImpl &&
            (identical(other.serviceRequestId, serviceRequestId) ||
                other.serviceRequestId == serviceRequestId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.assessmentVersion, assessmentVersion) ||
                other.assessmentVersion == assessmentVersion) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.initiateDate, initiateDate) ||
                other.initiateDate == initiateDate) &&
            (identical(other.recentUpdated, recentUpdated) ||
                other.recentUpdated == recentUpdated) &&
            const DeepCollectionEquality().equals(other._stages, _stages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      serviceRequestId,
      title,
      stage,
      assessmentVersion,
      status,
      initiateDate,
      recentUpdated,
      const DeepCollectionEquality().hash(_stages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EBTimelineModelImplCopyWith<_$EBTimelineModelImpl> get copyWith =>
      __$$EBTimelineModelImplCopyWithImpl<_$EBTimelineModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EBTimelineModelImplToJson(
      this,
    );
  }
}

abstract class _EBTimelineModel implements EBTimelineModel {
  const factory _EBTimelineModel(
      {final int? serviceRequestId,
      final String? title,
      final String? stage,
      final String? assessmentVersion,
      final String? status,
      @TimestampConverter() final DateTime? initiateDate,
      @TimestampConverter() final DateTime? recentUpdated,
      final List<EBTimelineModel>? stages}) = _$EBTimelineModelImpl;

  factory _EBTimelineModel.fromJson(Map<String, dynamic> json) =
      _$EBTimelineModelImpl.fromJson;

  @override
  int? get serviceRequestId;
  @override
  String? get title;
  @override
  String? get stage;
  @override
  String? get assessmentVersion;
  @override
  String? get status;
  @override
  @TimestampConverter()
  DateTime? get initiateDate;
  @override
  @TimestampConverter()
  DateTime? get recentUpdated;
  @override
  List<EBTimelineModel>? get stages;
  @override
  @JsonKey(ignore: true)
  _$$EBTimelineModelImplCopyWith<_$EBTimelineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
