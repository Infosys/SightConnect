/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_equipment_observation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostEquipmentObservationDto _$PostEquipmentObservationDtoFromJson(
    Map<String, dynamic> json) {
  return _PostEquipmentObservationDto.fromJson(json);
}

/// @nodoc
mixin _$PostEquipmentObservationDto {
  int? get drId => throw _privateConstructorUsedError;
  int? get encounterId => throw _privateConstructorUsedError;
  String? get serviceProvider => throw _privateConstructorUsedError;
  List<EquipmentObservationValue>? get equipmentObservationValues =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostEquipmentObservationDtoCopyWith<PostEquipmentObservationDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEquipmentObservationDtoCopyWith<$Res> {
  factory $PostEquipmentObservationDtoCopyWith(
          PostEquipmentObservationDto value,
          $Res Function(PostEquipmentObservationDto) then) =
      _$PostEquipmentObservationDtoCopyWithImpl<$Res,
          PostEquipmentObservationDto>;
  @useResult
  $Res call(
      {int? drId,
      int? encounterId,
      String? serviceProvider,
      List<EquipmentObservationValue>? equipmentObservationValues});
}

/// @nodoc
class _$PostEquipmentObservationDtoCopyWithImpl<$Res,
        $Val extends PostEquipmentObservationDto>
    implements $PostEquipmentObservationDtoCopyWith<$Res> {
  _$PostEquipmentObservationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drId = freezed,
    Object? encounterId = freezed,
    Object? serviceProvider = freezed,
    Object? equipmentObservationValues = freezed,
  }) {
    return _then(_value.copyWith(
      drId: freezed == drId
          ? _value.drId
          : drId // ignore: cast_nullable_to_non_nullable
              as int?,
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceProvider: freezed == serviceProvider
          ? _value.serviceProvider
          : serviceProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      equipmentObservationValues: freezed == equipmentObservationValues
          ? _value.equipmentObservationValues
          : equipmentObservationValues // ignore: cast_nullable_to_non_nullable
              as List<EquipmentObservationValue>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostEquipmentObservationDtoImplCopyWith<$Res>
    implements $PostEquipmentObservationDtoCopyWith<$Res> {
  factory _$$PostEquipmentObservationDtoImplCopyWith(
          _$PostEquipmentObservationDtoImpl value,
          $Res Function(_$PostEquipmentObservationDtoImpl) then) =
      __$$PostEquipmentObservationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? drId,
      int? encounterId,
      String? serviceProvider,
      List<EquipmentObservationValue>? equipmentObservationValues});
}

/// @nodoc
class __$$PostEquipmentObservationDtoImplCopyWithImpl<$Res>
    extends _$PostEquipmentObservationDtoCopyWithImpl<$Res,
        _$PostEquipmentObservationDtoImpl>
    implements _$$PostEquipmentObservationDtoImplCopyWith<$Res> {
  __$$PostEquipmentObservationDtoImplCopyWithImpl(
      _$PostEquipmentObservationDtoImpl _value,
      $Res Function(_$PostEquipmentObservationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drId = freezed,
    Object? encounterId = freezed,
    Object? serviceProvider = freezed,
    Object? equipmentObservationValues = freezed,
  }) {
    return _then(_$PostEquipmentObservationDtoImpl(
      drId: freezed == drId
          ? _value.drId
          : drId // ignore: cast_nullable_to_non_nullable
              as int?,
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceProvider: freezed == serviceProvider
          ? _value.serviceProvider
          : serviceProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      equipmentObservationValues: freezed == equipmentObservationValues
          ? _value._equipmentObservationValues
          : equipmentObservationValues // ignore: cast_nullable_to_non_nullable
              as List<EquipmentObservationValue>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostEquipmentObservationDtoImpl
    implements _PostEquipmentObservationDto {
  const _$PostEquipmentObservationDtoImpl(
      {this.drId,
      this.encounterId,
      this.serviceProvider,
      final List<EquipmentObservationValue>? equipmentObservationValues})
      : _equipmentObservationValues = equipmentObservationValues;

  factory _$PostEquipmentObservationDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostEquipmentObservationDtoImplFromJson(json);

  @override
  final int? drId;
  @override
  final int? encounterId;
  @override
  final String? serviceProvider;
  final List<EquipmentObservationValue>? _equipmentObservationValues;
  @override
  List<EquipmentObservationValue>? get equipmentObservationValues {
    final value = _equipmentObservationValues;
    if (value == null) return null;
    if (_equipmentObservationValues is EqualUnmodifiableListView)
      return _equipmentObservationValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostEquipmentObservationDto(drId: $drId, encounterId: $encounterId, serviceProvider: $serviceProvider, equipmentObservationValues: $equipmentObservationValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostEquipmentObservationDtoImpl &&
            (identical(other.drId, drId) || other.drId == drId) &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.serviceProvider, serviceProvider) ||
                other.serviceProvider == serviceProvider) &&
            const DeepCollectionEquality().equals(
                other._equipmentObservationValues,
                _equipmentObservationValues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      drId,
      encounterId,
      serviceProvider,
      const DeepCollectionEquality().hash(_equipmentObservationValues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostEquipmentObservationDtoImplCopyWith<_$PostEquipmentObservationDtoImpl>
      get copyWith => __$$PostEquipmentObservationDtoImplCopyWithImpl<
          _$PostEquipmentObservationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostEquipmentObservationDtoImplToJson(
      this,
    );
  }
}

abstract class _PostEquipmentObservationDto
    implements PostEquipmentObservationDto {
  const factory _PostEquipmentObservationDto(
          {final int? drId,
          final int? encounterId,
          final String? serviceProvider,
          final List<EquipmentObservationValue>? equipmentObservationValues}) =
      _$PostEquipmentObservationDtoImpl;

  factory _PostEquipmentObservationDto.fromJson(Map<String, dynamic> json) =
      _$PostEquipmentObservationDtoImpl.fromJson;

  @override
  int? get drId;
  @override
  int? get encounterId;
  @override
  String? get serviceProvider;
  @override
  List<EquipmentObservationValue>? get equipmentObservationValues;
  @override
  @JsonKey(ignore: true)
  _$$PostEquipmentObservationDtoImplCopyWith<_$PostEquipmentObservationDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EquipmentObservationValue _$EquipmentObservationValueFromJson(
    Map<String, dynamic> json) {
  return _EquipmentObservationValue.fromJson(json);
}

/// @nodoc
mixin _$EquipmentObservationValue {
  int? get id => throw _privateConstructorUsedError;
  String? get identifier => throw _privateConstructorUsedError;
  ObservationCategory? get observationCategory =>
      throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  UnitType? get unitType => throw _privateConstructorUsedError;
  List<String>? get readings => throw _privateConstructorUsedError;
  ReadingType? get readingType => throw _privateConstructorUsedError;
  SpecimenType? get specimenType => throw _privateConstructorUsedError;
  Severity? get severity => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  int? get performer => throw _privateConstructorUsedError;
  String? get serviceProviderUnit => throw _privateConstructorUsedError;
  String? get additionalInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentObservationValueCopyWith<EquipmentObservationValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentObservationValueCopyWith<$Res> {
  factory $EquipmentObservationValueCopyWith(EquipmentObservationValue value,
          $Res Function(EquipmentObservationValue) then) =
      _$EquipmentObservationValueCopyWithImpl<$Res, EquipmentObservationValue>;
  @useResult
  $Res call(
      {int? id,
      String? identifier,
      ObservationCategory? observationCategory,
      String? name,
      UnitType? unitType,
      List<String>? readings,
      ReadingType? readingType,
      SpecimenType? specimenType,
      Severity? severity,
      int? score,
      int? performer,
      String? serviceProviderUnit,
      String? additionalInfo});
}

/// @nodoc
class _$EquipmentObservationValueCopyWithImpl<$Res,
        $Val extends EquipmentObservationValue>
    implements $EquipmentObservationValueCopyWith<$Res> {
  _$EquipmentObservationValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? observationCategory = freezed,
    Object? name = freezed,
    Object? unitType = freezed,
    Object? readings = freezed,
    Object? readingType = freezed,
    Object? specimenType = freezed,
    Object? severity = freezed,
    Object? score = freezed,
    Object? performer = freezed,
    Object? serviceProviderUnit = freezed,
    Object? additionalInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      observationCategory: freezed == observationCategory
          ? _value.observationCategory
          : observationCategory // ignore: cast_nullable_to_non_nullable
              as ObservationCategory?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType?,
      readings: freezed == readings
          ? _value.readings
          : readings // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      readingType: freezed == readingType
          ? _value.readingType
          : readingType // ignore: cast_nullable_to_non_nullable
              as ReadingType?,
      specimenType: freezed == specimenType
          ? _value.specimenType
          : specimenType // ignore: cast_nullable_to_non_nullable
              as SpecimenType?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceProviderUnit: freezed == serviceProviderUnit
          ? _value.serviceProviderUnit
          : serviceProviderUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EquipmentObservationValueImplCopyWith<$Res>
    implements $EquipmentObservationValueCopyWith<$Res> {
  factory _$$EquipmentObservationValueImplCopyWith(
          _$EquipmentObservationValueImpl value,
          $Res Function(_$EquipmentObservationValueImpl) then) =
      __$$EquipmentObservationValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? identifier,
      ObservationCategory? observationCategory,
      String? name,
      UnitType? unitType,
      List<String>? readings,
      ReadingType? readingType,
      SpecimenType? specimenType,
      Severity? severity,
      int? score,
      int? performer,
      String? serviceProviderUnit,
      String? additionalInfo});
}

/// @nodoc
class __$$EquipmentObservationValueImplCopyWithImpl<$Res>
    extends _$EquipmentObservationValueCopyWithImpl<$Res,
        _$EquipmentObservationValueImpl>
    implements _$$EquipmentObservationValueImplCopyWith<$Res> {
  __$$EquipmentObservationValueImplCopyWithImpl(
      _$EquipmentObservationValueImpl _value,
      $Res Function(_$EquipmentObservationValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? observationCategory = freezed,
    Object? name = freezed,
    Object? unitType = freezed,
    Object? readings = freezed,
    Object? readingType = freezed,
    Object? specimenType = freezed,
    Object? severity = freezed,
    Object? score = freezed,
    Object? performer = freezed,
    Object? serviceProviderUnit = freezed,
    Object? additionalInfo = freezed,
  }) {
    return _then(_$EquipmentObservationValueImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      observationCategory: freezed == observationCategory
          ? _value.observationCategory
          : observationCategory // ignore: cast_nullable_to_non_nullable
              as ObservationCategory?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType?,
      readings: freezed == readings
          ? _value._readings
          : readings // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      readingType: freezed == readingType
          ? _value.readingType
          : readingType // ignore: cast_nullable_to_non_nullable
              as ReadingType?,
      specimenType: freezed == specimenType
          ? _value.specimenType
          : specimenType // ignore: cast_nullable_to_non_nullable
              as SpecimenType?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as Severity?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceProviderUnit: freezed == serviceProviderUnit
          ? _value.serviceProviderUnit
          : serviceProviderUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EquipmentObservationValueImpl implements _EquipmentObservationValue {
  const _$EquipmentObservationValueImpl(
      {this.id,
      this.identifier,
      this.observationCategory,
      this.name,
      this.unitType,
      final List<String>? readings,
      this.readingType,
      this.specimenType,
      this.severity,
      this.score,
      this.performer,
      this.serviceProviderUnit,
      this.additionalInfo})
      : _readings = readings;

  factory _$EquipmentObservationValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentObservationValueImplFromJson(json);

  @override
  final int? id;
  @override
  final String? identifier;
  @override
  final ObservationCategory? observationCategory;
  @override
  final String? name;
  @override
  final UnitType? unitType;
  final List<String>? _readings;
  @override
  List<String>? get readings {
    final value = _readings;
    if (value == null) return null;
    if (_readings is EqualUnmodifiableListView) return _readings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ReadingType? readingType;
  @override
  final SpecimenType? specimenType;
  @override
  final Severity? severity;
  @override
  final int? score;
  @override
  final int? performer;
  @override
  final String? serviceProviderUnit;
  @override
  final String? additionalInfo;

  @override
  String toString() {
    return 'EquipmentObservationValue(id: $id, identifier: $identifier, observationCategory: $observationCategory, name: $name, unitType: $unitType, readings: $readings, readingType: $readingType, specimenType: $specimenType, severity: $severity, score: $score, performer: $performer, serviceProviderUnit: $serviceProviderUnit, additionalInfo: $additionalInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentObservationValueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.observationCategory, observationCategory) ||
                other.observationCategory == observationCategory) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            const DeepCollectionEquality().equals(other._readings, _readings) &&
            (identical(other.readingType, readingType) ||
                other.readingType == readingType) &&
            (identical(other.specimenType, specimenType) ||
                other.specimenType == specimenType) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.performer, performer) ||
                other.performer == performer) &&
            (identical(other.serviceProviderUnit, serviceProviderUnit) ||
                other.serviceProviderUnit == serviceProviderUnit) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      identifier,
      observationCategory,
      name,
      unitType,
      const DeepCollectionEquality().hash(_readings),
      readingType,
      specimenType,
      severity,
      score,
      performer,
      serviceProviderUnit,
      additionalInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentObservationValueImplCopyWith<_$EquipmentObservationValueImpl>
      get copyWith => __$$EquipmentObservationValueImplCopyWithImpl<
          _$EquipmentObservationValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquipmentObservationValueImplToJson(
      this,
    );
  }
}

abstract class _EquipmentObservationValue implements EquipmentObservationValue {
  const factory _EquipmentObservationValue(
      {final int? id,
      final String? identifier,
      final ObservationCategory? observationCategory,
      final String? name,
      final UnitType? unitType,
      final List<String>? readings,
      final ReadingType? readingType,
      final SpecimenType? specimenType,
      final Severity? severity,
      final int? score,
      final int? performer,
      final String? serviceProviderUnit,
      final String? additionalInfo}) = _$EquipmentObservationValueImpl;

  factory _EquipmentObservationValue.fromJson(Map<String, dynamic> json) =
      _$EquipmentObservationValueImpl.fromJson;

  @override
  int? get id;
  @override
  String? get identifier;
  @override
  ObservationCategory? get observationCategory;
  @override
  String? get name;
  @override
  UnitType? get unitType;
  @override
  List<String>? get readings;
  @override
  ReadingType? get readingType;
  @override
  SpecimenType? get specimenType;
  @override
  Severity? get severity;
  @override
  int? get score;
  @override
  int? get performer;
  @override
  String? get serviceProviderUnit;
  @override
  String? get additionalInfo;
  @override
  @JsonKey(ignore: true)
  _$$EquipmentObservationValueImplCopyWith<_$EquipmentObservationValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}
