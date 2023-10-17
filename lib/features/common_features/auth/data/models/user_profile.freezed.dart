// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String? get requestId => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;
  Map<String, dynamic>? get intent => throw _privateConstructorUsedError;
  Map<String, dynamic>? get location => throw _privateConstructorUsedError;
  Profile? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {String? requestId,
      String? timestamp,
      Map<String, dynamic>? intent,
      Map<String, dynamic>? location,
      Profile? profile});

  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? timestamp = freezed,
    Object? intent = freezed,
    Object? location = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      intent: freezed == intent
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$_UserProfileCopyWith(
          _$_UserProfile value, $Res Function(_$_UserProfile) then) =
      __$$_UserProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? requestId,
      String? timestamp,
      Map<String, dynamic>? intent,
      Map<String, dynamic>? location,
      Profile? profile});

  @override
  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$_UserProfileCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$_UserProfile>
    implements _$$_UserProfileCopyWith<$Res> {
  __$$_UserProfileCopyWithImpl(
      _$_UserProfile _value, $Res Function(_$_UserProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
    Object? timestamp = freezed,
    Object? intent = freezed,
    Object? location = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$_UserProfile(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      intent: freezed == intent
          ? _value._intent
          : intent // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      location: freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfile implements _UserProfile {
  const _$_UserProfile(
      {this.requestId,
      this.timestamp,
      final Map<String, dynamic>? intent,
      final Map<String, dynamic>? location,
      this.profile})
      : _intent = intent,
        _location = location;

  factory _$_UserProfile.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileFromJson(json);

  @override
  final String? requestId;
  @override
  final String? timestamp;
  final Map<String, dynamic>? _intent;
  @override
  Map<String, dynamic>? get intent {
    final value = _intent;
    if (value == null) return null;
    if (_intent is EqualUnmodifiableMapView) return _intent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _location;
  @override
  Map<String, dynamic>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final Profile? profile;

  @override
  String toString() {
    return 'UserProfile(requestId: $requestId, timestamp: $timestamp, intent: $intent, location: $location, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfile &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._intent, _intent) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestId,
      timestamp,
      const DeepCollectionEquality().hash(_intent),
      const DeepCollectionEquality().hash(_location),
      profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProfileCopyWith<_$_UserProfile> get copyWith =>
      __$$_UserProfileCopyWithImpl<_$_UserProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {final String? requestId,
      final String? timestamp,
      final Map<String, dynamic>? intent,
      final Map<String, dynamic>? location,
      final Profile? profile}) = _$_UserProfile;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$_UserProfile.fromJson;

  @override
  String? get requestId;
  @override
  String? get timestamp;
  @override
  Map<String, dynamic>? get intent;
  @override
  Map<String, dynamic>? get location;
  @override
  Profile? get profile;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileCopyWith<_$_UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  String? get hipCode => throw _privateConstructorUsedError;
  Patient? get patient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call({String? hipCode, Patient? patient});

  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hipCode = freezed,
    Object? patient = freezed,
  }) {
    return _then(_value.copyWith(
      hipCode: freezed == hipCode
          ? _value.hipCode
          : hipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $PatientCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? hipCode, Patient? patient});

  @override
  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$_Profile>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hipCode = freezed,
    Object? patient = freezed,
  }) {
    return _then(_$_Profile(
      hipCode: freezed == hipCode
          ? _value.hipCode
          : hipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile implements _Profile {
  const _$_Profile({this.hipCode, this.patient});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final String? hipCode;
  @override
  final Patient? patient;

  @override
  String toString() {
    return 'Profile(hipCode: $hipCode, patient: $patient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            (identical(other.hipCode, hipCode) || other.hipCode == hipCode) &&
            (identical(other.patient, patient) || other.patient == patient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hipCode, patient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  const factory _Profile({final String? hipCode, final Patient? patient}) =
      _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  String? get hipCode;
  @override
  Patient? get patient;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
mixin _$Patient {
  String? get healthId => throw _privateConstructorUsedError;
  String? get healthIdNumber => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get profilePhoto => throw _privateConstructorUsedError;
  List<PatientAddress>? get address => throw _privateConstructorUsedError;
  int? get yearOfBirth => throw _privateConstructorUsedError;
  int? get dayOfBirth => throw _privateConstructorUsedError;
  int? get monthOfBirth => throw _privateConstructorUsedError;
  String? get parentPatientId => throw _privateConstructorUsedError;
  List<RelatedParty>? get relatedParty => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get identifiers =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get medicalRecords =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res, Patient>;
  @useResult
  $Res call(
      {String? healthId,
      String? healthIdNumber,
      String? name,
      String? gender,
      String? profilePhoto,
      List<PatientAddress>? address,
      int? yearOfBirth,
      int? dayOfBirth,
      int? monthOfBirth,
      String? parentPatientId,
      List<RelatedParty>? relatedParty,
      List<Map<String, dynamic>>? identifiers,
      List<Map<String, dynamic>>? medicalRecords});
}

/// @nodoc
class _$PatientCopyWithImpl<$Res, $Val extends Patient>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? healthId = freezed,
    Object? healthIdNumber = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? profilePhoto = freezed,
    Object? address = freezed,
    Object? yearOfBirth = freezed,
    Object? dayOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? parentPatientId = freezed,
    Object? relatedParty = freezed,
    Object? identifiers = freezed,
    Object? medicalRecords = freezed,
  }) {
    return _then(_value.copyWith(
      healthId: freezed == healthId
          ? _value.healthId
          : healthId // ignore: cast_nullable_to_non_nullable
              as String?,
      healthIdNumber: freezed == healthIdNumber
          ? _value.healthIdNumber
          : healthIdNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<PatientAddress>?,
      yearOfBirth: freezed == yearOfBirth
          ? _value.yearOfBirth
          : yearOfBirth // ignore: cast_nullable_to_non_nullable
              as int?,
      dayOfBirth: freezed == dayOfBirth
          ? _value.dayOfBirth
          : dayOfBirth // ignore: cast_nullable_to_non_nullable
              as int?,
      monthOfBirth: freezed == monthOfBirth
          ? _value.monthOfBirth
          : monthOfBirth // ignore: cast_nullable_to_non_nullable
              as int?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedParty: freezed == relatedParty
          ? _value.relatedParty
          : relatedParty // ignore: cast_nullable_to_non_nullable
              as List<RelatedParty>?,
      identifiers: freezed == identifiers
          ? _value.identifiers
          : identifiers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      medicalRecords: freezed == medicalRecords
          ? _value.medicalRecords
          : medicalRecords // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$$_PatientCopyWith(
          _$_Patient value, $Res Function(_$_Patient) then) =
      __$$_PatientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? healthId,
      String? healthIdNumber,
      String? name,
      String? gender,
      String? profilePhoto,
      List<PatientAddress>? address,
      int? yearOfBirth,
      int? dayOfBirth,
      int? monthOfBirth,
      String? parentPatientId,
      List<RelatedParty>? relatedParty,
      List<Map<String, dynamic>>? identifiers,
      List<Map<String, dynamic>>? medicalRecords});
}

/// @nodoc
class __$$_PatientCopyWithImpl<$Res>
    extends _$PatientCopyWithImpl<$Res, _$_Patient>
    implements _$$_PatientCopyWith<$Res> {
  __$$_PatientCopyWithImpl(_$_Patient _value, $Res Function(_$_Patient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? healthId = freezed,
    Object? healthIdNumber = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? profilePhoto = freezed,
    Object? address = freezed,
    Object? yearOfBirth = freezed,
    Object? dayOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? parentPatientId = freezed,
    Object? relatedParty = freezed,
    Object? identifiers = freezed,
    Object? medicalRecords = freezed,
  }) {
    return _then(_$_Patient(
      healthId: freezed == healthId
          ? _value.healthId
          : healthId // ignore: cast_nullable_to_non_nullable
              as String?,
      healthIdNumber: freezed == healthIdNumber
          ? _value.healthIdNumber
          : healthIdNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<PatientAddress>?,
      yearOfBirth: freezed == yearOfBirth
          ? _value.yearOfBirth
          : yearOfBirth // ignore: cast_nullable_to_non_nullable
              as int?,
      dayOfBirth: freezed == dayOfBirth
          ? _value.dayOfBirth
          : dayOfBirth // ignore: cast_nullable_to_non_nullable
              as int?,
      monthOfBirth: freezed == monthOfBirth
          ? _value.monthOfBirth
          : monthOfBirth // ignore: cast_nullable_to_non_nullable
              as int?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedParty: freezed == relatedParty
          ? _value._relatedParty
          : relatedParty // ignore: cast_nullable_to_non_nullable
              as List<RelatedParty>?,
      identifiers: freezed == identifiers
          ? _value._identifiers
          : identifiers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      medicalRecords: freezed == medicalRecords
          ? _value._medicalRecords
          : medicalRecords // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Patient implements _Patient {
  const _$_Patient(
      {this.healthId,
      this.healthIdNumber,
      this.name,
      this.gender,
      this.profilePhoto,
      final List<PatientAddress>? address,
      this.yearOfBirth,
      this.dayOfBirth,
      this.monthOfBirth,
      this.parentPatientId,
      final List<RelatedParty>? relatedParty,
      final List<Map<String, dynamic>>? identifiers,
      final List<Map<String, dynamic>>? medicalRecords})
      : _address = address,
        _relatedParty = relatedParty,
        _identifiers = identifiers,
        _medicalRecords = medicalRecords;

  factory _$_Patient.fromJson(Map<String, dynamic> json) =>
      _$$_PatientFromJson(json);

  @override
  final String? healthId;
  @override
  final String? healthIdNumber;
  @override
  final String? name;
  @override
  final String? gender;
  @override
  final String? profilePhoto;
  final List<PatientAddress>? _address;
  @override
  List<PatientAddress>? get address {
    final value = _address;
    if (value == null) return null;
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? yearOfBirth;
  @override
  final int? dayOfBirth;
  @override
  final int? monthOfBirth;
  @override
  final String? parentPatientId;
  final List<RelatedParty>? _relatedParty;
  @override
  List<RelatedParty>? get relatedParty {
    final value = _relatedParty;
    if (value == null) return null;
    if (_relatedParty is EqualUnmodifiableListView) return _relatedParty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<String, dynamic>>? _identifiers;
  @override
  List<Map<String, dynamic>>? get identifiers {
    final value = _identifiers;
    if (value == null) return null;
    if (_identifiers is EqualUnmodifiableListView) return _identifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<String, dynamic>>? _medicalRecords;
  @override
  List<Map<String, dynamic>>? get medicalRecords {
    final value = _medicalRecords;
    if (value == null) return null;
    if (_medicalRecords is EqualUnmodifiableListView) return _medicalRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Patient(healthId: $healthId, healthIdNumber: $healthIdNumber, name: $name, gender: $gender, profilePhoto: $profilePhoto, address: $address, yearOfBirth: $yearOfBirth, dayOfBirth: $dayOfBirth, monthOfBirth: $monthOfBirth, parentPatientId: $parentPatientId, relatedParty: $relatedParty, identifiers: $identifiers, medicalRecords: $medicalRecords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Patient &&
            (identical(other.healthId, healthId) ||
                other.healthId == healthId) &&
            (identical(other.healthIdNumber, healthIdNumber) ||
                other.healthIdNumber == healthIdNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.yearOfBirth, yearOfBirth) ||
                other.yearOfBirth == yearOfBirth) &&
            (identical(other.dayOfBirth, dayOfBirth) ||
                other.dayOfBirth == dayOfBirth) &&
            (identical(other.monthOfBirth, monthOfBirth) ||
                other.monthOfBirth == monthOfBirth) &&
            (identical(other.parentPatientId, parentPatientId) ||
                other.parentPatientId == parentPatientId) &&
            const DeepCollectionEquality()
                .equals(other._relatedParty, _relatedParty) &&
            const DeepCollectionEquality()
                .equals(other._identifiers, _identifiers) &&
            const DeepCollectionEquality()
                .equals(other._medicalRecords, _medicalRecords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      healthId,
      healthIdNumber,
      name,
      gender,
      profilePhoto,
      const DeepCollectionEquality().hash(_address),
      yearOfBirth,
      dayOfBirth,
      monthOfBirth,
      parentPatientId,
      const DeepCollectionEquality().hash(_relatedParty),
      const DeepCollectionEquality().hash(_identifiers),
      const DeepCollectionEquality().hash(_medicalRecords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientCopyWith<_$_Patient> get copyWith =>
      __$$_PatientCopyWithImpl<_$_Patient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientToJson(
      this,
    );
  }
}

abstract class _Patient implements Patient {
  const factory _Patient(
      {final String? healthId,
      final String? healthIdNumber,
      final String? name,
      final String? gender,
      final String? profilePhoto,
      final List<PatientAddress>? address,
      final int? yearOfBirth,
      final int? dayOfBirth,
      final int? monthOfBirth,
      final String? parentPatientId,
      final List<RelatedParty>? relatedParty,
      final List<Map<String, dynamic>>? identifiers,
      final List<Map<String, dynamic>>? medicalRecords}) = _$_Patient;

  factory _Patient.fromJson(Map<String, dynamic> json) = _$_Patient.fromJson;

  @override
  String? get healthId;
  @override
  String? get healthIdNumber;
  @override
  String? get name;
  @override
  String? get gender;
  @override
  String? get profilePhoto;
  @override
  List<PatientAddress>? get address;
  @override
  int? get yearOfBirth;
  @override
  int? get dayOfBirth;
  @override
  int? get monthOfBirth;
  @override
  String? get parentPatientId;
  @override
  List<RelatedParty>? get relatedParty;
  @override
  List<Map<String, dynamic>>? get identifiers;
  @override
  List<Map<String, dynamic>>? get medicalRecords;
  @override
  @JsonKey(ignore: true)
  _$$_PatientCopyWith<_$_Patient> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientAddress _$PatientAddressFromJson(Map<String, dynamic> json) {
  return _PatientAddress.fromJson(json);
}

/// @nodoc
mixin _$PatientAddress {
  String? get line => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get pincode => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get isPrimary => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientAddressCopyWith<PatientAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientAddressCopyWith<$Res> {
  factory $PatientAddressCopyWith(
          PatientAddress value, $Res Function(PatientAddress) then) =
      _$PatientAddressCopyWithImpl<$Res, PatientAddress>;
  @useResult
  $Res call(
      {String? line,
      String? district,
      String? state,
      String? pincode,
      String? label,
      bool? isPrimary,
      bool? isDeleted,
      String? status});
}

/// @nodoc
class _$PatientAddressCopyWithImpl<$Res, $Val extends PatientAddress>
    implements $PatientAddressCopyWith<$Res> {
  _$PatientAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
    Object? label = freezed,
    Object? isPrimary = freezed,
    Object? isDeleted = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientAddressCopyWith<$Res>
    implements $PatientAddressCopyWith<$Res> {
  factory _$$_PatientAddressCopyWith(
          _$_PatientAddress value, $Res Function(_$_PatientAddress) then) =
      __$$_PatientAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? line,
      String? district,
      String? state,
      String? pincode,
      String? label,
      bool? isPrimary,
      bool? isDeleted,
      String? status});
}

/// @nodoc
class __$$_PatientAddressCopyWithImpl<$Res>
    extends _$PatientAddressCopyWithImpl<$Res, _$_PatientAddress>
    implements _$$_PatientAddressCopyWith<$Res> {
  __$$_PatientAddressCopyWithImpl(
      _$_PatientAddress _value, $Res Function(_$_PatientAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
    Object? label = freezed,
    Object? isPrimary = freezed,
    Object? isDeleted = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_PatientAddress(
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientAddress implements _PatientAddress {
  const _$_PatientAddress(
      {this.line,
      this.district,
      this.state,
      this.pincode,
      this.label,
      this.isPrimary,
      this.isDeleted,
      this.status});

  factory _$_PatientAddress.fromJson(Map<String, dynamic> json) =>
      _$$_PatientAddressFromJson(json);

  @override
  final String? line;
  @override
  final String? district;
  @override
  final String? state;
  @override
  final String? pincode;
  @override
  final String? label;
  @override
  final bool? isPrimary;
  @override
  final bool? isDeleted;
  @override
  final String? status;

  @override
  String toString() {
    return 'PatientAddress(line: $line, district: $district, state: $state, pincode: $pincode, label: $label, isPrimary: $isPrimary, isDeleted: $isDeleted, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientAddress &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, line, district, state, pincode,
      label, isPrimary, isDeleted, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientAddressCopyWith<_$_PatientAddress> get copyWith =>
      __$$_PatientAddressCopyWithImpl<_$_PatientAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientAddressToJson(
      this,
    );
  }
}

abstract class _PatientAddress implements PatientAddress {
  const factory _PatientAddress(
      {final String? line,
      final String? district,
      final String? state,
      final String? pincode,
      final String? label,
      final bool? isPrimary,
      final bool? isDeleted,
      final String? status}) = _$_PatientAddress;

  factory _PatientAddress.fromJson(Map<String, dynamic> json) =
      _$_PatientAddress.fromJson;

  @override
  String? get line;
  @override
  String? get district;
  @override
  String? get state;
  @override
  String? get pincode;
  @override
  String? get label;
  @override
  bool? get isPrimary;
  @override
  bool? get isDeleted;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_PatientAddressCopyWith<_$_PatientAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

RelatedParty _$RelatedPartyFromJson(Map<String, dynamic> json) {
  return _RelatedParty.fromJson(json);
}

/// @nodoc
mixin _$RelatedParty {
  String? get patientId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get profilePhoto => throw _privateConstructorUsedError;
  String? get relationship => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedPartyCopyWith<RelatedParty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedPartyCopyWith<$Res> {
  factory $RelatedPartyCopyWith(
          RelatedParty value, $Res Function(RelatedParty) then) =
      _$RelatedPartyCopyWithImpl<$Res, RelatedParty>;
  @useResult
  $Res call(
      {String? patientId,
      String? name,
      String? profilePhoto,
      String? relationship,
      String? age});
}

/// @nodoc
class _$RelatedPartyCopyWithImpl<$Res, $Val extends RelatedParty>
    implements $RelatedPartyCopyWith<$Res> {
  _$RelatedPartyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? name = freezed,
    Object? profilePhoto = freezed,
    Object? relationship = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelatedPartyCopyWith<$Res>
    implements $RelatedPartyCopyWith<$Res> {
  factory _$$_RelatedPartyCopyWith(
          _$_RelatedParty value, $Res Function(_$_RelatedParty) then) =
      __$$_RelatedPartyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? patientId,
      String? name,
      String? profilePhoto,
      String? relationship,
      String? age});
}

/// @nodoc
class __$$_RelatedPartyCopyWithImpl<$Res>
    extends _$RelatedPartyCopyWithImpl<$Res, _$_RelatedParty>
    implements _$$_RelatedPartyCopyWith<$Res> {
  __$$_RelatedPartyCopyWithImpl(
      _$_RelatedParty _value, $Res Function(_$_RelatedParty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? name = freezed,
    Object? profilePhoto = freezed,
    Object? relationship = freezed,
    Object? age = freezed,
  }) {
    return _then(_$_RelatedParty(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelatedParty implements _RelatedParty {
  const _$_RelatedParty(
      {this.patientId,
      this.name,
      this.profilePhoto,
      this.relationship,
      this.age});

  factory _$_RelatedParty.fromJson(Map<String, dynamic> json) =>
      _$$_RelatedPartyFromJson(json);

  @override
  final String? patientId;
  @override
  final String? name;
  @override
  final String? profilePhoto;
  @override
  final String? relationship;
  @override
  final String? age;

  @override
  String toString() {
    return 'RelatedParty(patientId: $patientId, name: $name, profilePhoto: $profilePhoto, relationship: $relationship, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelatedParty &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, patientId, name, profilePhoto, relationship, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelatedPartyCopyWith<_$_RelatedParty> get copyWith =>
      __$$_RelatedPartyCopyWithImpl<_$_RelatedParty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelatedPartyToJson(
      this,
    );
  }
}

abstract class _RelatedParty implements RelatedParty {
  const factory _RelatedParty(
      {final String? patientId,
      final String? name,
      final String? profilePhoto,
      final String? relationship,
      final String? age}) = _$_RelatedParty;

  factory _RelatedParty.fromJson(Map<String, dynamic> json) =
      _$_RelatedParty.fromJson;

  @override
  String? get patientId;
  @override
  String? get name;
  @override
  String? get profilePhoto;
  @override
  String? get relationship;
  @override
  String? get age;
  @override
  @JsonKey(ignore: true)
  _$$_RelatedPartyCopyWith<_$_RelatedParty> get copyWith =>
      throw _privateConstructorUsedError;
}
