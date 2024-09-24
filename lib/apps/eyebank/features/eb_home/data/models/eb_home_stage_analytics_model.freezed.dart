// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eb_home_stage_analytics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EbHomeStageAnalyticsModel _$EbHomeStageAnalyticsModelFromJson(
    Map<String, dynamic> json) {
  return _EbHomeStageAnalyticsModel.fromJson(json);
}

/// @nodoc
mixin _$EbHomeStageAnalyticsModel {
  @JsonKey(
      name: "code", fromJson: _ebStageNameFromJson, toJson: _ebStageNameToJson)
  EBStageName get code => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EbHomeStageAnalyticsModelCopyWith<EbHomeStageAnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EbHomeStageAnalyticsModelCopyWith<$Res> {
  factory $EbHomeStageAnalyticsModelCopyWith(EbHomeStageAnalyticsModel value,
          $Res Function(EbHomeStageAnalyticsModel) then) =
      _$EbHomeStageAnalyticsModelCopyWithImpl<$Res, EbHomeStageAnalyticsModel>;
  @useResult
  $Res call(
      {@JsonKey(
          name: "code",
          fromJson: _ebStageNameFromJson,
          toJson: _ebStageNameToJson)
      EBStageName code,
      @JsonKey(name: "count") int? count});
}

/// @nodoc
class _$EbHomeStageAnalyticsModelCopyWithImpl<$Res,
        $Val extends EbHomeStageAnalyticsModel>
    implements $EbHomeStageAnalyticsModelCopyWith<$Res> {
  _$EbHomeStageAnalyticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as EBStageName,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EbHomeStageAnalyticsModelImplCopyWith<$Res>
    implements $EbHomeStageAnalyticsModelCopyWith<$Res> {
  factory _$$EbHomeStageAnalyticsModelImplCopyWith(
          _$EbHomeStageAnalyticsModelImpl value,
          $Res Function(_$EbHomeStageAnalyticsModelImpl) then) =
      __$$EbHomeStageAnalyticsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: "code",
          fromJson: _ebStageNameFromJson,
          toJson: _ebStageNameToJson)
      EBStageName code,
      @JsonKey(name: "count") int? count});
}

/// @nodoc
class __$$EbHomeStageAnalyticsModelImplCopyWithImpl<$Res>
    extends _$EbHomeStageAnalyticsModelCopyWithImpl<$Res,
        _$EbHomeStageAnalyticsModelImpl>
    implements _$$EbHomeStageAnalyticsModelImplCopyWith<$Res> {
  __$$EbHomeStageAnalyticsModelImplCopyWithImpl(
      _$EbHomeStageAnalyticsModelImpl _value,
      $Res Function(_$EbHomeStageAnalyticsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? count = freezed,
  }) {
    return _then(_$EbHomeStageAnalyticsModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as EBStageName,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EbHomeStageAnalyticsModelImpl implements _EbHomeStageAnalyticsModel {
  const _$EbHomeStageAnalyticsModelImpl(
      {@JsonKey(
          name: "code",
          fromJson: _ebStageNameFromJson,
          toJson: _ebStageNameToJson)
      this.code = EBStageName.UNDEFINED,
      @JsonKey(name: "count") this.count});

  factory _$EbHomeStageAnalyticsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EbHomeStageAnalyticsModelImplFromJson(json);

  @override
  @JsonKey(
      name: "code", fromJson: _ebStageNameFromJson, toJson: _ebStageNameToJson)
  final EBStageName code;
  @override
  @JsonKey(name: "count")
  final int? count;

  @override
  String toString() {
    return 'EbHomeStageAnalyticsModel(code: $code, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EbHomeStageAnalyticsModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EbHomeStageAnalyticsModelImplCopyWith<_$EbHomeStageAnalyticsModelImpl>
      get copyWith => __$$EbHomeStageAnalyticsModelImplCopyWithImpl<
          _$EbHomeStageAnalyticsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EbHomeStageAnalyticsModelImplToJson(
      this,
    );
  }
}

abstract class _EbHomeStageAnalyticsModel implements EbHomeStageAnalyticsModel {
  const factory _EbHomeStageAnalyticsModel(
          {@JsonKey(
              name: "code",
              fromJson: _ebStageNameFromJson,
              toJson: _ebStageNameToJson)
          final EBStageName code,
          @JsonKey(name: "count") final int? count}) =
      _$EbHomeStageAnalyticsModelImpl;

  factory _EbHomeStageAnalyticsModel.fromJson(Map<String, dynamic> json) =
      _$EbHomeStageAnalyticsModelImpl.fromJson;

  @override
  @JsonKey(
      name: "code", fromJson: _ebStageNameFromJson, toJson: _ebStageNameToJson)
  EBStageName get code;
  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$EbHomeStageAnalyticsModelImplCopyWith<_$EbHomeStageAnalyticsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
