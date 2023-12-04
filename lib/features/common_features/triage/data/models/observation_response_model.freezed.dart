// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'observation_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ObservationResponseModel _$ObservationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ObservationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ObservationResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  ValueType? get valueType => throw _privateConstructorUsedError;
  String? get hiThreshold => throw _privateConstructorUsedError;
  String? get loThreshold => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;
  String? get configs => throw _privateConstructorUsedError;
  double? get weightage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationResponseModelCopyWith<ObservationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationResponseModelCopyWith<$Res> {
  factory $ObservationResponseModelCopyWith(ObservationResponseModel value,
          $Res Function(ObservationResponseModel) then) =
      _$ObservationResponseModelCopyWithImpl<$Res, ObservationResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      ValueType? valueType,
      String? hiThreshold,
      String? loThreshold,
      @TimestampConverter() DateTime? creationDate,
      String? configs,
      double? weightage});
}

/// @nodoc
class _$ObservationResponseModelCopyWithImpl<$Res,
        $Val extends ObservationResponseModel>
    implements $ObservationResponseModelCopyWith<$Res> {
  _$ObservationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? valueType = freezed,
    Object? hiThreshold = freezed,
    Object? loThreshold = freezed,
    Object? creationDate = freezed,
    Object? configs = freezed,
    Object? weightage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      valueType: freezed == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as ValueType?,
      hiThreshold: freezed == hiThreshold
          ? _value.hiThreshold
          : hiThreshold // ignore: cast_nullable_to_non_nullable
              as String?,
      loThreshold: freezed == loThreshold
          ? _value.loThreshold
          : loThreshold // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      configs: freezed == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as String?,
      weightage: freezed == weightage
          ? _value.weightage
          : weightage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObservationResponseModelCopyWith<$Res>
    implements $ObservationResponseModelCopyWith<$Res> {
  factory _$$_ObservationResponseModelCopyWith(
          _$_ObservationResponseModel value,
          $Res Function(_$_ObservationResponseModel) then) =
      __$$_ObservationResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      ValueType? valueType,
      String? hiThreshold,
      String? loThreshold,
      @TimestampConverter() DateTime? creationDate,
      String? configs,
      double? weightage});
}

/// @nodoc
class __$$_ObservationResponseModelCopyWithImpl<$Res>
    extends _$ObservationResponseModelCopyWithImpl<$Res,
        _$_ObservationResponseModel>
    implements _$$_ObservationResponseModelCopyWith<$Res> {
  __$$_ObservationResponseModelCopyWithImpl(_$_ObservationResponseModel _value,
      $Res Function(_$_ObservationResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? valueType = freezed,
    Object? hiThreshold = freezed,
    Object? loThreshold = freezed,
    Object? creationDate = freezed,
    Object? configs = freezed,
    Object? weightage = freezed,
  }) {
    return _then(_$_ObservationResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      valueType: freezed == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as ValueType?,
      hiThreshold: freezed == hiThreshold
          ? _value.hiThreshold
          : hiThreshold // ignore: cast_nullable_to_non_nullable
              as String?,
      loThreshold: freezed == loThreshold
          ? _value.loThreshold
          : loThreshold // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      configs: freezed == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as String?,
      weightage: freezed == weightage
          ? _value.weightage
          : weightage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationResponseModel implements _ObservationResponseModel {
  const _$_ObservationResponseModel(
      {this.id,
      this.name,
      this.valueType,
      this.hiThreshold,
      this.loThreshold,
      @TimestampConverter() this.creationDate,
      this.configs,
      this.weightage});

  factory _$_ObservationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final ValueType? valueType;
  @override
  final String? hiThreshold;
  @override
  final String? loThreshold;
  @override
  @TimestampConverter()
  final DateTime? creationDate;
  @override
  final String? configs;
  @override
  final double? weightage;

  @override
  String toString() {
    return 'ObservationResponseModel(id: $id, name: $name, valueType: $valueType, hiThreshold: $hiThreshold, loThreshold: $loThreshold, creationDate: $creationDate, configs: $configs, weightage: $weightage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType) &&
            (identical(other.hiThreshold, hiThreshold) ||
                other.hiThreshold == hiThreshold) &&
            (identical(other.loThreshold, loThreshold) ||
                other.loThreshold == loThreshold) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.configs, configs) || other.configs == configs) &&
            (identical(other.weightage, weightage) ||
                other.weightage == weightage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, valueType, hiThreshold,
      loThreshold, creationDate, configs, weightage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationResponseModelCopyWith<_$_ObservationResponseModel>
      get copyWith => __$$_ObservationResponseModelCopyWithImpl<
          _$_ObservationResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationResponseModelToJson(
      this,
    );
  }
}

abstract class _ObservationResponseModel implements ObservationResponseModel {
  const factory _ObservationResponseModel(
      {final int? id,
      final String? name,
      final ValueType? valueType,
      final String? hiThreshold,
      final String? loThreshold,
      @TimestampConverter() final DateTime? creationDate,
      final String? configs,
      final double? weightage}) = _$_ObservationResponseModel;

  factory _ObservationResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ObservationResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  ValueType? get valueType;
  @override
  String? get hiThreshold;
  @override
  String? get loThreshold;
  @override
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  String? get configs;
  @override
  double? get weightage;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationResponseModelCopyWith<_$_ObservationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
