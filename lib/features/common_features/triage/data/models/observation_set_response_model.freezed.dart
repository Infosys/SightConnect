// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'observation_set_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ObservationSetResponseModel _$ObservationSetResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ObservationSetResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ObservationSetResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;
  ObservationResponseModel? get observationResponseDTO =>
      throw _privateConstructorUsedError;
  List<ObservationResponseModel>? get observationResponseDTOList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationSetResponseModelCopyWith<ObservationSetResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationSetResponseModelCopyWith<$Res> {
  factory $ObservationSetResponseModelCopyWith(
          ObservationSetResponseModel value,
          $Res Function(ObservationSetResponseModel) then) =
      _$ObservationSetResponseModelCopyWithImpl<$Res,
          ObservationSetResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate,
      ObservationResponseModel? observationResponseDTO,
      List<ObservationResponseModel>? observationResponseDTOList});

  $ObservationResponseModelCopyWith<$Res>? get observationResponseDTO;
}

/// @nodoc
class _$ObservationSetResponseModelCopyWithImpl<$Res,
        $Val extends ObservationSetResponseModel>
    implements $ObservationSetResponseModelCopyWith<$Res> {
  _$ObservationSetResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? creationDate = freezed,
    Object? observationResponseDTO = freezed,
    Object? observationResponseDTOList = freezed,
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
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      observationResponseDTO: freezed == observationResponseDTO
          ? _value.observationResponseDTO
          : observationResponseDTO // ignore: cast_nullable_to_non_nullable
              as ObservationResponseModel?,
      observationResponseDTOList: freezed == observationResponseDTOList
          ? _value.observationResponseDTOList
          : observationResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<ObservationResponseModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ObservationResponseModelCopyWith<$Res>? get observationResponseDTO {
    if (_value.observationResponseDTO == null) {
      return null;
    }

    return $ObservationResponseModelCopyWith<$Res>(
        _value.observationResponseDTO!, (value) {
      return _then(_value.copyWith(observationResponseDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ObservationSetResponseModelCopyWith<$Res>
    implements $ObservationSetResponseModelCopyWith<$Res> {
  factory _$$_ObservationSetResponseModelCopyWith(
          _$_ObservationSetResponseModel value,
          $Res Function(_$_ObservationSetResponseModel) then) =
      __$$_ObservationSetResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate,
      ObservationResponseModel? observationResponseDTO,
      List<ObservationResponseModel>? observationResponseDTOList});

  @override
  $ObservationResponseModelCopyWith<$Res>? get observationResponseDTO;
}

/// @nodoc
class __$$_ObservationSetResponseModelCopyWithImpl<$Res>
    extends _$ObservationSetResponseModelCopyWithImpl<$Res,
        _$_ObservationSetResponseModel>
    implements _$$_ObservationSetResponseModelCopyWith<$Res> {
  __$$_ObservationSetResponseModelCopyWithImpl(
      _$_ObservationSetResponseModel _value,
      $Res Function(_$_ObservationSetResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? creationDate = freezed,
    Object? observationResponseDTO = freezed,
    Object? observationResponseDTOList = freezed,
  }) {
    return _then(_$_ObservationSetResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      observationResponseDTO: freezed == observationResponseDTO
          ? _value.observationResponseDTO
          : observationResponseDTO // ignore: cast_nullable_to_non_nullable
              as ObservationResponseModel?,
      observationResponseDTOList: freezed == observationResponseDTOList
          ? _value._observationResponseDTOList
          : observationResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<ObservationResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationSetResponseModel implements _ObservationSetResponseModel {
  const _$_ObservationSetResponseModel(
      {this.id,
      this.name,
      this.version,
      this.description,
      @TimestampConverter() this.creationDate,
      this.observationResponseDTO,
      final List<ObservationResponseModel>? observationResponseDTOList})
      : _observationResponseDTOList = observationResponseDTOList;

  factory _$_ObservationSetResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationSetResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? version;
  @override
  final String? description;
  @override
  @TimestampConverter()
  final DateTime? creationDate;
  @override
  final ObservationResponseModel? observationResponseDTO;
  final List<ObservationResponseModel>? _observationResponseDTOList;
  @override
  List<ObservationResponseModel>? get observationResponseDTOList {
    final value = _observationResponseDTOList;
    if (value == null) return null;
    if (_observationResponseDTOList is EqualUnmodifiableListView)
      return _observationResponseDTOList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ObservationSetResponseModel(id: $id, name: $name, version: $version, description: $description, creationDate: $creationDate, observationResponseDTO: $observationResponseDTO, observationResponseDTOList: $observationResponseDTOList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationSetResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.observationResponseDTO, observationResponseDTO) ||
                other.observationResponseDTO == observationResponseDTO) &&
            const DeepCollectionEquality().equals(
                other._observationResponseDTOList,
                _observationResponseDTOList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      version,
      description,
      creationDate,
      observationResponseDTO,
      const DeepCollectionEquality().hash(_observationResponseDTOList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationSetResponseModelCopyWith<_$_ObservationSetResponseModel>
      get copyWith => __$$_ObservationSetResponseModelCopyWithImpl<
          _$_ObservationSetResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationSetResponseModelToJson(
      this,
    );
  }
}

abstract class _ObservationSetResponseModel
    implements ObservationSetResponseModel {
  const factory _ObservationSetResponseModel(
          {final int? id,
          final String? name,
          final String? version,
          final String? description,
          @TimestampConverter() final DateTime? creationDate,
          final ObservationResponseModel? observationResponseDTO,
          final List<ObservationResponseModel>? observationResponseDTOList}) =
      _$_ObservationSetResponseModel;

  factory _ObservationSetResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ObservationSetResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get version;
  @override
  String? get description;
  @override
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  ObservationResponseModel? get observationResponseDTO;
  @override
  List<ObservationResponseModel>? get observationResponseDTOList;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationSetResponseModelCopyWith<_$_ObservationSetResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
