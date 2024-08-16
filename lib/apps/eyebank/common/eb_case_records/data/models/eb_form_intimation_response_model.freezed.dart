// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eb_form_intimation_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EBFormIntimationResponseModel _$EBFormIntimationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _EBFormIntimationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$EBFormIntimationResponseModel {
  @JsonKey(name: "timelineName")
  String? get timelineName => throw _privateConstructorUsedError;
  @JsonKey(name: "timelineVersion")
  String? get timelineVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "stage")
  Stage? get stage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EBFormIntimationResponseModelCopyWith<EBFormIntimationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EBFormIntimationResponseModelCopyWith<$Res> {
  factory $EBFormIntimationResponseModelCopyWith(
          EBFormIntimationResponseModel value,
          $Res Function(EBFormIntimationResponseModel) then) =
      _$EBFormIntimationResponseModelCopyWithImpl<$Res,
          EBFormIntimationResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "timelineName") String? timelineName,
      @JsonKey(name: "timelineVersion") String? timelineVersion,
      @JsonKey(name: "stage") Stage? stage});

  $StageCopyWith<$Res>? get stage;
}

/// @nodoc
class _$EBFormIntimationResponseModelCopyWithImpl<$Res,
        $Val extends EBFormIntimationResponseModel>
    implements $EBFormIntimationResponseModelCopyWith<$Res> {
  _$EBFormIntimationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timelineName = freezed,
    Object? timelineVersion = freezed,
    Object? stage = freezed,
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
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StageCopyWith<$Res>? get stage {
    if (_value.stage == null) {
      return null;
    }

    return $StageCopyWith<$Res>(_value.stage!, (value) {
      return _then(_value.copyWith(stage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EBFormIntimationResponseModelImplCopyWith<$Res>
    implements $EBFormIntimationResponseModelCopyWith<$Res> {
  factory _$$EBFormIntimationResponseModelImplCopyWith(
          _$EBFormIntimationResponseModelImpl value,
          $Res Function(_$EBFormIntimationResponseModelImpl) then) =
      __$$EBFormIntimationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timelineName") String? timelineName,
      @JsonKey(name: "timelineVersion") String? timelineVersion,
      @JsonKey(name: "stage") Stage? stage});

  @override
  $StageCopyWith<$Res>? get stage;
}

/// @nodoc
class __$$EBFormIntimationResponseModelImplCopyWithImpl<$Res>
    extends _$EBFormIntimationResponseModelCopyWithImpl<$Res,
        _$EBFormIntimationResponseModelImpl>
    implements _$$EBFormIntimationResponseModelImplCopyWith<$Res> {
  __$$EBFormIntimationResponseModelImplCopyWithImpl(
      _$EBFormIntimationResponseModelImpl _value,
      $Res Function(_$EBFormIntimationResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timelineName = freezed,
    Object? timelineVersion = freezed,
    Object? stage = freezed,
  }) {
    return _then(_$EBFormIntimationResponseModelImpl(
      timelineName: freezed == timelineName
          ? _value.timelineName
          : timelineName // ignore: cast_nullable_to_non_nullable
              as String?,
      timelineVersion: freezed == timelineVersion
          ? _value.timelineVersion
          : timelineVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      stage: freezed == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as Stage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EBFormIntimationResponseModelImpl
    implements _EBFormIntimationResponseModel {
  const _$EBFormIntimationResponseModelImpl(
      {@JsonKey(name: "timelineName") this.timelineName,
      @JsonKey(name: "timelineVersion") this.timelineVersion,
      @JsonKey(name: "stage") this.stage});

  factory _$EBFormIntimationResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EBFormIntimationResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "timelineName")
  final String? timelineName;
  @override
  @JsonKey(name: "timelineVersion")
  final String? timelineVersion;
  @override
  @JsonKey(name: "stage")
  final Stage? stage;

  @override
  String toString() {
    return 'EBFormIntimationResponseModel(timelineName: $timelineName, timelineVersion: $timelineVersion, stage: $stage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EBFormIntimationResponseModelImpl &&
            (identical(other.timelineName, timelineName) ||
                other.timelineName == timelineName) &&
            (identical(other.timelineVersion, timelineVersion) ||
                other.timelineVersion == timelineVersion) &&
            (identical(other.stage, stage) || other.stage == stage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, timelineName, timelineVersion, stage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EBFormIntimationResponseModelImplCopyWith<
          _$EBFormIntimationResponseModelImpl>
      get copyWith => __$$EBFormIntimationResponseModelImplCopyWithImpl<
          _$EBFormIntimationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EBFormIntimationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _EBFormIntimationResponseModel
    implements EBFormIntimationResponseModel {
  const factory _EBFormIntimationResponseModel(
          {@JsonKey(name: "timelineName") final String? timelineName,
          @JsonKey(name: "timelineVersion") final String? timelineVersion,
          @JsonKey(name: "stage") final Stage? stage}) =
      _$EBFormIntimationResponseModelImpl;

  factory _EBFormIntimationResponseModel.fromJson(Map<String, dynamic> json) =
      _$EBFormIntimationResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "timelineName")
  String? get timelineName;
  @override
  @JsonKey(name: "timelineVersion")
  String? get timelineVersion;
  @override
  @JsonKey(name: "stage")
  Stage? get stage;
  @override
  @JsonKey(ignore: true)
  _$$EBFormIntimationResponseModelImplCopyWith<
          _$EBFormIntimationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Stage _$StageFromJson(Map<String, dynamic> json) {
  return _Stage.fromJson(json);
}

/// @nodoc
mixin _$Stage {
  @JsonKey(name: "stageName")
  String? get stageName => throw _privateConstructorUsedError;
  @JsonKey(name: "stageVersion")
  String? get stageVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "stageConfig")
  StageConfig? get stageConfig => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "stageName") String? stageName,
      @JsonKey(name: "stageVersion") String? stageVersion,
      @JsonKey(name: "stageConfig") StageConfig? stageConfig});

  $StageConfigCopyWith<$Res>? get stageConfig;
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
    Object? stageConfig = freezed,
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
      stageConfig: freezed == stageConfig
          ? _value.stageConfig
          : stageConfig // ignore: cast_nullable_to_non_nullable
              as StageConfig?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StageConfigCopyWith<$Res>? get stageConfig {
    if (_value.stageConfig == null) {
      return null;
    }

    return $StageConfigCopyWith<$Res>(_value.stageConfig!, (value) {
      return _then(_value.copyWith(stageConfig: value) as $Val);
    });
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
      {@JsonKey(name: "stageName") String? stageName,
      @JsonKey(name: "stageVersion") String? stageVersion,
      @JsonKey(name: "stageConfig") StageConfig? stageConfig});

  @override
  $StageConfigCopyWith<$Res>? get stageConfig;
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
    Object? stageConfig = freezed,
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
      stageConfig: freezed == stageConfig
          ? _value.stageConfig
          : stageConfig // ignore: cast_nullable_to_non_nullable
              as StageConfig?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StageImpl implements _Stage {
  const _$StageImpl(
      {@JsonKey(name: "stageName") this.stageName,
      @JsonKey(name: "stageVersion") this.stageVersion,
      @JsonKey(name: "stageConfig") this.stageConfig});

  factory _$StageImpl.fromJson(Map<String, dynamic> json) =>
      _$$StageImplFromJson(json);

  @override
  @JsonKey(name: "stageName")
  final String? stageName;
  @override
  @JsonKey(name: "stageVersion")
  final String? stageVersion;
  @override
  @JsonKey(name: "stageConfig")
  final StageConfig? stageConfig;

  @override
  String toString() {
    return 'Stage(stageName: $stageName, stageVersion: $stageVersion, stageConfig: $stageConfig)';
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
            (identical(other.stageConfig, stageConfig) ||
                other.stageConfig == stageConfig));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stageName, stageVersion, stageConfig);

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
          {@JsonKey(name: "stageName") final String? stageName,
          @JsonKey(name: "stageVersion") final String? stageVersion,
          @JsonKey(name: "stageConfig") final StageConfig? stageConfig}) =
      _$StageImpl;

  factory _Stage.fromJson(Map<String, dynamic> json) = _$StageImpl.fromJson;

  @override
  @JsonKey(name: "stageName")
  String? get stageName;
  @override
  @JsonKey(name: "stageVersion")
  String? get stageVersion;
  @override
  @JsonKey(name: "stageConfig")
  StageConfig? get stageConfig;
  @override
  @JsonKey(ignore: true)
  _$$StageImplCopyWith<_$StageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StageConfig _$StageConfigFromJson(Map<String, dynamic> json) {
  return _StageConfig.fromJson(json);
}

/// @nodoc
mixin _$StageConfig {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageConfigCopyWith<$Res> {
  factory $StageConfigCopyWith(
          StageConfig value, $Res Function(StageConfig) then) =
      _$StageConfigCopyWithImpl<$Res, StageConfig>;
}

/// @nodoc
class _$StageConfigCopyWithImpl<$Res, $Val extends StageConfig>
    implements $StageConfigCopyWith<$Res> {
  _$StageConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StageConfigImplCopyWith<$Res> {
  factory _$$StageConfigImplCopyWith(
          _$StageConfigImpl value, $Res Function(_$StageConfigImpl) then) =
      __$$StageConfigImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StageConfigImplCopyWithImpl<$Res>
    extends _$StageConfigCopyWithImpl<$Res, _$StageConfigImpl>
    implements _$$StageConfigImplCopyWith<$Res> {
  __$$StageConfigImplCopyWithImpl(
      _$StageConfigImpl _value, $Res Function(_$StageConfigImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$StageConfigImpl implements _StageConfig {
  const _$StageConfigImpl();

  factory _$StageConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$StageConfigImplFromJson(json);

  @override
  String toString() {
    return 'StageConfig()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StageConfigImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$StageConfigImplToJson(
      this,
    );
  }
}

abstract class _StageConfig implements StageConfig {
  const factory _StageConfig() = _$StageConfigImpl;

  factory _StageConfig.fromJson(Map<String, dynamic> json) =
      _$StageConfigImpl.fromJson;
}
