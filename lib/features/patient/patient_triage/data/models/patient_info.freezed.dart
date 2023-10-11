// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientInfo _$PatientInfoFromJson(Map<String, dynamic> json) {
  return _PatientInfo.fromJson(json);
}

/// @nodoc
mixin _$PatientInfo {
  int get id => throw _privateConstructorUsedError;
  String? get registryRef => throw _privateConstructorUsedError;
  String? get mobileNumber => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientInfoCopyWith<PatientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientInfoCopyWith<$Res> {
  factory $PatientInfoCopyWith(
          PatientInfo value, $Res Function(PatientInfo) then) =
      _$PatientInfoCopyWithImpl<$Res, PatientInfo>;
  @useResult
  $Res call(
      {int id,
      String? registryRef,
      String? mobileNumber,
      bool? isDeleted,
      bool? deleted});
}

/// @nodoc
class _$PatientInfoCopyWithImpl<$Res, $Val extends PatientInfo>
    implements $PatientInfoCopyWith<$Res> {
  _$PatientInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? registryRef = freezed,
    Object? mobileNumber = freezed,
    Object? isDeleted = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      registryRef: freezed == registryRef
          ? _value.registryRef
          : registryRef // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientInfoCopyWith<$Res>
    implements $PatientInfoCopyWith<$Res> {
  factory _$$_PatientInfoCopyWith(
          _$_PatientInfo value, $Res Function(_$_PatientInfo) then) =
      __$$_PatientInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? registryRef,
      String? mobileNumber,
      bool? isDeleted,
      bool? deleted});
}

/// @nodoc
class __$$_PatientInfoCopyWithImpl<$Res>
    extends _$PatientInfoCopyWithImpl<$Res, _$_PatientInfo>
    implements _$$_PatientInfoCopyWith<$Res> {
  __$$_PatientInfoCopyWithImpl(
      _$_PatientInfo _value, $Res Function(_$_PatientInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? registryRef = freezed,
    Object? mobileNumber = freezed,
    Object? isDeleted = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_PatientInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      registryRef: freezed == registryRef
          ? _value.registryRef
          : registryRef // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientInfo implements _PatientInfo {
  const _$_PatientInfo(
      {required this.id,
      this.registryRef,
      this.mobileNumber,
      this.isDeleted,
      this.deleted});

  factory _$_PatientInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PatientInfoFromJson(json);

  @override
  final int id;
  @override
  final String? registryRef;
  @override
  final String? mobileNumber;
  @override
  final bool? isDeleted;
  @override
  final bool? deleted;

  @override
  String toString() {
    return 'PatientInfo(id: $id, registryRef: $registryRef, mobileNumber: $mobileNumber, isDeleted: $isDeleted, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.registryRef, registryRef) ||
                other.registryRef == registryRef) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, registryRef, mobileNumber, isDeleted, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientInfoCopyWith<_$_PatientInfo> get copyWith =>
      __$$_PatientInfoCopyWithImpl<_$_PatientInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientInfoToJson(
      this,
    );
  }
}

abstract class _PatientInfo implements PatientInfo {
  const factory _PatientInfo(
      {required final int id,
      final String? registryRef,
      final String? mobileNumber,
      final bool? isDeleted,
      final bool? deleted}) = _$_PatientInfo;

  factory _PatientInfo.fromJson(Map<String, dynamic> json) =
      _$_PatientInfo.fromJson;

  @override
  int get id;
  @override
  String? get registryRef;
  @override
  String? get mobileNumber;
  @override
  bool? get isDeleted;
  @override
  bool? get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_PatientInfoCopyWith<_$_PatientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
