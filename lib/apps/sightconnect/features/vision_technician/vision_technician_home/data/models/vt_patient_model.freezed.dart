/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vt_patient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VTPatientDto _$VTPatientDtoFromJson(Map<String, dynamic> json) {
  return _VTPatientDto.fromJson(json);
}

/// @nodoc
mixin _$VTPatientDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get yearOfBirth => throw _privateConstructorUsedError;
  String? get monthOfBirth => throw _privateConstructorUsedError;
  String? get dayOfBirth => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  String? get districtName => throw _privateConstructorUsedError;
  String? get townName => throw _privateConstructorUsedError;
  String? get pincode => throw _privateConstructorUsedError;
  int? get encounterId => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get encounterStartDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  EncounterStatus? get encounterStatus => throw _privateConstructorUsedError;
  SeverityCategory? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VTPatientDtoCopyWith<VTPatientDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VTPatientDtoCopyWith<$Res> {
  factory $VTPatientDtoCopyWith(
          VTPatientDto value, $Res Function(VTPatientDto) then) =
      _$VTPatientDtoCopyWithImpl<$Res, VTPatientDto>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? mobile,
      String? yearOfBirth,
      String? monthOfBirth,
      String? dayOfBirth,
      Gender? gender,
      String? districtName,
      String? townName,
      String? pincode,
      int? encounterId,
      @TimestampConverter() DateTime? encounterStartDate,
      String? status,
      EncounterStatus? encounterStatus,
      SeverityCategory? category});
}

/// @nodoc
class _$VTPatientDtoCopyWithImpl<$Res, $Val extends VTPatientDto>
    implements $VTPatientDtoCopyWith<$Res> {
  _$VTPatientDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? mobile = freezed,
    Object? yearOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? dayOfBirth = freezed,
    Object? gender = freezed,
    Object? districtName = freezed,
    Object? townName = freezed,
    Object? pincode = freezed,
    Object? encounterId = freezed,
    Object? encounterStartDate = freezed,
    Object? status = freezed,
    Object? encounterStatus = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      yearOfBirth: freezed == yearOfBirth
          ? _value.yearOfBirth
          : yearOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      monthOfBirth: freezed == monthOfBirth
          ? _value.monthOfBirth
          : monthOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfBirth: freezed == dayOfBirth
          ? _value.dayOfBirth
          : dayOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      districtName: freezed == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
      townName: freezed == townName
          ? _value.townName
          : townName // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      encounterStartDate: freezed == encounterStartDate
          ? _value.encounterStartDate
          : encounterStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      encounterStatus: freezed == encounterStatus
          ? _value.encounterStatus
          : encounterStatus // ignore: cast_nullable_to_non_nullable
              as EncounterStatus?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SeverityCategory?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VTPatientDtoImplCopyWith<$Res>
    implements $VTPatientDtoCopyWith<$Res> {
  factory _$$VTPatientDtoImplCopyWith(
          _$VTPatientDtoImpl value, $Res Function(_$VTPatientDtoImpl) then) =
      __$$VTPatientDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? mobile,
      String? yearOfBirth,
      String? monthOfBirth,
      String? dayOfBirth,
      Gender? gender,
      String? districtName,
      String? townName,
      String? pincode,
      int? encounterId,
      @TimestampConverter() DateTime? encounterStartDate,
      String? status,
      EncounterStatus? encounterStatus,
      SeverityCategory? category});
}

