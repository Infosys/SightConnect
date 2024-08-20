// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encounter_brief_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EncounterBriefModel _$EncounterBriefModelFromJson(Map<String, dynamic> json) {
  return _EncounterBriefModel.fromJson(json);
}

/// @nodoc
mixin _$EncounterBriefModel {
  int? get encounterId => throw _privateConstructorUsedError;
  String? get timelineName => throw _privateConstructorUsedError;
  String? get timelineVersion => throw _privateConstructorUsedError;
  String? get encounterStatus => throw _privateConstructorUsedError;
  DonorBrief? get donorBrief => throw _privateConstructorUsedError;
  DateTime? get intimateDate => throw _privateConstructorUsedError;
  int? get performerId => throw _privateConstructorUsedError;
  DateTime? get deathDate => throw _privateConstructorUsedError;
  BodyLocation? get bodyLocation => throw _privateConstructorUsedError;
  List<String>? get organExtracted => throw _privateConstructorUsedError;
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncounterBriefModelCopyWith<EncounterBriefModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncounterBriefModelCopyWith<$Res> {
  factory $EncounterBriefModelCopyWith(
          EncounterBriefModel value, $Res Function(EncounterBriefModel) then) =
      _$EncounterBriefModelCopyWithImpl<$Res, EncounterBriefModel>;
  @useResult
  $Res call(
      {int? encounterId,
      String? timelineName,
      String? timelineVersion,
      String? encounterStatus,
      DonorBrief? donorBrief,
      DateTime? intimateDate,
      int? performerId,
      DateTime? deathDate,
      BodyLocation? bodyLocation,
      List<String>? organExtracted,
      DateTime? lastModifiedDate});

  $DonorBriefCopyWith<$Res>? get donorBrief;
  $BodyLocationCopyWith<$Res>? get bodyLocation;
}

/// @nodoc
class _$EncounterBriefModelCopyWithImpl<$Res, $Val extends EncounterBriefModel>
    implements $EncounterBriefModelCopyWith<$Res> {
  _$EncounterBriefModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? timelineName = freezed,
    Object? timelineVersion = freezed,
    Object? encounterStatus = freezed,
    Object? donorBrief = freezed,
    Object? intimateDate = freezed,
    Object? performerId = freezed,
    Object? deathDate = freezed,
    Object? bodyLocation = freezed,
    Object? organExtracted = freezed,
    Object? lastModifiedDate = freezed,
  }) {
    return _then(_value.copyWith(
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      timelineName: freezed == timelineName
          ? _value.timelineName
          : timelineName // ignore: cast_nullable_to_non_nullable
              as String?,
      timelineVersion: freezed == timelineVersion
          ? _value.timelineVersion
          : timelineVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      encounterStatus: freezed == encounterStatus
          ? _value.encounterStatus
          : encounterStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      donorBrief: freezed == donorBrief
          ? _value.donorBrief
          : donorBrief // ignore: cast_nullable_to_non_nullable
              as DonorBrief?,
      intimateDate: freezed == intimateDate
          ? _value.intimateDate
          : intimateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      performerId: freezed == performerId
          ? _value.performerId
          : performerId // ignore: cast_nullable_to_non_nullable
              as int?,
      deathDate: freezed == deathDate
          ? _value.deathDate
          : deathDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bodyLocation: freezed == bodyLocation
          ? _value.bodyLocation
          : bodyLocation // ignore: cast_nullable_to_non_nullable
              as BodyLocation?,
      organExtracted: freezed == organExtracted
          ? _value.organExtracted
          : organExtracted // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DonorBriefCopyWith<$Res>? get donorBrief {
    if (_value.donorBrief == null) {
      return null;
    }

    return $DonorBriefCopyWith<$Res>(_value.donorBrief!, (value) {
      return _then(_value.copyWith(donorBrief: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BodyLocationCopyWith<$Res>? get bodyLocation {
    if (_value.bodyLocation == null) {
      return null;
    }

    return $BodyLocationCopyWith<$Res>(_value.bodyLocation!, (value) {
      return _then(_value.copyWith(bodyLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EncounterBriefModelImplCopyWith<$Res>
    implements $EncounterBriefModelCopyWith<$Res> {
  factory _$$EncounterBriefModelImplCopyWith(_$EncounterBriefModelImpl value,
          $Res Function(_$EncounterBriefModelImpl) then) =
      __$$EncounterBriefModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? encounterId,
      String? timelineName,
      String? timelineVersion,
      String? encounterStatus,
      DonorBrief? donorBrief,
      DateTime? intimateDate,
      int? performerId,
      DateTime? deathDate,
      BodyLocation? bodyLocation,
      List<String>? organExtracted,
      DateTime? lastModifiedDate});

  @override
  $DonorBriefCopyWith<$Res>? get donorBrief;
  @override
  $BodyLocationCopyWith<$Res>? get bodyLocation;
}

/// @nodoc
class __$$EncounterBriefModelImplCopyWithImpl<$Res>
    extends _$EncounterBriefModelCopyWithImpl<$Res, _$EncounterBriefModelImpl>
    implements _$$EncounterBriefModelImplCopyWith<$Res> {
  __$$EncounterBriefModelImplCopyWithImpl(_$EncounterBriefModelImpl _value,
      $Res Function(_$EncounterBriefModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? timelineName = freezed,
    Object? timelineVersion = freezed,
    Object? encounterStatus = freezed,
    Object? donorBrief = freezed,
    Object? intimateDate = freezed,
    Object? performerId = freezed,
    Object? deathDate = freezed,
    Object? bodyLocation = freezed,
    Object? organExtracted = freezed,
    Object? lastModifiedDate = freezed,
  }) {
    return _then(_$EncounterBriefModelImpl(
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      timelineName: freezed == timelineName
          ? _value.timelineName
          : timelineName // ignore: cast_nullable_to_non_nullable
              as String?,
      timelineVersion: freezed == timelineVersion
          ? _value.timelineVersion
          : timelineVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      encounterStatus: freezed == encounterStatus
          ? _value.encounterStatus
          : encounterStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      donorBrief: freezed == donorBrief
          ? _value.donorBrief
          : donorBrief // ignore: cast_nullable_to_non_nullable
              as DonorBrief?,
      intimateDate: freezed == intimateDate
          ? _value.intimateDate
          : intimateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      performerId: freezed == performerId
          ? _value.performerId
          : performerId // ignore: cast_nullable_to_non_nullable
              as int?,
      deathDate: freezed == deathDate
          ? _value.deathDate
          : deathDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bodyLocation: freezed == bodyLocation
          ? _value.bodyLocation
          : bodyLocation // ignore: cast_nullable_to_non_nullable
              as BodyLocation?,
      organExtracted: freezed == organExtracted
          ? _value._organExtracted
          : organExtracted // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncounterBriefModelImpl implements _EncounterBriefModel {
  const _$EncounterBriefModelImpl(
      {this.encounterId,
      this.timelineName,
      this.timelineVersion,
      this.encounterStatus,
      this.donorBrief,
      this.intimateDate,
      this.performerId,
      this.deathDate,
      this.bodyLocation,
      final List<String>? organExtracted,
      this.lastModifiedDate})
      : _organExtracted = organExtracted;

  factory _$EncounterBriefModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncounterBriefModelImplFromJson(json);

  @override
  final int? encounterId;
  @override
  final String? timelineName;
  @override
  final String? timelineVersion;
  @override
  final String? encounterStatus;
  @override
  final DonorBrief? donorBrief;
  @override
  final DateTime? intimateDate;
  @override
  final int? performerId;
  @override
  final DateTime? deathDate;
  @override
  final BodyLocation? bodyLocation;
  final List<String>? _organExtracted;
  @override
  List<String>? get organExtracted {
    final value = _organExtracted;
    if (value == null) return null;
    if (_organExtracted is EqualUnmodifiableListView) return _organExtracted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? lastModifiedDate;

  @override
  String toString() {
    return 'EncounterBriefModel(encounterId: $encounterId, timelineName: $timelineName, timelineVersion: $timelineVersion, encounterStatus: $encounterStatus, donorBrief: $donorBrief, intimateDate: $intimateDate, performerId: $performerId, deathDate: $deathDate, bodyLocation: $bodyLocation, organExtracted: $organExtracted, lastModifiedDate: $lastModifiedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncounterBriefModelImpl &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.timelineName, timelineName) ||
                other.timelineName == timelineName) &&
            (identical(other.timelineVersion, timelineVersion) ||
                other.timelineVersion == timelineVersion) &&
            (identical(other.encounterStatus, encounterStatus) ||
                other.encounterStatus == encounterStatus) &&
            (identical(other.donorBrief, donorBrief) ||
                other.donorBrief == donorBrief) &&
            (identical(other.intimateDate, intimateDate) ||
                other.intimateDate == intimateDate) &&
            (identical(other.performerId, performerId) ||
                other.performerId == performerId) &&
            (identical(other.deathDate, deathDate) ||
                other.deathDate == deathDate) &&
            (identical(other.bodyLocation, bodyLocation) ||
                other.bodyLocation == bodyLocation) &&
            const DeepCollectionEquality()
                .equals(other._organExtracted, _organExtracted) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      encounterId,
      timelineName,
      timelineVersion,
      encounterStatus,
      donorBrief,
      intimateDate,
      performerId,
      deathDate,
      bodyLocation,
      const DeepCollectionEquality().hash(_organExtracted),
      lastModifiedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EncounterBriefModelImplCopyWith<_$EncounterBriefModelImpl> get copyWith =>
      __$$EncounterBriefModelImplCopyWithImpl<_$EncounterBriefModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncounterBriefModelImplToJson(
      this,
    );
  }
}

abstract class _EncounterBriefModel implements EncounterBriefModel {
  const factory _EncounterBriefModel(
      {final int? encounterId,
      final String? timelineName,
      final String? timelineVersion,
      final String? encounterStatus,
      final DonorBrief? donorBrief,
      final DateTime? intimateDate,
      final int? performerId,
      final DateTime? deathDate,
      final BodyLocation? bodyLocation,
      final List<String>? organExtracted,
      final DateTime? lastModifiedDate}) = _$EncounterBriefModelImpl;

  factory _EncounterBriefModel.fromJson(Map<String, dynamic> json) =
      _$EncounterBriefModelImpl.fromJson;

  @override
  int? get encounterId;
  @override
  String? get timelineName;
  @override
  String? get timelineVersion;
  @override
  String? get encounterStatus;
  @override
  DonorBrief? get donorBrief;
  @override
  DateTime? get intimateDate;
  @override
  int? get performerId;
  @override
  DateTime? get deathDate;
  @override
  BodyLocation? get bodyLocation;
  @override
  List<String>? get organExtracted;
  @override
  DateTime? get lastModifiedDate;
  @override
  @JsonKey(ignore: true)
  _$$EncounterBriefModelImplCopyWith<_$EncounterBriefModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BodyLocation _$BodyLocationFromJson(Map<String, dynamic> json) {
  return _BodyLocation.fromJson(json);
}

/// @nodoc
mixin _$BodyLocation {
  String? get addressLine1 => throw _privateConstructorUsedError;
  String? get addressLine2 => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get landmark => throw _privateConstructorUsedError;
  String? get village => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get direction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyLocationCopyWith<BodyLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyLocationCopyWith<$Res> {
  factory $BodyLocationCopyWith(
          BodyLocation value, $Res Function(BodyLocation) then) =
      _$BodyLocationCopyWithImpl<$Res, BodyLocation>;
  @useResult
  $Res call(
      {String? addressLine1,
      String? addressLine2,
      String? street,
      String? city,
      String? state,
      String? zipCode,
      String? country,
      String? landmark,
      String? village,
      String? district,
      String? latitude,
      String? longitude,
      String? direction});
}

/// @nodoc
class _$BodyLocationCopyWithImpl<$Res, $Val extends BodyLocation>
    implements $BodyLocationCopyWith<$Res> {
  _$BodyLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? country = freezed,
    Object? landmark = freezed,
    Object? village = freezed,
    Object? district = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? direction = freezed,
  }) {
    return _then(_value.copyWith(
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyLocationImplCopyWith<$Res>
    implements $BodyLocationCopyWith<$Res> {
  factory _$$BodyLocationImplCopyWith(
          _$BodyLocationImpl value, $Res Function(_$BodyLocationImpl) then) =
      __$$BodyLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? addressLine1,
      String? addressLine2,
      String? street,
      String? city,
      String? state,
      String? zipCode,
      String? country,
      String? landmark,
      String? village,
      String? district,
      String? latitude,
      String? longitude,
      String? direction});
}

/// @nodoc
class __$$BodyLocationImplCopyWithImpl<$Res>
    extends _$BodyLocationCopyWithImpl<$Res, _$BodyLocationImpl>
    implements _$$BodyLocationImplCopyWith<$Res> {
  __$$BodyLocationImplCopyWithImpl(
      _$BodyLocationImpl _value, $Res Function(_$BodyLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? country = freezed,
    Object? landmark = freezed,
    Object? village = freezed,
    Object? district = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? direction = freezed,
  }) {
    return _then(_$BodyLocationImpl(
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyLocationImpl implements _BodyLocation {
  const _$BodyLocationImpl(
      {this.addressLine1,
      this.addressLine2,
      this.street,
      this.city,
      this.state,
      this.zipCode,
      this.country,
      this.landmark,
      this.village,
      this.district,
      this.latitude,
      this.longitude,
      this.direction});

  factory _$BodyLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyLocationImplFromJson(json);

  @override
  final String? addressLine1;
  @override
  final String? addressLine2;
  @override
  final String? street;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? zipCode;
  @override
  final String? country;
  @override
  final String? landmark;
  @override
  final String? village;
  @override
  final String? district;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? direction;

  @override
  String toString() {
    return 'BodyLocation(addressLine1: $addressLine1, addressLine2: $addressLine2, street: $street, city: $city, state: $state, zipCode: $zipCode, country: $country, landmark: $landmark, village: $village, district: $district, latitude: $latitude, longitude: $longitude, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyLocationImpl &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.village, village) || other.village == village) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      addressLine1,
      addressLine2,
      street,
      city,
      state,
      zipCode,
      country,
      landmark,
      village,
      district,
      latitude,
      longitude,
      direction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyLocationImplCopyWith<_$BodyLocationImpl> get copyWith =>
      __$$BodyLocationImplCopyWithImpl<_$BodyLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyLocationImplToJson(
      this,
    );
  }
}

abstract class _BodyLocation implements BodyLocation {
  const factory _BodyLocation(
      {final String? addressLine1,
      final String? addressLine2,
      final String? street,
      final String? city,
      final String? state,
      final String? zipCode,
      final String? country,
      final String? landmark,
      final String? village,
      final String? district,
      final String? latitude,
      final String? longitude,
      final String? direction}) = _$BodyLocationImpl;

  factory _BodyLocation.fromJson(Map<String, dynamic> json) =
      _$BodyLocationImpl.fromJson;

  @override
  String? get addressLine1;
  @override
  String? get addressLine2;
  @override
  String? get street;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get zipCode;
  @override
  String? get country;
  @override
  String? get landmark;
  @override
  String? get village;
  @override
  String? get district;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  String? get direction;
  @override
  @JsonKey(ignore: true)
  _$$BodyLocationImplCopyWith<_$BodyLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DonorBrief _$DonorBriefFromJson(Map<String, dynamic> json) {
  return _DonorBrief.fromJson(json);
}

/// @nodoc
mixin _$DonorBrief {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get contact => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonorBriefCopyWith<DonorBrief> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonorBriefCopyWith<$Res> {
  factory $DonorBriefCopyWith(
          DonorBrief value, $Res Function(DonorBrief) then) =
      _$DonorBriefCopyWithImpl<$Res, DonorBrief>;
  @useResult
  $Res call({int? id, String? name, String? contact});
}

/// @nodoc
class _$DonorBriefCopyWithImpl<$Res, $Val extends DonorBrief>
    implements $DonorBriefCopyWith<$Res> {
  _$DonorBriefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? contact = freezed,
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
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonorBriefImplCopyWith<$Res>
    implements $DonorBriefCopyWith<$Res> {
  factory _$$DonorBriefImplCopyWith(
          _$DonorBriefImpl value, $Res Function(_$DonorBriefImpl) then) =
      __$$DonorBriefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? contact});
}

/// @nodoc
class __$$DonorBriefImplCopyWithImpl<$Res>
    extends _$DonorBriefCopyWithImpl<$Res, _$DonorBriefImpl>
    implements _$$DonorBriefImplCopyWith<$Res> {
  __$$DonorBriefImplCopyWithImpl(
      _$DonorBriefImpl _value, $Res Function(_$DonorBriefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? contact = freezed,
  }) {
    return _then(_$DonorBriefImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonorBriefImpl implements _DonorBrief {
  const _$DonorBriefImpl({this.id, this.name, this.contact});

  factory _$DonorBriefImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonorBriefImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? contact;

  @override
  String toString() {
    return 'DonorBrief(id: $id, name: $name, contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonorBriefImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonorBriefImplCopyWith<_$DonorBriefImpl> get copyWith =>
      __$$DonorBriefImplCopyWithImpl<_$DonorBriefImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonorBriefImplToJson(
      this,
    );
  }
}

abstract class _DonorBrief implements DonorBrief {
  const factory _DonorBrief(
      {final int? id,
      final String? name,
      final String? contact}) = _$DonorBriefImpl;

  factory _DonorBrief.fromJson(Map<String, dynamic> json) =
      _$DonorBriefImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get contact;
  @override
  @JsonKey(ignore: true)
  _$$DonorBriefImplCopyWith<_$DonorBriefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
