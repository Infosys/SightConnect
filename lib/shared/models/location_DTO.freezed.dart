// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationDTO _$LocationDTOFromJson(Map<String, dynamic> json) {
  return _LocationDTO.fromJson(json);
}

/// @nodoc
mixin _$LocationDTO {
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDTOCopyWith<LocationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDTOCopyWith<$Res> {
  factory $LocationDTOCopyWith(
          LocationDTO value, $Res Function(LocationDTO) then) =
      _$LocationDTOCopyWithImpl<$Res, LocationDTO>;
  @useResult
  $Res call({String? latitude, String? longitude});
}

/// @nodoc
class _$LocationDTOCopyWithImpl<$Res, $Val extends LocationDTO>
    implements $LocationDTOCopyWith<$Res> {
  _$LocationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationDTOCopyWith<$Res>
    implements $LocationDTOCopyWith<$Res> {
  factory _$$_LocationDTOCopyWith(
          _$_LocationDTO value, $Res Function(_$_LocationDTO) then) =
      __$$_LocationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? latitude, String? longitude});
}

/// @nodoc
class __$$_LocationDTOCopyWithImpl<$Res>
    extends _$LocationDTOCopyWithImpl<$Res, _$_LocationDTO>
    implements _$$_LocationDTOCopyWith<$Res> {
  __$$_LocationDTOCopyWithImpl(
      _$_LocationDTO _value, $Res Function(_$_LocationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_LocationDTO(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDTO implements _LocationDTO {
  const _$_LocationDTO({this.latitude, this.longitude});

  factory _$_LocationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDTOFromJson(json);

  @override
  final String? latitude;
  @override
  final String? longitude;

  @override
  String toString() {
    return 'LocationDTO(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationDTO &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationDTOCopyWith<_$_LocationDTO> get copyWith =>
      __$$_LocationDTOCopyWithImpl<_$_LocationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationDTOToJson(
      this,
    );
  }
}

abstract class _LocationDTO implements LocationDTO {
  const factory _LocationDTO(
      {final String? latitude, final String? longitude}) = _$_LocationDTO;

  factory _LocationDTO.fromJson(Map<String, dynamic> json) =
      _$_LocationDTO.fromJson;

  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_LocationDTOCopyWith<_$_LocationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
