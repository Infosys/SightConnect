// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_answer_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostAnswerDTO _$PostAnswerDTOFromJson(Map<String, dynamic> json) {
  return _PostAnswerDTO.fromJson(json);
}

/// @nodoc
mixin _$PostAnswerDTO {
  String? get value => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostAnswerDTOCopyWith<PostAnswerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostAnswerDTOCopyWith<$Res> {
  factory $PostAnswerDTOCopyWith(
          PostAnswerDTO value, $Res Function(PostAnswerDTO) then) =
      _$PostAnswerDTOCopyWithImpl<$Res, PostAnswerDTO>;
  @useResult
  $Res call({String? value, double? score});
}

/// @nodoc
class _$PostAnswerDTOCopyWithImpl<$Res, $Val extends PostAnswerDTO>
    implements $PostAnswerDTOCopyWith<$Res> {
  _$PostAnswerDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_PostAnswerDTOCopyWith<$Res>
    implements $PostAnswerDTOCopyWith<$Res> {
  factory _$$_PostAnswerDTOCopyWith(
          _$_PostAnswerDTO value, $Res Function(_$_PostAnswerDTO) then) =
      __$$_PostAnswerDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value, double? score});
}

/// @nodoc
class __$$_PostAnswerDTOCopyWithImpl<$Res>
    extends _$PostAnswerDTOCopyWithImpl<$Res, _$_PostAnswerDTO>
    implements _$$_PostAnswerDTOCopyWith<$Res> {
  __$$_PostAnswerDTOCopyWithImpl(
      _$_PostAnswerDTO _value, $Res Function(_$_PostAnswerDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_PostAnswerDTO(
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
class _$_PostAnswerDTO implements _PostAnswerDTO {
  const _$_PostAnswerDTO({this.value, this.score});

  factory _$_PostAnswerDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PostAnswerDTOFromJson(json);

  @override
  final String? value;
  @override
  final double? score;

  @override
  String toString() {
    return 'PostAnswerDTO(value: $value, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostAnswerDTO &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostAnswerDTOCopyWith<_$_PostAnswerDTO> get copyWith =>
      __$$_PostAnswerDTOCopyWithImpl<_$_PostAnswerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostAnswerDTOToJson(
      this,
    );
  }
}

abstract class _PostAnswerDTO implements PostAnswerDTO {
  const factory _PostAnswerDTO({final String? value, final double? score}) =
      _$_PostAnswerDTO;

  factory _PostAnswerDTO.fromJson(Map<String, dynamic> json) =
      _$_PostAnswerDTO.fromJson;

  @override
  String? get value;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$_PostAnswerDTOCopyWith<_$_PostAnswerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
