// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) {
  return _DeviceModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceModel {
  int? get id => throw _privateConstructorUsedError;
  String? get identifier => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get definition => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  TestCategory? get testCategory => throw _privateConstructorUsedError;
  int? get priority => throw _privateConstructorUsedError;
  AvailabilityStatus? get availabilityStatus =>
      throw _privateConstructorUsedError;
  String? get manufacturer => throw _privateConstructorUsedError;
  DateTime? get manufactureDate => throw _privateConstructorUsedError;
  DateTime? get expirationDate => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  String? get modelNumber => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  DeviceObservation? get deviceObservation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceModelCopyWith<DeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceModelCopyWith<$Res> {
  factory $DeviceModelCopyWith(
          DeviceModel value, $Res Function(DeviceModel) then) =
      _$DeviceModelCopyWithImpl<$Res, DeviceModel>;
  @useResult
  $Res call(
      {int? id,
      String? identifier,
      String? displayName,
      String? definition,
      Status? status,
      TestCategory? testCategory,
      int? priority,
      AvailabilityStatus? availabilityStatus,
      String? manufacturer,
      DateTime? manufactureDate,
      DateTime? expirationDate,
      String? serialNumber,
      String? modelNumber,
      String? version,
      String? note,
      bool? isDeleted,
      DeviceObservation? deviceObservation});

  $DeviceObservationCopyWith<$Res>? get deviceObservation;
}

/// @nodoc
class _$DeviceModelCopyWithImpl<$Res, $Val extends DeviceModel>
    implements $DeviceModelCopyWith<$Res> {
  _$DeviceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? displayName = freezed,
    Object? definition = freezed,
    Object? status = freezed,
    Object? testCategory = freezed,
    Object? priority = freezed,
    Object? availabilityStatus = freezed,
    Object? manufacturer = freezed,
    Object? manufactureDate = freezed,
    Object? expirationDate = freezed,
    Object? serialNumber = freezed,
    Object? modelNumber = freezed,
    Object? version = freezed,
    Object? note = freezed,
    Object? isDeleted = freezed,
    Object? deviceObservation = freezed,
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
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      testCategory: freezed == testCategory
          ? _value.testCategory
          : testCategory // ignore: cast_nullable_to_non_nullable
              as TestCategory?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      availabilityStatus: freezed == availabilityStatus
          ? _value.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as AvailabilityStatus?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      manufactureDate: freezed == manufactureDate
          ? _value.manufactureDate
          : manufactureDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      modelNumber: freezed == modelNumber
          ? _value.modelNumber
          : modelNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      deviceObservation: freezed == deviceObservation
          ? _value.deviceObservation
          : deviceObservation // ignore: cast_nullable_to_non_nullable
              as DeviceObservation?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceObservationCopyWith<$Res>? get deviceObservation {
    if (_value.deviceObservation == null) {
      return null;
    }

    return $DeviceObservationCopyWith<$Res>(_value.deviceObservation!, (value) {
      return _then(_value.copyWith(deviceObservation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeviceModelImplCopyWith<$Res>
    implements $DeviceModelCopyWith<$Res> {
  factory _$$DeviceModelImplCopyWith(
          _$DeviceModelImpl value, $Res Function(_$DeviceModelImpl) then) =
      __$$DeviceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? identifier,
      String? displayName,
      String? definition,
      Status? status,
      TestCategory? testCategory,
      int? priority,
      AvailabilityStatus? availabilityStatus,
      String? manufacturer,
      DateTime? manufactureDate,
      DateTime? expirationDate,
      String? serialNumber,
      String? modelNumber,
      String? version,
      String? note,
      bool? isDeleted,
      DeviceObservation? deviceObservation});

  @override
  $DeviceObservationCopyWith<$Res>? get deviceObservation;
}

/// @nodoc
class __$$DeviceModelImplCopyWithImpl<$Res>
    extends _$DeviceModelCopyWithImpl<$Res, _$DeviceModelImpl>
    implements _$$DeviceModelImplCopyWith<$Res> {
  __$$DeviceModelImplCopyWithImpl(
      _$DeviceModelImpl _value, $Res Function(_$DeviceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? displayName = freezed,
    Object? definition = freezed,
    Object? status = freezed,
    Object? testCategory = freezed,
    Object? priority = freezed,
    Object? availabilityStatus = freezed,
    Object? manufacturer = freezed,
    Object? manufactureDate = freezed,
    Object? expirationDate = freezed,
    Object? serialNumber = freezed,
    Object? modelNumber = freezed,
    Object? version = freezed,
    Object? note = freezed,
    Object? isDeleted = freezed,
    Object? deviceObservation = freezed,
  }) {
    return _then(_$DeviceModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      testCategory: freezed == testCategory
          ? _value.testCategory
          : testCategory // ignore: cast_nullable_to_non_nullable
              as TestCategory?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      availabilityStatus: freezed == availabilityStatus
          ? _value.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as AvailabilityStatus?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      manufactureDate: freezed == manufactureDate
          ? _value.manufactureDate
          : manufactureDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      modelNumber: freezed == modelNumber
          ? _value.modelNumber
          : modelNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      deviceObservation: freezed == deviceObservation
          ? _value.deviceObservation
          : deviceObservation // ignore: cast_nullable_to_non_nullable
              as DeviceObservation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceModelImpl implements _DeviceModel {
  const _$DeviceModelImpl(
      {this.id,
      this.identifier,
      this.displayName,
      this.definition,
      this.status,
      this.testCategory,
      this.priority,
      this.availabilityStatus,
      this.manufacturer,
      this.manufactureDate,
      this.expirationDate,
      this.serialNumber,
      this.modelNumber,
      this.version,
      this.note,
      this.isDeleted,
      this.deviceObservation});

  factory _$DeviceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? identifier;
  @override
  final String? displayName;
  @override
  final String? definition;
  @override
  final Status? status;
  @override
  final TestCategory? testCategory;
  @override
  final int? priority;
  @override
  final AvailabilityStatus? availabilityStatus;
  @override
  final String? manufacturer;
  @override
  final DateTime? manufactureDate;
  @override
  final DateTime? expirationDate;
  @override
  final String? serialNumber;
  @override
  final String? modelNumber;
  @override
  final String? version;
  @override
  final String? note;
  @override
  final bool? isDeleted;
  @override
  final DeviceObservation? deviceObservation;

  @override
  String toString() {
    return 'DeviceModel(id: $id, identifier: $identifier, displayName: $displayName, definition: $definition, status: $status, testCategory: $testCategory, priority: $priority, availabilityStatus: $availabilityStatus, manufacturer: $manufacturer, manufactureDate: $manufactureDate, expirationDate: $expirationDate, serialNumber: $serialNumber, modelNumber: $modelNumber, version: $version, note: $note, isDeleted: $isDeleted, deviceObservation: $deviceObservation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.testCategory, testCategory) ||
                other.testCategory == testCategory) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.availabilityStatus, availabilityStatus) ||
                other.availabilityStatus == availabilityStatus) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.manufactureDate, manufactureDate) ||
                other.manufactureDate == manufactureDate) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.modelNumber, modelNumber) ||
                other.modelNumber == modelNumber) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.deviceObservation, deviceObservation) ||
                other.deviceObservation == deviceObservation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      identifier,
      displayName,
      definition,
      status,
      testCategory,
      priority,
      availabilityStatus,
      manufacturer,
      manufactureDate,
      expirationDate,
      serialNumber,
      modelNumber,
      version,
      note,
      isDeleted,
      deviceObservation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceModelImplCopyWith<_$DeviceModelImpl> get copyWith =>
      __$$DeviceModelImplCopyWithImpl<_$DeviceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceModelImplToJson(
      this,
    );
  }
}

