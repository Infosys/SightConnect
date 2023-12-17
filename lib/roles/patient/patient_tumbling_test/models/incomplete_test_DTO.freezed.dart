// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incomplete_test_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IncompleteTestDTO _$IncompleteTestDTOFromJson(Map<String, dynamic> json) {
  return _IncompleteTestDTO.fromJson(json);
}

/// @nodoc
mixin _$IncompleteTestDTO {
  int? get id => throw _privateConstructorUsedError;
  TestName? get testName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncompleteTestDTOCopyWith<IncompleteTestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncompleteTestDTOCopyWith<$Res> {
  factory $IncompleteTestDTOCopyWith(
          IncompleteTestDTO value, $Res Function(IncompleteTestDTO) then) =
      _$IncompleteTestDTOCopyWithImpl<$Res, IncompleteTestDTO>;
  @useResult
  $Res call({int? id, TestName? testName});
}

/// @nodoc
class _$IncompleteTestDTOCopyWithImpl<$Res, $Val extends IncompleteTestDTO>
    implements $IncompleteTestDTOCopyWith<$Res> {
  _$IncompleteTestDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_IncompleteTestDTOCopyWith<$Res>
    implements $IncompleteTestDTOCopyWith<$Res> {
  factory _$$_IncompleteTestDTOCopyWith(_$_IncompleteTestDTO value,
          $Res Function(_$_IncompleteTestDTO) then) =
      __$$_IncompleteTestDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, TestName? testName});
}

/// @nodoc
class __$$_IncompleteTestDTOCopyWithImpl<$Res>
    extends _$IncompleteTestDTOCopyWithImpl<$Res, _$_IncompleteTestDTO>
    implements _$$_IncompleteTestDTOCopyWith<$Res> {
  __$$_IncompleteTestDTOCopyWithImpl(
      _$_IncompleteTestDTO _value, $Res Function(_$_IncompleteTestDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? testName = freezed,
  }) {
    return _then(_$_IncompleteTestDTO(
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
class _$_IncompleteTestDTO implements _IncompleteTestDTO {
  const _$_IncompleteTestDTO({this.id, this.testName});

  factory _$_IncompleteTestDTO.fromJson(Map<String, dynamic> json) =>
      _$$_IncompleteTestDTOFromJson(json);

  @override
  final int? id;
  @override
  final TestName? testName;

  @override
  String toString() {
    return 'IncompleteTestDTO(id: $id, testName: $testName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncompleteTestDTO &&
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
  _$$_IncompleteTestDTOCopyWith<_$_IncompleteTestDTO> get copyWith =>
      __$$_IncompleteTestDTOCopyWithImpl<_$_IncompleteTestDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IncompleteTestDTOToJson(
      this,
    );
  }
}

abstract class _IncompleteTestDTO implements IncompleteTestDTO {
  const factory _IncompleteTestDTO({final int? id, final TestName? testName}) =
      _$_IncompleteTestDTO;

  factory _IncompleteTestDTO.fromJson(Map<String, dynamic> json) =
      _$_IncompleteTestDTO.fromJson;

  @override
  int? get id;
  @override
  TestName? get testName;
  @override
  @JsonKey(ignore: true)
  _$$_IncompleteTestDTOCopyWith<_$_IncompleteTestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
