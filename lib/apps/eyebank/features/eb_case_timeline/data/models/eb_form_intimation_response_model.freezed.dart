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
  dynamic get stage => throw _privateConstructorUsedError;

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
      @JsonKey(name: "stage") dynamic stage});
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
              as dynamic,
    ) as $Val);
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
      @JsonKey(name: "stage") dynamic stage});
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
              as dynamic,
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
  final dynamic stage;

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
            const DeepCollectionEquality().equals(other.stage, stage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timelineName, timelineVersion,
      const DeepCollectionEquality().hash(stage));

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
          @JsonKey(name: "stage") final dynamic stage}) =
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
  dynamic get stage;
  @override
  @JsonKey(ignore: true)
  _$$EBFormIntimationResponseModelImplCopyWith<
          _$EBFormIntimationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
