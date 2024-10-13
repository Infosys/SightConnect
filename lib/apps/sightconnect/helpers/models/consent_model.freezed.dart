/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsentModel _$ConsentModelFromJson(Map<String, dynamic> json) {
  return _ConsentModel.fromJson(json);
}

/// @nodoc
mixin _$ConsentModel {
  int? get templateId => throw _privateConstructorUsedError;
  String? get consentVersion => throw _privateConstructorUsedError;
  String? get templateType => throw _privateConstructorUsedError;
  ConsentStatus get consentStatus => throw _privateConstructorUsedError;
  String? get acknowledgeDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsentModelCopyWith<ConsentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsentModelCopyWith<$Res> {
  factory $ConsentModelCopyWith(
          ConsentModel value, $Res Function(ConsentModel) then) =
      _$ConsentModelCopyWithImpl<$Res, ConsentModel>;
  @useResult
  $Res call(
      {int? templateId,
      String? consentVersion,
      String? templateType,
      ConsentStatus consentStatus,
      String? acknowledgeDate});
}

/// @nodoc
class _$ConsentModelCopyWithImpl<$Res, $Val extends ConsentModel>
    implements $ConsentModelCopyWith<$Res> {
  _$ConsentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = freezed,
    Object? consentVersion = freezed,
    Object? templateType = freezed,
    Object? consentStatus = null,
    Object? acknowledgeDate = freezed,
  }) {
    return _then(_value.copyWith(
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int?,
      consentVersion: freezed == consentVersion
          ? _value.consentVersion
          : consentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      templateType: freezed == templateType
          ? _value.templateType
          : templateType // ignore: cast_nullable_to_non_nullable
              as String?,
      consentStatus: null == consentStatus
          ? _value.consentStatus
          : consentStatus // ignore: cast_nullable_to_non_nullable
              as ConsentStatus,
      acknowledgeDate: freezed == acknowledgeDate
          ? _value.acknowledgeDate
          : acknowledgeDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsentModelImplCopyWith<$Res>
    implements $ConsentModelCopyWith<$Res> {
  factory _$$ConsentModelImplCopyWith(
          _$ConsentModelImpl value, $Res Function(_$ConsentModelImpl) then) =
      __$$ConsentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? templateId,
      String? consentVersion,
      String? templateType,
      ConsentStatus consentStatus,
      String? acknowledgeDate});
}

/// @nodoc
class __$$ConsentModelImplCopyWithImpl<$Res>
    extends _$ConsentModelCopyWithImpl<$Res, _$ConsentModelImpl>
    implements _$$ConsentModelImplCopyWith<$Res> {
  __$$ConsentModelImplCopyWithImpl(
      _$ConsentModelImpl _value, $Res Function(_$ConsentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = freezed,
    Object? consentVersion = freezed,
    Object? templateType = freezed,
    Object? consentStatus = null,
    Object? acknowledgeDate = freezed,
  }) {
    return _then(_$ConsentModelImpl(
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int?,
      consentVersion: freezed == consentVersion
          ? _value.consentVersion
          : consentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      templateType: freezed == templateType
          ? _value.templateType
          : templateType // ignore: cast_nullable_to_non_nullable
              as String?,
      consentStatus: null == consentStatus
          ? _value.consentStatus
          : consentStatus // ignore: cast_nullable_to_non_nullable
              as ConsentStatus,
      acknowledgeDate: freezed == acknowledgeDate
          ? _value.acknowledgeDate
          : acknowledgeDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsentModelImpl implements _ConsentModel {
  const _$ConsentModelImpl(
      {this.templateId,
      this.consentVersion,
      this.templateType,
      this.consentStatus = ConsentStatus.PENDING,
      this.acknowledgeDate});

  factory _$ConsentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsentModelImplFromJson(json);

  @override
  final int? templateId;
  @override
  final String? consentVersion;
  @override
  final String? templateType;
  @override
  @JsonKey()
  final ConsentStatus consentStatus;
  @override
  final String? acknowledgeDate;

  @override
  String toString() {
    return 'ConsentModel(templateId: $templateId, consentVersion: $consentVersion, templateType: $templateType, consentStatus: $consentStatus, acknowledgeDate: $acknowledgeDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsentModelImpl &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.consentVersion, consentVersion) ||
                other.consentVersion == consentVersion) &&
            (identical(other.templateType, templateType) ||
                other.templateType == templateType) &&
            (identical(other.consentStatus, consentStatus) ||
                other.consentStatus == consentStatus) &&
            (identical(other.acknowledgeDate, acknowledgeDate) ||
                other.acknowledgeDate == acknowledgeDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, templateId, consentVersion,
      templateType, consentStatus, acknowledgeDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsentModelImplCopyWith<_$ConsentModelImpl> get copyWith =>
      __$$ConsentModelImplCopyWithImpl<_$ConsentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsentModelImplToJson(
      this,
    );
  }
}

abstract class _ConsentModel implements ConsentModel {
  const factory _ConsentModel(
      {final int? templateId,
      final String? consentVersion,
      final String? templateType,
      final ConsentStatus consentStatus,
      final String? acknowledgeDate}) = _$ConsentModelImpl;

  factory _ConsentModel.fromJson(Map<String, dynamic> json) =
      _$ConsentModelImpl.fromJson;

  @override
  int? get templateId;
  @override
  String? get consentVersion;
  @override
  String? get templateType;
  @override
  ConsentStatus get consentStatus;
  @override
  String? get acknowledgeDate;
  @override
  @JsonKey(ignore: true)
  _$$ConsentModelImplCopyWith<_$ConsentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
