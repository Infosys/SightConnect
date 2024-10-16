/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_on_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActionOnResponseModel _$ActionOnResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ActionOnResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ActionOnResponseModel {
  int? get id => throw _privateConstructorUsedError;
  Operator? get operator => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  ActionType? get actionType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionOnResponseModelCopyWith<ActionOnResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionOnResponseModelCopyWith<$Res> {
  factory $ActionOnResponseModelCopyWith(ActionOnResponseModel value,
          $Res Function(ActionOnResponseModel) then) =
      _$ActionOnResponseModelCopyWithImpl<$Res, ActionOnResponseModel>;
  @useResult
  $Res call(
      {int? id, Operator? operator, String? answer, ActionType? actionType});
}

/// @nodoc
class _$ActionOnResponseModelCopyWithImpl<$Res,
        $Val extends ActionOnResponseModel>
    implements $ActionOnResponseModelCopyWith<$Res> {
  _$ActionOnResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? operator = freezed,
    Object? answer = freezed,
    Object? actionType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as Operator?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ActionType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActionOnResponseModelCopyWith<$Res>
    implements $ActionOnResponseModelCopyWith<$Res> {
  factory _$$_ActionOnResponseModelCopyWith(_$_ActionOnResponseModel value,
          $Res Function(_$_ActionOnResponseModel) then) =
      __$$_ActionOnResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, Operator? operator, String? answer, ActionType? actionType});
}

/// @nodoc
class __$$_ActionOnResponseModelCopyWithImpl<$Res>
    extends _$ActionOnResponseModelCopyWithImpl<$Res, _$_ActionOnResponseModel>
    implements _$$_ActionOnResponseModelCopyWith<$Res> {
  __$$_ActionOnResponseModelCopyWithImpl(_$_ActionOnResponseModel _value,
      $Res Function(_$_ActionOnResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? operator = freezed,
    Object? answer = freezed,
    Object? actionType = freezed,
  }) {
    return _then(_$_ActionOnResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as Operator?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ActionType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActionOnResponseModel implements _ActionOnResponseModel {
  const _$_ActionOnResponseModel(
      {this.id, this.operator, this.answer, this.actionType});

  factory _$_ActionOnResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ActionOnResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final Operator? operator;
  @override
  final String? answer;
  @override
  final ActionType? actionType;

  @override
  String toString() {
    return 'ActionOnResponseModel(id: $id, operator: $operator, answer: $answer, actionType: $actionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionOnResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, operator, answer, actionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionOnResponseModelCopyWith<_$_ActionOnResponseModel> get copyWith =>
      __$$_ActionOnResponseModelCopyWithImpl<_$_ActionOnResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActionOnResponseModelToJson(
      this,
    );
  }
}

abstract class _ActionOnResponseModel implements ActionOnResponseModel {
  const factory _ActionOnResponseModel(
      {final int? id,
      final Operator? operator,
      final String? answer,
      final ActionType? actionType}) = _$_ActionOnResponseModel;

  factory _ActionOnResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ActionOnResponseModel.fromJson;

  @override
  int? get id;
  @override
  Operator? get operator;
  @override
  String? get answer;
  @override
  ActionType? get actionType;
  @override
  @JsonKey(ignore: true)
  _$$_ActionOnResponseModelCopyWith<_$_ActionOnResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