/// @nodoc
class __$$VTPatientDtoImplCopyWithImpl<$Res>
    extends _$VTPatientDtoCopyWithImpl<$Res, _$VTPatientDtoImpl>
    implements _$$VTPatientDtoImplCopyWith<$Res> {
  __$$VTPatientDtoImplCopyWithImpl(
      _$VTPatientDtoImpl _value, $Res Function(_$VTPatientDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? mobile = freezed,
    Object? yearOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? dayOfBirth = freezed,
    Object? gender = freezed,
    Object? districtName = freezed,
    Object? townName = freezed,
    Object? pincode = freezed,
    Object? encounterId = freezed,
    Object? encounterStartDate = freezed,
    Object? status = freezed,
    Object? encounterStatus = freezed,
    Object? category = freezed,
  }) {
    return _then(_$VTPatientDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      yearOfBirth: freezed == yearOfBirth
          ? _value.yearOfBirth
          : yearOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      monthOfBirth: freezed == monthOfBirth
          ? _value.monthOfBirth
          : monthOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfBirth: freezed == dayOfBirth
          ? _value.dayOfBirth
          : dayOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      districtName: freezed == districtName
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as String?,
      townName: freezed == townName
          ? _value.townName
          : townName // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      encounterStartDate: freezed == encounterStartDate
          ? _value.encounterStartDate
          : encounterStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      encounterStatus: freezed == encounterStatus
          ? _value.encounterStatus
          : encounterStatus // ignore: cast_nullable_to_non_nullable
              as EncounterStatus?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SeverityCategory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VTPatientDtoImpl implements _VTPatientDto {
  const _$VTPatientDtoImpl(
      {this.id,
      this.name,
      this.mobile,
      this.yearOfBirth,
      this.monthOfBirth,
      this.dayOfBirth,
      this.gender,
      this.districtName,
      this.townName,
      this.pincode,
      this.encounterId,
      @TimestampConverter() this.encounterStartDate,
      this.status,
      this.encounterStatus,
      this.category});

  factory _$VTPatientDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VTPatientDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? mobile;
  @override
  final String? yearOfBirth;
  @override
  final String? monthOfBirth;
  @override
  final String? dayOfBirth;
  @override
  final Gender? gender;
  @override
  final String? districtName;
  @override
  final String? townName;
  @override
  final String? pincode;
  @override
  final int? encounterId;
  @override
  @TimestampConverter()
  final DateTime? encounterStartDate;
  @override
  final String? status;
  @override
  final EncounterStatus? encounterStatus;
  @override
  final SeverityCategory? category;

  @override
  String toString() {
    return 'VTPatientDto(id: $id, name: $name, mobile: $mobile, yearOfBirth: $yearOfBirth, monthOfBirth: $monthOfBirth, dayOfBirth: $dayOfBirth, gender: $gender, districtName: $districtName, townName: $townName, pincode: $pincode, encounterId: $encounterId, encounterStartDate: $encounterStartDate, status: $status, encounterStatus: $encounterStatus, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VTPatientDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.yearOfBirth, yearOfBirth) ||
                other.yearOfBirth == yearOfBirth) &&
            (identical(other.monthOfBirth, monthOfBirth) ||
                other.monthOfBirth == monthOfBirth) &&
            (identical(other.dayOfBirth, dayOfBirth) ||
                other.dayOfBirth == dayOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.districtName, districtName) ||
                other.districtName == districtName) &&
            (identical(other.townName, townName) ||
                other.townName == townName) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.encounterStartDate, encounterStartDate) ||
                other.encounterStartDate == encounterStartDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.encounterStatus, encounterStatus) ||
                other.encounterStatus == encounterStatus) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      mobile,
      yearOfBirth,
      monthOfBirth,
      dayOfBirth,
      gender,
      districtName,
      townName,
      pincode,
      encounterId,
      encounterStartDate,
      status,
      encounterStatus,
      category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VTPatientDtoImplCopyWith<_$VTPatientDtoImpl> get copyWith =>
      __$$VTPatientDtoImplCopyWithImpl<_$VTPatientDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VTPatientDtoImplToJson(
      this,
    );
  }
}

abstract class _VTPatientDto implements VTPatientDto {
  const factory _VTPatientDto(
      {final int? id,
      final String? name,
      final String? mobile,
      final String? yearOfBirth,
      final String? monthOfBirth,
      final String? dayOfBirth,
      final Gender? gender,
      final String? districtName,
      final String? townName,
      final String? pincode,
      final int? encounterId,
      @TimestampConverter() final DateTime? encounterStartDate,
      final String? status,
      final EncounterStatus? encounterStatus,
      final SeverityCategory? category}) = _$VTPatientDtoImpl;

  factory _VTPatientDto.fromJson(Map<String, dynamic> json) =
      _$VTPatientDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get mobile;
  @override
  String? get yearOfBirth;
  @override
  String? get monthOfBirth;
  @override
  String? get dayOfBirth;
  @override
  Gender? get gender;
  @override
  String? get districtName;
  @override
  String? get townName;
  @override
  String? get pincode;
  @override
  int? get encounterId;
  @override
  @TimestampConverter()
  DateTime? get encounterStartDate;
  @override
  String? get status;
  @override
  EncounterStatus? get encounterStatus;
  @override
  SeverityCategory? get category;
  @override
  @JsonKey(ignore: true)
  _$$VTPatientDtoImplCopyWith<_$VTPatientDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
