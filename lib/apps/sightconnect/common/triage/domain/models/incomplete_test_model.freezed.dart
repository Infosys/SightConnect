/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incomplete_test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IncompleteTestModel _$IncompleteTestModelFromJson(Map<String, dynamic> json) {
  return _IncompleteTestModel.fromJson(json);
}

/// @nodoc
mixin _$IncompleteTestModel {
  int? get id => throw _privateConstructorUsedError;
  TestName? get testName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncompleteTestModelCopyWith<IncompleteTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncompleteTestModelCopyWith<$Res> {
  factory $IncompleteTestModelCopyWith(
          IncompleteTestModel value, $Res Function(IncompleteTestModel) then) =
      _$IncompleteTestModelCopyWithImpl<$Res, IncompleteTestModel>;
  @useResult
  $Res call({int? id, TestName? testName});
}

/// @nodoc
class _$IncompleteTestModelCopyWithImpl<$Res, $Val extends IncompleteTestModel>
    implements $IncompleteTestModelCopyWith<$Res> {
  _$IncompleteTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? testName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      testName: freezed == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestName?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IncompleteTestModelCopyWith<$Res>
    implements $IncompleteTestModelCopyWith<$Res> {
  factory _$$_IncompleteTestModelCopyWith(_$_IncompleteTestModel value,
          $Res Function(_$_IncompleteTestModel) then) =
      __$$_IncompleteTestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, TestName? testName});
}

/// @nodoc
class __$$_IncompleteTestModelCopyWithImpl<$Res>
    extends _$IncompleteTestModelCopyWithImpl<$Res, _$_IncompleteTestModel>
    implements _$$_IncompleteTestModelCopyWith<$Res> {
  __$$_IncompleteTestModelCopyWithImpl(_$_IncompleteTestModel _value,
      $Res Function(_$_IncompleteTestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? testName = freezed,
  }) {
    return _then(_$_IncompleteTestModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      testName: freezed == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestName?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IncompleteTestModel implements _IncompleteTestModel {
  const _$_IncompleteTestModel({this.id, this.testName});

  factory _$_IncompleteTestModel.fromJson(Map<String, dynamic> json) =>
      _$$_IncompleteTestModelFromJson(json);

  @override
  final int? id;
  @override
  final TestName? testName;

  @override
  String toString() {
    return 'IncompleteTestModel(id: $id, testName: $testName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncompleteTestModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.testName, testName) ||
                other.testName == testName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, testName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncompleteTestModelCopyWith<_$_IncompleteTestModel> get copyWith =>
      __$$_IncompleteTestModelCopyWithImpl<_$_IncompleteTestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IncompleteTestModelToJson(
      this,
    );
  }
}

abstract class _IncompleteTestModel implements IncompleteTestModel {
  const factory _IncompleteTestModel(
      {final int? id, final TestName? testName}) = _$_IncompleteTestModel;

  factory _IncompleteTestModel.fromJson(Map<String, dynamic> json) =
      _$_IncompleteTestModel.fromJson;

  @override
  int? get id;
  @override
  TestName? get testName;
  @override
  @JsonKey(ignore: true)
  _$$_IncompleteTestModelCopyWith<_$_IncompleteTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
