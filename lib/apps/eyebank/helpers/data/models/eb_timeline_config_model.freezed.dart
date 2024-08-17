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
  String? get timelineName => throw _privateConstructorUsedError;
  String? get timelineVersion => throw _privateConstructorUsedError;
  List<String>? get stages => throw _privateConstructorUsedError;

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
      {String? timelineName, String? timelineVersion, List<String>? stages});
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
    Object? timelineName = freezed,
    Object? timelineVersion = freezed,
    Object? stages = freezed,
  }) {
    return _then(_value.copyWith(
      timelineName: freezed == timelineName
          ? _value.timelineName
          : timelineName // ignore: cast_nullable_to_non_nullable
              as String?,
      timelineVersion: freezed == timelineVersion
          ? _value.timelineVersion
          : timelineVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      stages: freezed == stages
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      {String? timelineName, String? timelineVersion, List<String>? stages});
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
    Object? timelineName = freezed,
    Object? timelineVersion = freezed,
    Object? stages = freezed,
  }) {
    return _then(_$EbTimelineConfigModelImpl(
      timelineName: freezed == timelineName
          ? _value.timelineName
          : timelineName // ignore: cast_nullable_to_non_nullable
              as String?,
      timelineVersion: freezed == timelineVersion
          ? _value.timelineVersion
          : timelineVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      stages: freezed == stages
          ? _value._stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EbTimelineConfigModelImpl implements _EbTimelineConfigModel {
  const _$EbTimelineConfigModelImpl(
      {this.timelineName, this.timelineVersion, final List<String>? stages})
      : _stages = stages;

  factory _$EbTimelineConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EbTimelineConfigModelImplFromJson(json);

  @override
  final String? timelineName;
  @override
  final String? timelineVersion;
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
  String toString() {
    return 'EbTimelineConfigModel(timelineName: $timelineName, timelineVersion: $timelineVersion, stages: $stages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EbTimelineConfigModelImpl &&
            (identical(other.timelineName, timelineName) ||
                other.timelineName == timelineName) &&
            (identical(other.timelineVersion, timelineVersion) ||
                other.timelineVersion == timelineVersion) &&
            const DeepCollectionEquality().equals(other._stages, _stages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timelineName, timelineVersion,
      const DeepCollectionEquality().hash(_stages));

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
      {final String? timelineName,
      final String? timelineVersion,
      final List<String>? stages}) = _$EbTimelineConfigModelImpl;

  factory _EbTimelineConfigModel.fromJson(Map<String, dynamic> json) =
      _$EbTimelineConfigModelImpl.fromJson;

  @override
  String? get timelineName;
  @override
  String? get timelineVersion;
  @override
  List<String>? get stages;
  @override
  @JsonKey(ignore: true)
  _$$EbTimelineConfigModelImplCopyWith<_$EbTimelineConfigModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
