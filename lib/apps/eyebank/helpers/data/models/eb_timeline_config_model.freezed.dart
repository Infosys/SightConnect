// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eb_timeline_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EbTimelineConfigModel _$EbTimelineConfigModelFromJson(
    Map<String, dynamic> json) {
  return _EbTimelineConfigModel.fromJson(json);
}

/// @nodoc
mixin _$EbTimelineConfigModel {
  List<String>? get stages => throw _privateConstructorUsedError;
  String? get timelineName => throw _privateConstructorUsedError;
  String? get timelineVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EbTimelineConfigModelCopyWith<EbTimelineConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EbTimelineConfigModelCopyWith<$Res> {
  factory $EbTimelineConfigModelCopyWith(EbTimelineConfigModel value,
          $Res Function(EbTimelineConfigModel) then) =
      _$EbTimelineConfigModelCopyWithImpl<$Res, EbTimelineConfigModel>;
  @useResult
  $Res call(
      {List<String>? stages, String? timelineName, String? timelineVersion});
}

/// @nodoc
class _$EbTimelineConfigModelCopyWithImpl<$Res,
        $Val extends EbTimelineConfigModel>
    implements $EbTimelineConfigModelCopyWith<$Res> {
  _$EbTimelineConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stages = freezed,
    Object? timelineName = freezed,
    Object? timelineVersion = freezed,
  }) {
    return _then(_value.copyWith(
      stages: freezed == stages
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      timelineName: freezed == timelineName
          ? _value.timelineName
          : timelineName // ignore: cast_nullable_to_non_nullable
              as String?,
      timelineVersion: freezed == timelineVersion
          ? _value.timelineVersion
          : timelineVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EbTimelineConfigModelImplCopyWith<$Res>
    implements $EbTimelineConfigModelCopyWith<$Res> {
  factory _$$EbTimelineConfigModelImplCopyWith(
          _$EbTimelineConfigModelImpl value,
          $Res Function(_$EbTimelineConfigModelImpl) then) =
      __$$EbTimelineConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? stages, String? timelineName, String? timelineVersion});
}

/// @nodoc
class __$$EbTimelineConfigModelImplCopyWithImpl<$Res>
    extends _$EbTimelineConfigModelCopyWithImpl<$Res,
        _$EbTimelineConfigModelImpl>
    implements _$$EbTimelineConfigModelImplCopyWith<$Res> {
  __$$EbTimelineConfigModelImplCopyWithImpl(_$EbTimelineConfigModelImpl _value,
      $Res Function(_$EbTimelineConfigModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stages = freezed,
    Object? timelineName = freezed,
    Object? timelineVersion = freezed,
  }) {
    return _then(_$EbTimelineConfigModelImpl(
      stages: freezed == stages
          ? _value._stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      timelineName: freezed == timelineName
          ? _value.timelineName
          : timelineName // ignore: cast_nullable_to_non_nullable
              as String?,
      timelineVersion: freezed == timelineVersion
          ? _value.timelineVersion
          : timelineVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EbTimelineConfigModelImpl implements _EbTimelineConfigModel {
  const _$EbTimelineConfigModelImpl(
      {final List<String>? stages, this.timelineName, this.timelineVersion})
      : _stages = stages;

  factory _$EbTimelineConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EbTimelineConfigModelImplFromJson(json);

  final List<String>? _stages;
  @override
  List<String>? get stages {
    final value = _stages;
    if (value == null) return null;
    if (_stages is EqualUnmodifiableListView) return _stages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? timelineName;
  @override
  final String? timelineVersion;

  @override
  String toString() {
    return 'EbTimelineConfigModel(stages: $stages, timelineName: $timelineName, timelineVersion: $timelineVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EbTimelineConfigModelImpl &&
            const DeepCollectionEquality().equals(other._stages, _stages) &&
            (identical(other.timelineName, timelineName) ||
                other.timelineName == timelineName) &&
            (identical(other.timelineVersion, timelineVersion) ||
                other.timelineVersion == timelineVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stages),
      timelineName,
      timelineVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EbTimelineConfigModelImplCopyWith<_$EbTimelineConfigModelImpl>
      get copyWith => __$$EbTimelineConfigModelImplCopyWithImpl<
          _$EbTimelineConfigModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EbTimelineConfigModelImplToJson(
      this,
    );
  }
}

abstract class _EbTimelineConfigModel implements EbTimelineConfigModel {
  const factory _EbTimelineConfigModel(
      {final List<String>? stages,
      final String? timelineName,
      final String? timelineVersion}) = _$EbTimelineConfigModelImpl;

  factory _EbTimelineConfigModel.fromJson(Map<String, dynamic> json) =
      _$EbTimelineConfigModelImpl.fromJson;

  @override
  List<String>? get stages;
  @override
  String? get timelineName;
  @override
  String? get timelineVersion;
  @override
  @JsonKey(ignore: true)
  _$$EbTimelineConfigModelImplCopyWith<_$EbTimelineConfigModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
