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
  List<Stage>? get stages => throw _privateConstructorUsedError;

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
      {String? timelineName, String? timelineVersion, List<Stage>? stages});
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
              as List<Stage>?,
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
      {String? timelineName, String? timelineVersion, List<Stage>? stages});
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
              as List<Stage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EbTimelineConfigModelImpl implements _EbTimelineConfigModel {
  const _$EbTimelineConfigModelImpl(
      {this.timelineName, this.timelineVersion, final List<Stage>? stages})
      : _stages = stages;

  factory _$EbTimelineConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EbTimelineConfigModelImplFromJson(json);

  @override
  final String? timelineName;
  @override
  final String? timelineVersion;
  final List<Stage>? _stages;
  @override
  List<Stage>? get stages {
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
      final List<Stage>? stages}) = _$EbTimelineConfigModelImpl;

  factory _EbTimelineConfigModel.fromJson(Map<String, dynamic> json) =
      _$EbTimelineConfigModelImpl.fromJson;

  @override
  String? get timelineName;
  @override
  String? get timelineVersion;
  @override
  List<Stage>? get stages;
  @override
  @JsonKey(ignore: true)
  _$$EbTimelineConfigModelImplCopyWith<_$EbTimelineConfigModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Stage _$StageFromJson(Map<String, dynamic> json) {
  return _Stage.fromJson(json);
}

/// @nodoc
mixin _$Stage {
  String? get stageName => throw _privateConstructorUsedError;
  String? get stageVersion => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  dynamic get repeats => throw _privateConstructorUsedError;
  int? get minRepeat => throw _privateConstructorUsedError;
  int? get maxRepeat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StageCopyWith<Stage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageCopyWith<$Res> {
  factory $StageCopyWith(Stage value, $Res Function(Stage) then) =
      _$StageCopyWithImpl<$Res, Stage>;
  @useResult
  $Res call(
      {String? stageName,
      String? stageVersion,
      String? title,
      dynamic repeats,
      int? minRepeat,
      int? maxRepeat});
}

/// @nodoc
class _$StageCopyWithImpl<$Res, $Val extends Stage>
    implements $StageCopyWith<$Res> {
  _$StageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageName = freezed,
    Object? stageVersion = freezed,
    Object? title = freezed,
    Object? repeats = freezed,
    Object? minRepeat = freezed,
    Object? maxRepeat = freezed,
  }) {
    return _then(_value.copyWith(
      stageName: freezed == stageName
          ? _value.stageName
          : stageName // ignore: cast_nullable_to_non_nullable
              as String?,
      stageVersion: freezed == stageVersion
          ? _value.stageVersion
          : stageVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      repeats: freezed == repeats
          ? _value.repeats
          : repeats // ignore: cast_nullable_to_non_nullable
              as dynamic,
      minRepeat: freezed == minRepeat
          ? _value.minRepeat
          : minRepeat // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRepeat: freezed == maxRepeat
          ? _value.maxRepeat
          : maxRepeat // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StageImplCopyWith<$Res> implements $StageCopyWith<$Res> {
  factory _$$StageImplCopyWith(
          _$StageImpl value, $Res Function(_$StageImpl) then) =
      __$$StageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? stageName,
      String? stageVersion,
      String? title,
      dynamic repeats,
      int? minRepeat,
      int? maxRepeat});
}

/// @nodoc
class __$$StageImplCopyWithImpl<$Res>
    extends _$StageCopyWithImpl<$Res, _$StageImpl>
    implements _$$StageImplCopyWith<$Res> {
  __$$StageImplCopyWithImpl(
      _$StageImpl _value, $Res Function(_$StageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageName = freezed,
    Object? stageVersion = freezed,
    Object? title = freezed,
    Object? repeats = freezed,
    Object? minRepeat = freezed,
    Object? maxRepeat = freezed,
  }) {
    return _then(_$StageImpl(
      stageName: freezed == stageName
          ? _value.stageName
          : stageName // ignore: cast_nullable_to_non_nullable
              as String?,
      stageVersion: freezed == stageVersion
          ? _value.stageVersion
          : stageVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      repeats: freezed == repeats ? _value.repeats! : repeats,
      minRepeat: freezed == minRepeat
          ? _value.minRepeat
          : minRepeat // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRepeat: freezed == maxRepeat
          ? _value.maxRepeat
          : maxRepeat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StageImpl implements _Stage {
  const _$StageImpl(
      {this.stageName,
      this.stageVersion,
      this.title,
      this.repeats = false,
      this.minRepeat,
      this.maxRepeat});

  factory _$StageImpl.fromJson(Map<String, dynamic> json) =>
      _$$StageImplFromJson(json);

  @override
  final String? stageName;
  @override
  final String? stageVersion;
  @override
  final String? title;
  @override
  @JsonKey()
  final dynamic repeats;
  @override
  final int? minRepeat;
  @override
  final int? maxRepeat;

  @override
  String toString() {
    return 'Stage(stageName: $stageName, stageVersion: $stageVersion, title: $title, repeats: $repeats, minRepeat: $minRepeat, maxRepeat: $maxRepeat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StageImpl &&
            (identical(other.stageName, stageName) ||
                other.stageName == stageName) &&
            (identical(other.stageVersion, stageVersion) ||
                other.stageVersion == stageVersion) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.repeats, repeats) &&
            (identical(other.minRepeat, minRepeat) ||
                other.minRepeat == minRepeat) &&
            (identical(other.maxRepeat, maxRepeat) ||
                other.maxRepeat == maxRepeat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stageName, stageVersion, title,
      const DeepCollectionEquality().hash(repeats), minRepeat, maxRepeat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StageImplCopyWith<_$StageImpl> get copyWith =>
      __$$StageImplCopyWithImpl<_$StageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StageImplToJson(
      this,
    );
  }
}

abstract class _Stage implements Stage {
  const factory _Stage(
      {final String? stageName,
      final String? stageVersion,
      final String? title,
      final dynamic repeats,
      final int? minRepeat,
      final int? maxRepeat}) = _$StageImpl;

  factory _Stage.fromJson(Map<String, dynamic> json) = _$StageImpl.fromJson;

  @override
  String? get stageName;
  @override
  String? get stageVersion;
  @override
  String? get title;
  @override
  dynamic get repeats;
  @override
  int? get minRepeat;
  @override
  int? get maxRepeat;
  @override
  @JsonKey(ignore: true)
  _$$StageImplCopyWith<_$StageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
