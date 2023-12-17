// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_observations_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostObservationsDTO _$PostObservationsDTOFromJson(Map<String, dynamic> json) {
  return _PostObservationsDTO.fromJson(json);
}

/// @nodoc
mixin _$PostObservationsDTO {
  int? get identifier => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostObservationsDTOCopyWith<PostObservationsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostObservationsDTOCopyWith<$Res> {
  factory $PostObservationsDTOCopyWith(
          PostObservationsDTO value, $Res Function(PostObservationsDTO) then) =
      _$PostObservationsDTOCopyWithImpl<$Res, PostObservationsDTO>;
  @useResult
  $Res call({int? identifier, String? value, double? score});
}

/// @nodoc
class _$PostObservationsDTOCopyWithImpl<$Res, $Val extends PostObservationsDTO>
    implements $PostObservationsDTOCopyWith<$Res> {
  _$PostObservationsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostObservationsDTOCopyWith<$Res>
    implements $PostObservationsDTOCopyWith<$Res> {
  factory _$$_PostObservationsDTOCopyWith(_$_PostObservationsDTO value,
          $Res Function(_$_PostObservationsDTO) then) =
      __$$_PostObservationsDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? identifier, String? value, double? score});
}

/// @nodoc
class __$$_PostObservationsDTOCopyWithImpl<$Res>
    extends _$PostObservationsDTOCopyWithImpl<$Res, _$_PostObservationsDTO>
    implements _$$_PostObservationsDTOCopyWith<$Res> {
  __$$_PostObservationsDTOCopyWithImpl(_$_PostObservationsDTO _value,
      $Res Function(_$_PostObservationsDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_PostObservationsDTO(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostObservationsDTO implements _PostObservationsDTO {
  const _$_PostObservationsDTO({this.identifier, this.value, this.score});

  factory _$_PostObservationsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PostObservationsDTOFromJson(json);

  @override
  final int? identifier;
  @override
  final String? value;
  @override
  final double? score;

  @override
  String toString() {
    return 'PostObservationsDTO(identifier: $identifier, value: $value, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostObservationsDTO &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, value, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostObservationsDTOCopyWith<_$_PostObservationsDTO> get copyWith =>
      __$$_PostObservationsDTOCopyWithImpl<_$_PostObservationsDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostObservationsDTOToJson(
      this,
    );
  }
}

abstract class _PostObservationsDTO implements PostObservationsDTO {
  const factory _PostObservationsDTO(
      {final int? identifier,
      final String? value,
      final double? score}) = _$_PostObservationsDTO;

  factory _PostObservationsDTO.fromJson(Map<String, dynamic> json) =
      _$_PostObservationsDTO.fromJson;

  @override
  int? get identifier;
  @override
  String? get value;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$_PostObservationsDTOCopyWith<_$_PostObservationsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