abstract class _DeviceModel implements DeviceModel {
  const factory _DeviceModel(
      {final int? id,
      final String? identifier,
      final String? displayName,
      final String? definition,
      final Status? status,
      final TestCategory? testCategory,
      final int? priority,
      final AvailabilityStatus? availabilityStatus,
      final String? manufacturer,
      final DateTime? manufactureDate,
      final DateTime? expirationDate,
      final String? serialNumber,
      final String? modelNumber,
      final String? version,
      final String? note,
      final bool? isDeleted,
      final DeviceObservation? deviceObservation}) = _$DeviceModelImpl;

  factory _DeviceModel.fromJson(Map<String, dynamic> json) =
      _$DeviceModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get identifier;
  @override
  String? get displayName;
  @override
  String? get definition;
  @override
  Status? get status;
  @override
  TestCategory? get testCategory;
  @override
  int? get priority;
  @override
  AvailabilityStatus? get availabilityStatus;
  @override
  String? get manufacturer;
  @override
  DateTime? get manufactureDate;
  @override
  DateTime? get expirationDate;
  @override
  String? get serialNumber;
  @override
  String? get modelNumber;
  @override
  String? get version;
  @override
  String? get note;
  @override
  bool? get isDeleted;
  @override
  DeviceObservation? get deviceObservation;
  @override
  @JsonKey(ignore: true)
  _$$DeviceModelImplCopyWith<_$DeviceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceObservation _$DeviceObservationFromJson(Map<String, dynamic> json) {
  return _DeviceObservation.fromJson(json);
}

/// @nodoc
mixin _$DeviceObservation {
  int? get id => throw _privateConstructorUsedError;
  UnitType? get unitType => throw _privateConstructorUsedError;
  InputType? get inputType => throw _privateConstructorUsedError;
  String? get rangeMin => throw _privateConstructorUsedError;
  String? get rangeMax => throw _privateConstructorUsedError;
  String? get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceObservationCopyWith<DeviceObservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceObservationCopyWith<$Res> {
  factory $DeviceObservationCopyWith(
          DeviceObservation value, $Res Function(DeviceObservation) then) =
      _$DeviceObservationCopyWithImpl<$Res, DeviceObservation>;
  @useResult
  $Res call(
      {int? id,
      UnitType? unitType,
      InputType? inputType,
      String? rangeMin,
      String? rangeMax,
      String? values});
}

/// @nodoc
class _$DeviceObservationCopyWithImpl<$Res, $Val extends DeviceObservation>
    implements $DeviceObservationCopyWith<$Res> {
  _$DeviceObservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? unitType = freezed,
    Object? inputType = freezed,
    Object? rangeMin = freezed,
    Object? rangeMax = freezed,
    Object? values = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType?,
      inputType: freezed == inputType
          ? _value.inputType
          : inputType // ignore: cast_nullable_to_non_nullable
              as InputType?,
      rangeMin: freezed == rangeMin
          ? _value.rangeMin
          : rangeMin // ignore: cast_nullable_to_non_nullable
              as String?,
      rangeMax: freezed == rangeMax
          ? _value.rangeMax
          : rangeMax // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceObservationImplCopyWith<$Res>
    implements $DeviceObservationCopyWith<$Res> {
  factory _$$DeviceObservationImplCopyWith(_$DeviceObservationImpl value,
          $Res Function(_$DeviceObservationImpl) then) =
      __$$DeviceObservationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      UnitType? unitType,
      InputType? inputType,
      String? rangeMin,
      String? rangeMax,
      String? values});
}

/// @nodoc
class __$$DeviceObservationImplCopyWithImpl<$Res>
    extends _$DeviceObservationCopyWithImpl<$Res, _$DeviceObservationImpl>
    implements _$$DeviceObservationImplCopyWith<$Res> {
  __$$DeviceObservationImplCopyWithImpl(_$DeviceObservationImpl _value,
      $Res Function(_$DeviceObservationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? unitType = freezed,
    Object? inputType = freezed,
    Object? rangeMin = freezed,
    Object? rangeMax = freezed,
    Object? values = freezed,
  }) {
    return _then(_$DeviceObservationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType?,
      inputType: freezed == inputType
          ? _value.inputType
          : inputType // ignore: cast_nullable_to_non_nullable
              as InputType?,
      rangeMin: freezed == rangeMin
          ? _value.rangeMin
          : rangeMin // ignore: cast_nullable_to_non_nullable
              as String?,
      rangeMax: freezed == rangeMax
          ? _value.rangeMax
          : rangeMax // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceObservationImpl implements _DeviceObservation {
  const _$DeviceObservationImpl(
      {this.id,
      this.unitType,
      this.inputType,
      this.rangeMin,
      this.rangeMax,
      this.values});

  factory _$DeviceObservationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceObservationImplFromJson(json);

  @override
  final int? id;
  @override
  final UnitType? unitType;
  @override
  final InputType? inputType;
  @override
  final String? rangeMin;
  @override
  final String? rangeMax;
  @override
  final String? values;

  @override
  String toString() {
    return 'DeviceObservation(id: $id, unitType: $unitType, inputType: $inputType, rangeMin: $rangeMin, rangeMax: $rangeMax, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceObservationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.inputType, inputType) ||
                other.inputType == inputType) &&
            (identical(other.rangeMin, rangeMin) ||
                other.rangeMin == rangeMin) &&
            (identical(other.rangeMax, rangeMax) ||
                other.rangeMax == rangeMax) &&
            (identical(other.values, values) || other.values == values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, unitType, inputType, rangeMin, rangeMax, values);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceObservationImplCopyWith<_$DeviceObservationImpl> get copyWith =>
      __$$DeviceObservationImplCopyWithImpl<_$DeviceObservationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceObservationImplToJson(
      this,
    );
  }
}

abstract class _DeviceObservation implements DeviceObservation {
  const factory _DeviceObservation(
      {final int? id,
      final UnitType? unitType,
      final InputType? inputType,
      final String? rangeMin,
      final String? rangeMax,
      final String? values}) = _$DeviceObservationImpl;

  factory _DeviceObservation.fromJson(Map<String, dynamic> json) =
      _$DeviceObservationImpl.fromJson;

  @override
  int? get id;
  @override
  UnitType? get unitType;
  @override
  InputType? get inputType;
  @override
  String? get rangeMin;
  @override
  String? get rangeMax;
  @override
  String? get values;
  @override
  @JsonKey(ignore: true)
  _$$DeviceObservationImplCopyWith<_$DeviceObservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
