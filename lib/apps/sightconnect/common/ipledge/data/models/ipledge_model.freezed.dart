/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ipledge_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IPledgeModel _$IPledgeModelFromJson(Map<String, dynamic> json) {
  return _IPledgeModel.fromJson(json);
}

/// @nodoc
mixin _$IPledgeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get kinName => throw _privateConstructorUsedError;
  String? get kinContact => throw _privateConstructorUsedError;
  String? get kinRelation => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get pledgeDate => throw _privateConstructorUsedError;
  String? get pledgeType => throw _privateConstructorUsedError;
  String? get additionalInfo => throw _privateConstructorUsedError;
  int? get patientId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IPledgeModelCopyWith<IPledgeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IPledgeModelCopyWith<$Res> {
  factory $IPledgeModelCopyWith(
          IPledgeModel value, $Res Function(IPledgeModel) then) =
      _$IPledgeModelCopyWithImpl<$Res, IPledgeModel>;
  @useResult
  $Res call(
      {int? id,
      String? kinName,
      String? kinContact,
      String? kinRelation,
      @TimestampConverter() DateTime? pledgeDate,
      String? pledgeType,
      String? additionalInfo,
      int? patientId});
}

/// @nodoc
class _$IPledgeModelCopyWithImpl<$Res, $Val extends IPledgeModel>
    implements $IPledgeModelCopyWith<$Res> {
  _$IPledgeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kinName = freezed,
    Object? kinContact = freezed,
    Object? kinRelation = freezed,
    Object? pledgeDate = freezed,
    Object? pledgeType = freezed,
    Object? additionalInfo = freezed,
    Object? patientId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kinName: freezed == kinName
          ? _value.kinName
          : kinName // ignore: cast_nullable_to_non_nullable
              as String?,
      kinContact: freezed == kinContact
          ? _value.kinContact
          : kinContact // ignore: cast_nullable_to_non_nullable
              as String?,
      kinRelation: freezed == kinRelation
          ? _value.kinRelation
          : kinRelation // ignore: cast_nullable_to_non_nullable
              as String?,
      pledgeDate: freezed == pledgeDate
          ? _value.pledgeDate
          : pledgeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pledgeType: freezed == pledgeType
          ? _value.pledgeType
          : pledgeType // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IPledgeModelImplCopyWith<$Res>
    implements $IPledgeModelCopyWith<$Res> {
  factory _$$IPledgeModelImplCopyWith(
          _$IPledgeModelImpl value, $Res Function(_$IPledgeModelImpl) then) =
      __$$IPledgeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? kinName,
      String? kinContact,
      String? kinRelation,
      @TimestampConverter() DateTime? pledgeDate,
      String? pledgeType,
      String? additionalInfo,
      int? patientId});
}

/// @nodoc
class __$$IPledgeModelImplCopyWithImpl<$Res>
    extends _$IPledgeModelCopyWithImpl<$Res, _$IPledgeModelImpl>
    implements _$$IPledgeModelImplCopyWith<$Res> {
  __$$IPledgeModelImplCopyWithImpl(
      _$IPledgeModelImpl _value, $Res Function(_$IPledgeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kinName = freezed,
    Object? kinContact = freezed,
    Object? kinRelation = freezed,
    Object? pledgeDate = freezed,
    Object? pledgeType = freezed,
    Object? additionalInfo = freezed,
    Object? patientId = freezed,
  }) {
    return _then(_$IPledgeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kinName: freezed == kinName
          ? _value.kinName
          : kinName // ignore: cast_nullable_to_non_nullable
              as String?,
      kinContact: freezed == kinContact
          ? _value.kinContact
          : kinContact // ignore: cast_nullable_to_non_nullable
              as String?,
      kinRelation: freezed == kinRelation
          ? _value.kinRelation
          : kinRelation // ignore: cast_nullable_to_non_nullable
              as String?,
      pledgeDate: freezed == pledgeDate
          ? _value.pledgeDate
          : pledgeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pledgeType: freezed == pledgeType
          ? _value.pledgeType
          : pledgeType // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IPledgeModelImpl implements _IPledgeModel {
  const _$IPledgeModelImpl(
      {this.id,
      this.kinName,
      this.kinContact,
      this.kinRelation,
      @TimestampConverter() this.pledgeDate,
      this.pledgeType,
      this.additionalInfo,
      this.patientId});

  factory _$IPledgeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IPledgeModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? kinName;
  @override
  final String? kinContact;
  @override
  final String? kinRelation;
  @override
  @TimestampConverter()
  final DateTime? pledgeDate;
  @override
  final String? pledgeType;
  @override
  final String? additionalInfo;
  @override
  final int? patientId;

  @override
  String toString() {
    return 'IPledgeModel(id: $id, kinName: $kinName, kinContact: $kinContact, kinRelation: $kinRelation, pledgeDate: $pledgeDate, pledgeType: $pledgeType, additionalInfo: $additionalInfo, patientId: $patientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IPledgeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kinName, kinName) || other.kinName == kinName) &&
            (identical(other.kinContact, kinContact) ||
                other.kinContact == kinContact) &&
            (identical(other.kinRelation, kinRelation) ||
                other.kinRelation == kinRelation) &&
            (identical(other.pledgeDate, pledgeDate) ||
                other.pledgeDate == pledgeDate) &&
            (identical(other.pledgeType, pledgeType) ||
                other.pledgeType == pledgeType) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, kinName, kinContact,
      kinRelation, pledgeDate, pledgeType, additionalInfo, patientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IPledgeModelImplCopyWith<_$IPledgeModelImpl> get copyWith =>
      __$$IPledgeModelImplCopyWithImpl<_$IPledgeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IPledgeModelImplToJson(
      this,
    );
  }
}

abstract class _IPledgeModel implements IPledgeModel {
  const factory _IPledgeModel(
      {final int? id,
      final String? kinName,
      final String? kinContact,
      final String? kinRelation,
      @TimestampConverter() final DateTime? pledgeDate,
      final String? pledgeType,
      final String? additionalInfo,
      final int? patientId}) = _$IPledgeModelImpl;

  factory _IPledgeModel.fromJson(Map<String, dynamic> json) =
      _$IPledgeModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get kinName;
  @override
  String? get kinContact;
  @override
  String? get kinRelation;
  @override
  @TimestampConverter()
  DateTime? get pledgeDate;
  @override
  String? get pledgeType;
  @override
  String? get additionalInfo;
  @override
  int? get patientId;
  @override
  @JsonKey(ignore: true)
  _$$IPledgeModelImplCopyWith<_$IPledgeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
