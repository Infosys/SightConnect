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

DeviceDTO _$DeviceDTOFromJson(Map<String, dynamic> json) {
  return _DeviceDTO.fromJson(json);
}

/// @nodoc
mixin _$DeviceDTO {
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
  String? get manufactureDate => throw _privateConstructorUsedError;
  String? get expirationDate => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  String? get modelNumber => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDTOCopyWith<DeviceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDTOCopyWith<$Res> {
  factory $DeviceDTOCopyWith(DeviceDTO value, $Res Function(DeviceDTO) then) =
      _$DeviceDTOCopyWithImpl<$Res, DeviceDTO>;
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
      String? manufactureDate,
      String? expirationDate,
      String? serialNumber,
      String? modelNumber,
      String? version,
      String? note,
      bool? isDeleted});
}

/// @nodoc
class _$DeviceDTOCopyWithImpl<$Res, $Val extends DeviceDTO>
    implements $DeviceDTOCopyWith<$Res> {
  _$DeviceDTOCopyWithImpl(this._value, this._then);

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
              as String?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceDTOImplCopyWith<$Res>
    implements $DeviceDTOCopyWith<$Res> {
  factory _$$DeviceDTOImplCopyWith(
          _$DeviceDTOImpl value, $Res Function(_$DeviceDTOImpl) then) =
      __$$DeviceDTOImplCopyWithImpl<$Res>;
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
      String? manufactureDate,
      String? expirationDate,
      String? serialNumber,
      String? modelNumber,
      String? version,
      String? note,
      bool? isDeleted});
}

/// @nodoc
class __$$DeviceDTOImplCopyWithImpl<$Res>
    extends _$DeviceDTOCopyWithImpl<$Res, _$DeviceDTOImpl>
    implements _$$DeviceDTOImplCopyWith<$Res> {
  __$$DeviceDTOImplCopyWithImpl(
      _$DeviceDTOImpl _value, $Res Function(_$DeviceDTOImpl) _then)
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
  }) {
    return _then(_$DeviceDTOImpl(
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
              as String?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceDTOImpl implements _DeviceDTO {
  _$DeviceDTOImpl(
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
      this.isDeleted});

  factory _$DeviceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceDTOImplFromJson(json);

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
  final String? manufactureDate;
  @override
  final String? expirationDate;
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
  String toString() {
    return 'DeviceDTO(id: $id, identifier: $identifier, displayName: $displayName, definition: $definition, status: $status, testCategory: $testCategory, priority: $priority, availabilityStatus: $availabilityStatus, manufacturer: $manufacturer, manufactureDate: $manufactureDate, expirationDate: $expirationDate, serialNumber: $serialNumber, modelNumber: $modelNumber, version: $version, note: $note, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDTOImpl &&
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
                other.isDeleted == isDeleted));
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
      isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDTOImplCopyWith<_$DeviceDTOImpl> get copyWith =>
      __$$DeviceDTOImplCopyWithImpl<_$DeviceDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceDTOImplToJson(
      this,
    );
  }
}

abstract class _DeviceDTO implements DeviceDTO {
  factory _DeviceDTO(
      {final int? id,
      final String? identifier,
      final String? displayName,
      final String? definition,
      final Status? status,
      final TestCategory? testCategory,
      final int? priority,
      final AvailabilityStatus? availabilityStatus,
      final String? manufacturer,
      final String? manufactureDate,
      final String? expirationDate,
      final String? serialNumber,
      final String? modelNumber,
      final String? version,
      final String? note,
      final bool? isDeleted}) = _$DeviceDTOImpl;

  factory _DeviceDTO.fromJson(Map<String, dynamic> json) =
      _$DeviceDTOImpl.fromJson;

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
  String? get manufactureDate;
  @override
  String? get expirationDate;
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
  @JsonKey(ignore: true)
  _$$DeviceDTOImplCopyWith<_$DeviceDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
