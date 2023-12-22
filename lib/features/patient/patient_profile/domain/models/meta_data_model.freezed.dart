// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaDataModel _$MetaDataModelFromJson(Map<String, dynamic> json) {
  return _MetaDataModel.fromJson(json);
}

/// @nodoc
mixin _$MetaDataModel {
  String? get hipId => throw _privateConstructorUsedError;
  String? get counterId => throw _privateConstructorUsedError;
  String? get hprId => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataModelCopyWith<MetaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataModelCopyWith<$Res> {
  factory $MetaDataModelCopyWith(
          MetaDataModel value, $Res Function(MetaDataModel) then) =
      _$MetaDataModelCopyWithImpl<$Res, MetaDataModel>;
  @useResult
  $Res call(
      {String? hipId,
      String? counterId,
      String? hprId,
      String? latitude,
      String? longitute});
}

/// @nodoc
class _$MetaDataModelCopyWithImpl<$Res, $Val extends MetaDataModel>
    implements $MetaDataModelCopyWith<$Res> {
  _$MetaDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hipId = freezed,
    Object? counterId = freezed,
    Object? hprId = freezed,
    Object? latitude = freezed,
    Object? longitute = freezed,
  }) {
    return _then(_value.copyWith(
      hipId: freezed == hipId
          ? _value.hipId
          : hipId // ignore: cast_nullable_to_non_nullable
              as String?,
      counterId: freezed == counterId
          ? _value.counterId
          : counterId // ignore: cast_nullable_to_non_nullable
              as String?,
      hprId: freezed == hprId
          ? _value.hprId
          : hprId // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitute: freezed == longitute
          ? _value.longitute
          : longitute // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaDataModelCopyWith<$Res>
    implements $MetaDataModelCopyWith<$Res> {
  factory _$$_MetaDataModelCopyWith(
          _$_MetaDataModel value, $Res Function(_$_MetaDataModel) then) =
      __$$_MetaDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? hipId,
      String? counterId,
      String? hprId,
      String? latitude,
      String? longitute});
}

/// @nodoc
class __$$_MetaDataModelCopyWithImpl<$Res>
    extends _$MetaDataModelCopyWithImpl<$Res, _$_MetaDataModel>
    implements _$$_MetaDataModelCopyWith<$Res> {
  __$$_MetaDataModelCopyWithImpl(
      _$_MetaDataModel _value, $Res Function(_$_MetaDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hipId = freezed,
    Object? counterId = freezed,
    Object? hprId = freezed,
    Object? latitude = freezed,
    Object? longitute = freezed,
  }) {
    return _then(_$_MetaDataModel(
      hipId: freezed == hipId
          ? _value.hipId
          : hipId // ignore: cast_nullable_to_non_nullable
              as String?,
      counterId: freezed == counterId
          ? _value.counterId
          : counterId // ignore: cast_nullable_to_non_nullable
              as String?,
      hprId: freezed == hprId
          ? _value.hprId
          : hprId // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitute: freezed == longitute
          ? _value.longitute
          : longitute // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaDataModel implements _MetaDataModel {
  const _$_MetaDataModel(
      {this.hipId, this.counterId, this.hprId, this.latitude, this.longitute});

  factory _$_MetaDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataModelFromJson(json);

  @override
  final String? hipId;
  @override
  final String? counterId;
  @override
  final String? hprId;
  @override
  final String? latitude;
  @override
  final String? longitute;

  @override
  String toString() {
    return 'MetaDataModel(hipId: $hipId, counterId: $counterId, hprId: $hprId, latitude: $latitude, longitute: $longitute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaDataModel &&
            (identical(other.hipId, hipId) || other.hipId == hipId) &&
            (identical(other.counterId, counterId) ||
                other.counterId == counterId) &&
            (identical(other.hprId, hprId) || other.hprId == hprId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitute, longitute) ||
                other.longitute == longitute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hipId, counterId, hprId, latitude, longitute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaDataModelCopyWith<_$_MetaDataModel> get copyWith =>
      __$$_MetaDataModelCopyWithImpl<_$_MetaDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDataModelToJson(
      this,
    );
  }
}

abstract class _MetaDataModel implements MetaDataModel {
  const factory _MetaDataModel(
      {final String? hipId,
      final String? counterId,
      final String? hprId,
      final String? latitude,
      final String? longitute}) = _$_MetaDataModel;

  factory _MetaDataModel.fromJson(Map<String, dynamic> json) =
      _$_MetaDataModel.fromJson;

  @override
  String? get hipId;
  @override
  String? get counterId;
  @override
  String? get hprId;
  @override
  String? get latitude;
  @override
  String? get longitute;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDataModelCopyWith<_$_MetaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
