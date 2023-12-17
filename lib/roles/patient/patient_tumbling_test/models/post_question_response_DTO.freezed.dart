// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_question_response_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostQuestionResponseDTO _$PostQuestionResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _PostQuestionResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$PostQuestionResponseDTO {
  int? get linkId => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  List<PostAnswerDTO>? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostQuestionResponseDTOCopyWith<PostQuestionResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostQuestionResponseDTOCopyWith<$Res> {
  factory $PostQuestionResponseDTOCopyWith(PostQuestionResponseDTO value,
          $Res Function(PostQuestionResponseDTO) then) =
      _$PostQuestionResponseDTOCopyWithImpl<$Res, PostQuestionResponseDTO>;
  @useResult
  $Res call({int? linkId, double? score, List<PostAnswerDTO>? answer});
}

/// @nodoc
class _$PostQuestionResponseDTOCopyWithImpl<$Res,
        $Val extends PostQuestionResponseDTO>
    implements $PostQuestionResponseDTOCopyWith<$Res> {
  _$PostQuestionResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkId = freezed,
    Object? score = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<PostAnswerDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostQuestionResponseDTOCopyWith<$Res>
    implements $PostQuestionResponseDTOCopyWith<$Res> {
  factory _$$_PostQuestionResponseDTOCopyWith(_$_PostQuestionResponseDTO value,
          $Res Function(_$_PostQuestionResponseDTO) then) =
      __$$_PostQuestionResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? linkId, double? score, List<PostAnswerDTO>? answer});
}

/// @nodoc
class __$$_PostQuestionResponseDTOCopyWithImpl<$Res>
    extends _$PostQuestionResponseDTOCopyWithImpl<$Res,
        _$_PostQuestionResponseDTO>
    implements _$$_PostQuestionResponseDTOCopyWith<$Res> {
  __$$_PostQuestionResponseDTOCopyWithImpl(_$_PostQuestionResponseDTO _value,
      $Res Function(_$_PostQuestionResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkId = freezed,
    Object? score = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$_PostQuestionResponseDTO(
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      answer: freezed == answer
          ? _value._answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<PostAnswerDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostQuestionResponseDTO implements _PostQuestionResponseDTO {
  const _$_PostQuestionResponseDTO(
      {this.linkId, this.score, final List<PostAnswerDTO>? answer})
      : _answer = answer;

  factory _$_PostQuestionResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PostQuestionResponseDTOFromJson(json);

  @override
  final int? linkId;
  @override
  final double? score;
  final List<PostAnswerDTO>? _answer;
  @override
  List<PostAnswerDTO>? get answer {
    final value = _answer;
    if (value == null) return null;
    if (_answer is EqualUnmodifiableListView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostQuestionResponseDTO(linkId: $linkId, score: $score, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostQuestionResponseDTO &&
            (identical(other.linkId, linkId) || other.linkId == linkId) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._answer, _answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, linkId, score, const DeepCollectionEquality().hash(_answer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostQuestionResponseDTOCopyWith<_$_PostQuestionResponseDTO>
      get copyWith =>
          __$$_PostQuestionResponseDTOCopyWithImpl<_$_PostQuestionResponseDTO>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostQuestionResponseDTOToJson(
      this,
    );
  }
}

abstract class _PostQuestionResponseDTO implements PostQuestionResponseDTO {
  const factory _PostQuestionResponseDTO(
      {final int? linkId,
      final double? score,
      final List<PostAnswerDTO>? answer}) = _$_PostQuestionResponseDTO;

  factory _PostQuestionResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_PostQuestionResponseDTO.fromJson;

  @override
  int? get linkId;
  @override
  double? get score;
  @override
  List<PostAnswerDTO>? get answer;
  @override
  @JsonKey(ignore: true)
  _$$_PostQuestionResponseDTOCopyWith<_$_PostQuestionResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}
