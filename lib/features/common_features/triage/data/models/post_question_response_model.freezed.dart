// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_question_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostQuestionResponseModel _$PostQuestionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PostQuestionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PostQuestionResponseModel {
  int? get linkId => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  List<PostAnswerModel>? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostQuestionResponseModelCopyWith<PostQuestionResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostQuestionResponseModelCopyWith<$Res> {
  factory $PostQuestionResponseModelCopyWith(PostQuestionResponseModel value,
          $Res Function(PostQuestionResponseModel) then) =
      _$PostQuestionResponseModelCopyWithImpl<$Res, PostQuestionResponseModel>;
  @useResult
  $Res call({int? linkId, double? score, List<PostAnswerModel>? answer});
}

/// @nodoc
class _$PostQuestionResponseModelCopyWithImpl<$Res,
        $Val extends PostQuestionResponseModel>
    implements $PostQuestionResponseModelCopyWith<$Res> {
  _$PostQuestionResponseModelCopyWithImpl(this._value, this._then);

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
              as List<PostAnswerModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostQuestionResponseModelCopyWith<$Res>
    implements $PostQuestionResponseModelCopyWith<$Res> {
  factory _$$_PostQuestionResponseModelCopyWith(
          _$_PostQuestionResponseModel value,
          $Res Function(_$_PostQuestionResponseModel) then) =
      __$$_PostQuestionResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? linkId, double? score, List<PostAnswerModel>? answer});
}

/// @nodoc
class __$$_PostQuestionResponseModelCopyWithImpl<$Res>
    extends _$PostQuestionResponseModelCopyWithImpl<$Res,
        _$_PostQuestionResponseModel>
    implements _$$_PostQuestionResponseModelCopyWith<$Res> {
  __$$_PostQuestionResponseModelCopyWithImpl(
      _$_PostQuestionResponseModel _value,
      $Res Function(_$_PostQuestionResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkId = freezed,
    Object? score = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$_PostQuestionResponseModel(
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
              as List<PostAnswerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostQuestionResponseModel implements _PostQuestionResponseModel {
  const _$_PostQuestionResponseModel(
      {this.linkId, this.score, final List<PostAnswerModel>? answer})
      : _answer = answer;

  factory _$_PostQuestionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostQuestionResponseModelFromJson(json);

  @override
  final int? linkId;
  @override
  final double? score;
  final List<PostAnswerModel>? _answer;
  @override
  List<PostAnswerModel>? get answer {
    final value = _answer;
    if (value == null) return null;
    if (_answer is EqualUnmodifiableListView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostQuestionResponseModel(linkId: $linkId, score: $score, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostQuestionResponseModel &&
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
  _$$_PostQuestionResponseModelCopyWith<_$_PostQuestionResponseModel>
      get copyWith => __$$_PostQuestionResponseModelCopyWithImpl<
          _$_PostQuestionResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostQuestionResponseModelToJson(
      this,
    );
  }
}

abstract class _PostQuestionResponseModel implements PostQuestionResponseModel {
  const factory _PostQuestionResponseModel(
      {final int? linkId,
      final double? score,
      final List<PostAnswerModel>? answer}) = _$_PostQuestionResponseModel;

  factory _PostQuestionResponseModel.fromJson(Map<String, dynamic> json) =
      _$_PostQuestionResponseModel.fromJson;

  @override
  int? get linkId;
  @override
  double? get score;
  @override
  List<PostAnswerModel>? get answer;
  @override
  @JsonKey(ignore: true)
  _$$_PostQuestionResponseModelCopyWith<_$_PostQuestionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
