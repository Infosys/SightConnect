// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostAnswerModel _$PostAnswerModelFromJson(Map<String, dynamic> json) {
  return _PostAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$PostAnswerModel {
  String? get value => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostAnswerModelCopyWith<PostAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostAnswerModelCopyWith<$Res> {
  factory $PostAnswerModelCopyWith(
          PostAnswerModel value, $Res Function(PostAnswerModel) then) =
      _$PostAnswerModelCopyWithImpl<$Res, PostAnswerModel>;
  @useResult
  $Res call({String? value, double? score});
}

/// @nodoc
class _$PostAnswerModelCopyWithImpl<$Res, $Val extends PostAnswerModel>
    implements $PostAnswerModelCopyWith<$Res> {
  _$PostAnswerModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_PostAnswerModelCopyWith<$Res>
    implements $PostAnswerModelCopyWith<$Res> {
  factory _$$_PostAnswerModelCopyWith(
          _$_PostAnswerModel value, $Res Function(_$_PostAnswerModel) then) =
      __$$_PostAnswerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value, double? score});
}

/// @nodoc
class __$$_PostAnswerModelCopyWithImpl<$Res>
    extends _$PostAnswerModelCopyWithImpl<$Res, _$_PostAnswerModel>
    implements _$$_PostAnswerModelCopyWith<$Res> {
  __$$_PostAnswerModelCopyWithImpl(
      _$_PostAnswerModel _value, $Res Function(_$_PostAnswerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_PostAnswerModel(
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
class _$_PostAnswerModel implements _PostAnswerModel {
  const _$_PostAnswerModel({this.value, this.score});

  factory _$_PostAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostAnswerModelFromJson(json);

  @override
  final String? value;
  @override
  final double? score;

  @override
  String toString() {
    return 'PostAnswerModel(value: $value, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostAnswerModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostAnswerModelCopyWith<_$_PostAnswerModel> get copyWith =>
      __$$_PostAnswerModelCopyWithImpl<_$_PostAnswerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostAnswerModelToJson(
      this,
    );
  }
}

abstract class _PostAnswerModel implements PostAnswerModel {
  const factory _PostAnswerModel({final String? value, final double? score}) =
      _$_PostAnswerModel;

  factory _PostAnswerModel.fromJson(Map<String, dynamic> json) =
      _$_PostAnswerModel.fromJson;

  @override
  String? get value;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$_PostAnswerModelCopyWith<_$_PostAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
