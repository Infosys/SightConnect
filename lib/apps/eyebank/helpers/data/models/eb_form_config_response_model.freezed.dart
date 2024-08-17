// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eb_form_config_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EBFormConfigResponseModel _$EBFormConfigResponseModelFromJson(
    Map<String, dynamic> json) {
  return _EBFormConfigResponseModel.fromJson(json);
}

/// @nodoc
mixin _$EBFormConfigResponseModel {
  @JsonKey(name: "stageName")
  String? get stageName => throw _privateConstructorUsedError;
  @JsonKey(name: "stageVersion")
  String? get stageVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "stageConfig")
  StageConfig? get stageConfig => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EBFormConfigResponseModelCopyWith<EBFormConfigResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EBFormConfigResponseModelCopyWith<$Res> {
  factory $EBFormConfigResponseModelCopyWith(EBFormConfigResponseModel value,
          $Res Function(EBFormConfigResponseModel) then) =
      _$EBFormConfigResponseModelCopyWithImpl<$Res, EBFormConfigResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "stageName") String? stageName,
      @JsonKey(name: "stageVersion") String? stageVersion,
      @JsonKey(name: "stageConfig") StageConfig? stageConfig});

  $StageConfigCopyWith<$Res>? get stageConfig;
}

/// @nodoc
class _$EBFormConfigResponseModelCopyWithImpl<$Res,
        $Val extends EBFormConfigResponseModel>
    implements $EBFormConfigResponseModelCopyWith<$Res> {
  _$EBFormConfigResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$EBFormConfigResponseModelImplCopyWith<$Res>
    implements $EBFormConfigResponseModelCopyWith<$Res> {
  factory _$$EBFormConfigResponseModelImplCopyWith(
          _$EBFormConfigResponseModelImpl value,
          $Res Function(_$EBFormConfigResponseModelImpl) then) =
      __$$EBFormConfigResponseModelImplCopyWithImpl<$Res>;
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
class __$$EBFormConfigResponseModelImplCopyWithImpl<$Res>
    extends _$EBFormConfigResponseModelCopyWithImpl<$Res,
        _$EBFormConfigResponseModelImpl>
    implements _$$EBFormConfigResponseModelImplCopyWith<$Res> {
  __$$EBFormConfigResponseModelImplCopyWithImpl(
      _$EBFormConfigResponseModelImpl _value,
      $Res Function(_$EBFormConfigResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stageName = freezed,
    Object? stageVersion = freezed,
    Object? stageConfig = freezed,
  }) {
    return _then(_$EBFormConfigResponseModelImpl(
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
class _$EBFormConfigResponseModelImpl implements _EBFormConfigResponseModel {
  const _$EBFormConfigResponseModelImpl(
      {@JsonKey(name: "stageName") this.stageName,
      @JsonKey(name: "stageVersion") this.stageVersion,
      @JsonKey(name: "stageConfig") this.stageConfig});

  factory _$EBFormConfigResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EBFormConfigResponseModelImplFromJson(json);

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
    return 'EBFormConfigResponseModel(stageName: $stageName, stageVersion: $stageVersion, stageConfig: $stageConfig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EBFormConfigResponseModelImpl &&
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
  _$$EBFormConfigResponseModelImplCopyWith<_$EBFormConfigResponseModelImpl>
      get copyWith => __$$EBFormConfigResponseModelImplCopyWithImpl<
          _$EBFormConfigResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EBFormConfigResponseModelImplToJson(
      this,
    );
  }
}

abstract class _EBFormConfigResponseModel implements EBFormConfigResponseModel {
  const factory _EBFormConfigResponseModel(
          {@JsonKey(name: "stageName") final String? stageName,
          @JsonKey(name: "stageVersion") final String? stageVersion,
          @JsonKey(name: "stageConfig") final StageConfig? stageConfig}) =
      _$EBFormConfigResponseModelImpl;

  factory _EBFormConfigResponseModel.fromJson(Map<String, dynamic> json) =
      _$EBFormConfigResponseModelImpl.fromJson;

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
  _$$EBFormConfigResponseModelImplCopyWith<_$EBFormConfigResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
