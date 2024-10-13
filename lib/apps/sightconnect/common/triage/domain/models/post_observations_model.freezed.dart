/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_observations_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostObservationsModel _$PostObservationsModelFromJson(
    Map<String, dynamic> json) {
  return _PostObservationsModel.fromJson(json);
}

/// @nodoc
mixin _$PostObservationsModel {
  int? get identifier => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostObservationsModelCopyWith<PostObservationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostObservationsModelCopyWith<$Res> {
  factory $PostObservationsModelCopyWith(PostObservationsModel value,
          $Res Function(PostObservationsModel) then) =
      _$PostObservationsModelCopyWithImpl<$Res, PostObservationsModel>;
  @useResult
  $Res call({int? identifier, String? value, double? score});
}

/// @nodoc
class _$PostObservationsModelCopyWithImpl<$Res,
        $Val extends PostObservationsModel>
    implements $PostObservationsModelCopyWith<$Res> {
  _$PostObservationsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_PostObservationsModelCopyWith<$Res>
    implements $PostObservationsModelCopyWith<$Res> {
  factory _$$_PostObservationsModelCopyWith(_$_PostObservationsModel value,
          $Res Function(_$_PostObservationsModel) then) =
      __$$_PostObservationsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? identifier, String? value, double? score});
}

/// @nodoc
class __$$_PostObservationsModelCopyWithImpl<$Res>
    extends _$PostObservationsModelCopyWithImpl<$Res, _$_PostObservationsModel>
    implements _$$_PostObservationsModelCopyWith<$Res> {
  __$$_PostObservationsModelCopyWithImpl(_$_PostObservationsModel _value,
      $Res Function(_$_PostObservationsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_PostObservationsModel(
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
class _$_PostObservationsModel implements _PostObservationsModel {
  const _$_PostObservationsModel({this.identifier, this.value, this.score});

  factory _$_PostObservationsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostObservationsModelFromJson(json);

  @override
  final int? identifier;
  @override
  final String? value;
  @override
  final double? score;

  @override
  String toString() {
    return 'PostObservationsModel(identifier: $identifier, value: $value, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostObservationsModel &&
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
  _$$_PostObservationsModelCopyWith<_$_PostObservationsModel> get copyWith =>
      __$$_PostObservationsModelCopyWithImpl<_$_PostObservationsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostObservationsModelToJson(
      this,
    );
  }
}

abstract class _PostObservationsModel implements PostObservationsModel {
  const factory _PostObservationsModel(
      {final int? identifier,
      final String? value,
      final double? score}) = _$_PostObservationsModel;

  factory _PostObservationsModel.fromJson(Map<String, dynamic> json) =
      _$_PostObservationsModel.fromJson;

  @override
  int? get identifier;
  @override
  String? get value;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$_PostObservationsModelCopyWith<_$_PostObservationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
