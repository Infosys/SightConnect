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
  String? get intent => throw _privateConstructorUsedError;
  MetaData? get metaData => throw _privateConstructorUsedError;
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
  $Res call({String? intent, MetaData? metaData, Profile? profile});

  $MetaDataCopyWith<$Res>? get metaData;
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
    Object? intent = freezed,
    Object? metaData = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      intent: freezed == intent
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as String?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaData?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDataCopyWith<$Res>? get metaData {
    if (_value.metaData == null) {
      return null;
    }

    return $MetaDataCopyWith<$Res>(_value.metaData!, (value) {
      return _then(_value.copyWith(metaData: value) as $Val);
    });
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
  $Res call({String? intent, MetaData? metaData, Profile? profile});

  @override
  $MetaDataCopyWith<$Res>? get metaData;
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
    Object? intent = freezed,
    Object? metaData = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$_UserProfile(
      intent: freezed == intent
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as String?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaData?,
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
  const _$_UserProfile({this.intent, this.metaData, this.profile});

  factory _$_UserProfile.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileFromJson(json);

  @override
  final String? intent;
  @override
  final MetaData? metaData;
  @override
  final Profile? profile;

  @override
  String toString() {
    return 'UserProfile(intent: $intent, metaData: $metaData, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfile &&
            (identical(other.intent, intent) || other.intent == intent) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, intent, metaData, profile);

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
      {final String? intent,
      final MetaData? metaData,
      final Profile? profile}) = _$_UserProfile;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$_UserProfile.fromJson;

  @override
  String? get intent;
  @override
  MetaData? get metaData;
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
  $Res call({Patient? patient});

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
    Object? patient = freezed,
  }) {
    return _then(_value.copyWith(
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
  $Res call({Patient? patient});

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
    Object? patient = freezed,
  }) {
    return _then(_$_Profile(
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
  const _$_Profile({this.patient});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final Patient? patient;

  @override
  String toString() {
    return 'Profile(patient: $patient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            (identical(other.patient, patient) || other.patient == patient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, patient);

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
  const factory _Profile({final Patient? patient}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

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
  int? get abhaNumber => throw _privateConstructorUsedError;
  String? get abhaAddress => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get dayOfBirth => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get monthOfBirth => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get yearOfBirth => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  int? get parentPatientId => throw _privateConstructorUsedError;
  List<PatientAddress>? get address => throw _privateConstructorUsedError;
  List<RelatedParty>? get relatedParty => throw _privateConstructorUsedError;
  List<Identifiers>? get identifiers => throw _privateConstructorUsedError;
  List<MedicalRecords>? get medicalRecords =>
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
      {int? abhaNumber,
      String? abhaAddress,
      String? name,
      Gender? gender,
      @TimestampConverter() DateTime? dayOfBirth,
      @TimestampConverter() DateTime? monthOfBirth,
      @TimestampConverter() DateTime? yearOfBirth,
      String? phoneNumber,
      int? parentPatientId,
      List<PatientAddress>? address,
      List<RelatedParty>? relatedParty,
      List<Identifiers>? identifiers,
      List<MedicalRecords>? medicalRecords});
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
    Object? abhaNumber = freezed,
    Object? abhaAddress = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dayOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? yearOfBirth = freezed,
    Object? phoneNumber = freezed,
    Object? parentPatientId = freezed,
    Object? address = freezed,
    Object? relatedParty = freezed,
    Object? identifiers = freezed,
    Object? medicalRecords = freezed,
  }) {
    return _then(_value.copyWith(
      abhaNumber: freezed == abhaNumber
          ? _value.abhaNumber
          : abhaNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      abhaAddress: freezed == abhaAddress
          ? _value.abhaAddress
          : abhaAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      dayOfBirth: freezed == dayOfBirth
          ? _value.dayOfBirth
          : dayOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      monthOfBirth: freezed == monthOfBirth
          ? _value.monthOfBirth
          : monthOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      yearOfBirth: freezed == yearOfBirth
          ? _value.yearOfBirth
          : yearOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<PatientAddress>?,
      relatedParty: freezed == relatedParty
          ? _value.relatedParty
          : relatedParty // ignore: cast_nullable_to_non_nullable
              as List<RelatedParty>?,
      identifiers: freezed == identifiers
          ? _value.identifiers
          : identifiers // ignore: cast_nullable_to_non_nullable
              as List<Identifiers>?,
      medicalRecords: freezed == medicalRecords
          ? _value.medicalRecords
          : medicalRecords // ignore: cast_nullable_to_non_nullable
              as List<MedicalRecords>?,
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
      {int? abhaNumber,
      String? abhaAddress,
      String? name,
      Gender? gender,
      @TimestampConverter() DateTime? dayOfBirth,
      @TimestampConverter() DateTime? monthOfBirth,
      @TimestampConverter() DateTime? yearOfBirth,
      String? phoneNumber,
      int? parentPatientId,
      List<PatientAddress>? address,
      List<RelatedParty>? relatedParty,
      List<Identifiers>? identifiers,
      List<MedicalRecords>? medicalRecords});
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
    Object? abhaNumber = freezed,
    Object? abhaAddress = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dayOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? yearOfBirth = freezed,
    Object? phoneNumber = freezed,
    Object? parentPatientId = freezed,
    Object? address = freezed,
    Object? relatedParty = freezed,
    Object? identifiers = freezed,
    Object? medicalRecords = freezed,
  }) {
    return _then(_$_Patient(
      abhaNumber: freezed == abhaNumber
          ? _value.abhaNumber
          : abhaNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      abhaAddress: freezed == abhaAddress
          ? _value.abhaAddress
          : abhaAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      dayOfBirth: freezed == dayOfBirth
          ? _value.dayOfBirth
          : dayOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      monthOfBirth: freezed == monthOfBirth
          ? _value.monthOfBirth
          : monthOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      yearOfBirth: freezed == yearOfBirth
          ? _value.yearOfBirth
          : yearOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<PatientAddress>?,
      relatedParty: freezed == relatedParty
          ? _value._relatedParty
          : relatedParty // ignore: cast_nullable_to_non_nullable
              as List<RelatedParty>?,
      identifiers: freezed == identifiers
          ? _value._identifiers
          : identifiers // ignore: cast_nullable_to_non_nullable
              as List<Identifiers>?,
      medicalRecords: freezed == medicalRecords
          ? _value._medicalRecords
          : medicalRecords // ignore: cast_nullable_to_non_nullable
              as List<MedicalRecords>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Patient implements _Patient {
  const _$_Patient(
      {this.abhaNumber,
      this.abhaAddress,
      this.name,
      this.gender,
      @TimestampConverter() this.dayOfBirth,
      @TimestampConverter() this.monthOfBirth,
      @TimestampConverter() this.yearOfBirth,
      this.phoneNumber,
      this.parentPatientId,
      final List<PatientAddress>? address,
      final List<RelatedParty>? relatedParty,
      final List<Identifiers>? identifiers,
      final List<MedicalRecords>? medicalRecords})
      : _address = address,
        _relatedParty = relatedParty,
        _identifiers = identifiers,
        _medicalRecords = medicalRecords;

  factory _$_Patient.fromJson(Map<String, dynamic> json) =>
      _$$_PatientFromJson(json);

  @override
  final int? abhaNumber;
  @override
  final String? abhaAddress;
  @override
  final String? name;
  @override
  final Gender? gender;
  @override
  @TimestampConverter()
  final DateTime? dayOfBirth;
  @override
  @TimestampConverter()
  final DateTime? monthOfBirth;
  @override
  @TimestampConverter()
  final DateTime? yearOfBirth;
  @override
  final String? phoneNumber;
  @override
  final int? parentPatientId;
  final List<PatientAddress>? _address;
  @override
  List<PatientAddress>? get address {
    final value = _address;
    if (value == null) return null;
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RelatedParty>? _relatedParty;
  @override
  List<RelatedParty>? get relatedParty {
    final value = _relatedParty;
    if (value == null) return null;
    if (_relatedParty is EqualUnmodifiableListView) return _relatedParty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Identifiers>? _identifiers;
  @override
  List<Identifiers>? get identifiers {
    final value = _identifiers;
    if (value == null) return null;
    if (_identifiers is EqualUnmodifiableListView) return _identifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MedicalRecords>? _medicalRecords;
  @override
  List<MedicalRecords>? get medicalRecords {
    final value = _medicalRecords;
    if (value == null) return null;
    if (_medicalRecords is EqualUnmodifiableListView) return _medicalRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Patient(abhaNumber: $abhaNumber, abhaAddress: $abhaAddress, name: $name, gender: $gender, dayOfBirth: $dayOfBirth, monthOfBirth: $monthOfBirth, yearOfBirth: $yearOfBirth, phoneNumber: $phoneNumber, parentPatientId: $parentPatientId, address: $address, relatedParty: $relatedParty, identifiers: $identifiers, medicalRecords: $medicalRecords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Patient &&
            (identical(other.abhaNumber, abhaNumber) ||
                other.abhaNumber == abhaNumber) &&
            (identical(other.abhaAddress, abhaAddress) ||
                other.abhaAddress == abhaAddress) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dayOfBirth, dayOfBirth) ||
                other.dayOfBirth == dayOfBirth) &&
            (identical(other.monthOfBirth, monthOfBirth) ||
                other.monthOfBirth == monthOfBirth) &&
            (identical(other.yearOfBirth, yearOfBirth) ||
                other.yearOfBirth == yearOfBirth) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.parentPatientId, parentPatientId) ||
                other.parentPatientId == parentPatientId) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
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
      abhaNumber,
      abhaAddress,
      name,
      gender,
      dayOfBirth,
      monthOfBirth,
      yearOfBirth,
      phoneNumber,
      parentPatientId,
      const DeepCollectionEquality().hash(_address),
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
      {final int? abhaNumber,
      final String? abhaAddress,
      final String? name,
      final Gender? gender,
      @TimestampConverter() final DateTime? dayOfBirth,
      @TimestampConverter() final DateTime? monthOfBirth,
      @TimestampConverter() final DateTime? yearOfBirth,
      final String? phoneNumber,
      final int? parentPatientId,
      final List<PatientAddress>? address,
      final List<RelatedParty>? relatedParty,
      final List<Identifiers>? identifiers,
      final List<MedicalRecords>? medicalRecords}) = _$_Patient;

  factory _Patient.fromJson(Map<String, dynamic> json) = _$_Patient.fromJson;

  @override
  int? get abhaNumber;
  @override
  String? get abhaAddress;
  @override
  String? get name;
  @override
  Gender? get gender;
  @override
  @TimestampConverter()
  DateTime? get dayOfBirth;
  @override
  @TimestampConverter()
  DateTime? get monthOfBirth;
  @override
  @TimestampConverter()
  DateTime? get yearOfBirth;
  @override
  String? get phoneNumber;
  @override
  int? get parentPatientId;
  @override
  List<PatientAddress>? get address;
  @override
  List<RelatedParty>? get relatedParty;
  @override
  List<Identifiers>? get identifiers;
  @override
  List<MedicalRecords>? get medicalRecords;
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
  int? get id => throw _privateConstructorUsedError;
  String? get line => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get pincode => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get isPrimary => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;

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
      {int? id,
      String? line,
      String? district,
      String? state,
      String? pincode,
      String? label,
      bool? isPrimary,
      bool? isDeleted,
      Status? status});
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
    Object? id = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as Status?,
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
      {int? id,
      String? line,
      String? district,
      String? state,
      String? pincode,
      String? label,
      bool? isPrimary,
      bool? isDeleted,
      Status? status});
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
    Object? id = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as Status?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientAddress implements _PatientAddress {
  const _$_PatientAddress(
      {this.id,
      this.line,
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
  final int? id;
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
  final Status? status;

  @override
  String toString() {
    return 'PatientAddress(id: $id, line: $line, district: $district, state: $state, pincode: $pincode, label: $label, isPrimary: $isPrimary, isDeleted: $isDeleted, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientAddress &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(runtimeType, id, line, district, state,
      pincode, label, isPrimary, isDeleted, status);

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
      {final int? id,
      final String? line,
      final String? district,
      final String? state,
      final String? pincode,
      final String? label,
      final bool? isPrimary,
      final bool? isDeleted,
      final Status? status}) = _$_PatientAddress;

  factory _PatientAddress.fromJson(Map<String, dynamic> json) =
      _$_PatientAddress.fromJson;

  @override
  int? get id;
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
  Status? get status;
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
  int? get patientId => throw _privateConstructorUsedError;
  Relation? get relation => throw _privateConstructorUsedError;
  int? get parentPatientId => throw _privateConstructorUsedError;
  String? get regRef => throw _privateConstructorUsedError;

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
      {int? patientId,
      Relation? relation,
      int? parentPatientId,
      String? regRef});
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
    Object? relation = freezed,
    Object? parentPatientId = freezed,
    Object? regRef = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as Relation?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as int?,
      regRef: freezed == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
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
      {int? patientId,
      Relation? relation,
      int? parentPatientId,
      String? regRef});
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
    Object? relation = freezed,
    Object? parentPatientId = freezed,
    Object? regRef = freezed,
  }) {
    return _then(_$_RelatedParty(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as Relation?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as int?,
      regRef: freezed == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelatedParty implements _RelatedParty {
  const _$_RelatedParty(
      {this.patientId, this.relation, this.parentPatientId, this.regRef});

  factory _$_RelatedParty.fromJson(Map<String, dynamic> json) =>
      _$$_RelatedPartyFromJson(json);

  @override
  final int? patientId;
  @override
  final Relation? relation;
  @override
  final int? parentPatientId;
  @override
  final String? regRef;

  @override
  String toString() {
    return 'RelatedParty(patientId: $patientId, relation: $relation, parentPatientId: $parentPatientId, regRef: $regRef)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelatedParty &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.relation, relation) ||
                other.relation == relation) &&
            (identical(other.parentPatientId, parentPatientId) ||
                other.parentPatientId == parentPatientId) &&
            (identical(other.regRef, regRef) || other.regRef == regRef));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, patientId, relation, parentPatientId, regRef);

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
      {final int? patientId,
      final Relation? relation,
      final int? parentPatientId,
      final String? regRef}) = _$_RelatedParty;

  factory _RelatedParty.fromJson(Map<String, dynamic> json) =
      _$_RelatedParty.fromJson;

  @override
  int? get patientId;
  @override
  Relation? get relation;
  @override
  int? get parentPatientId;
  @override
  String? get regRef;
  @override
  @JsonKey(ignore: true)
  _$$_RelatedPartyCopyWith<_$_RelatedParty> get copyWith =>
      throw _privateConstructorUsedError;
}

Identifiers _$IdentifiersFromJson(Map<String, dynamic> json) {
  return _Identifiers.fromJson(json);
}

/// @nodoc
mixin _$Identifiers {
  int? get id => throw _privateConstructorUsedError;
  IdentfierType? get type => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentifiersCopyWith<Identifiers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentifiersCopyWith<$Res> {
  factory $IdentifiersCopyWith(
          Identifiers value, $Res Function(Identifiers) then) =
      _$IdentifiersCopyWithImpl<$Res, Identifiers>;
  @useResult
  $Res call({int? id, IdentfierType? type, String? value});
}

/// @nodoc
class _$IdentifiersCopyWithImpl<$Res, $Val extends Identifiers>
    implements $IdentifiersCopyWith<$Res> {
  _$IdentifiersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IdentfierType?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdentifiersCopyWith<$Res>
    implements $IdentifiersCopyWith<$Res> {
  factory _$$_IdentifiersCopyWith(
          _$_Identifiers value, $Res Function(_$_Identifiers) then) =
      __$$_IdentifiersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, IdentfierType? type, String? value});
}

/// @nodoc
class __$$_IdentifiersCopyWithImpl<$Res>
    extends _$IdentifiersCopyWithImpl<$Res, _$_Identifiers>
    implements _$$_IdentifiersCopyWith<$Res> {
  __$$_IdentifiersCopyWithImpl(
      _$_Identifiers _value, $Res Function(_$_Identifiers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Identifiers(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IdentfierType?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Identifiers implements _Identifiers {
  const _$_Identifiers({this.id, this.type, this.value});

  factory _$_Identifiers.fromJson(Map<String, dynamic> json) =>
      _$$_IdentifiersFromJson(json);

  @override
  final int? id;
  @override
  final IdentfierType? type;
  @override
  final String? value;

  @override
  String toString() {
    return 'Identifiers(id: $id, type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Identifiers &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdentifiersCopyWith<_$_Identifiers> get copyWith =>
      __$$_IdentifiersCopyWithImpl<_$_Identifiers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdentifiersToJson(
      this,
    );
  }
}

abstract class _Identifiers implements Identifiers {
  const factory _Identifiers(
      {final int? id,
      final IdentfierType? type,
      final String? value}) = _$_Identifiers;

  factory _Identifiers.fromJson(Map<String, dynamic> json) =
      _$_Identifiers.fromJson;

  @override
  int? get id;
  @override
  IdentfierType? get type;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_IdentifiersCopyWith<_$_Identifiers> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicalRecords _$MedicalRecordsFromJson(Map<String, dynamic> json) {
  return _MedicalRecords.fromJson(json);
}

/// @nodoc
mixin _$MedicalRecords {
  int? get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get registrationDate => throw _privateConstructorUsedError;
  String? get organisationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalRecordsCopyWith<MedicalRecords> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalRecordsCopyWith<$Res> {
  factory $MedicalRecordsCopyWith(
          MedicalRecords value, $Res Function(MedicalRecords) then) =
      _$MedicalRecordsCopyWithImpl<$Res, MedicalRecords>;
  @useResult
  $Res call(
      {int? id,
      @TimestampConverter() DateTime? registrationDate,
      String? organisationId});
}

/// @nodoc
class _$MedicalRecordsCopyWithImpl<$Res, $Val extends MedicalRecords>
    implements $MedicalRecordsCopyWith<$Res> {
  _$MedicalRecordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? registrationDate = freezed,
    Object? organisationId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      registrationDate: freezed == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      organisationId: freezed == organisationId
          ? _value.organisationId
          : organisationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MedicalRecordsCopyWith<$Res>
    implements $MedicalRecordsCopyWith<$Res> {
  factory _$$_MedicalRecordsCopyWith(
          _$_MedicalRecords value, $Res Function(_$_MedicalRecords) then) =
      __$$_MedicalRecordsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @TimestampConverter() DateTime? registrationDate,
      String? organisationId});
}

/// @nodoc
class __$$_MedicalRecordsCopyWithImpl<$Res>
    extends _$MedicalRecordsCopyWithImpl<$Res, _$_MedicalRecords>
    implements _$$_MedicalRecordsCopyWith<$Res> {
  __$$_MedicalRecordsCopyWithImpl(
      _$_MedicalRecords _value, $Res Function(_$_MedicalRecords) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? registrationDate = freezed,
    Object? organisationId = freezed,
  }) {
    return _then(_$_MedicalRecords(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      registrationDate: freezed == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      organisationId: freezed == organisationId
          ? _value.organisationId
          : organisationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicalRecords implements _MedicalRecords {
  const _$_MedicalRecords(
      {this.id,
      @TimestampConverter() this.registrationDate,
      this.organisationId});

  factory _$_MedicalRecords.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalRecordsFromJson(json);

  @override
  final int? id;
  @override
  @TimestampConverter()
  final DateTime? registrationDate;
  @override
  final String? organisationId;

  @override
  String toString() {
    return 'MedicalRecords(id: $id, registrationDate: $registrationDate, organisationId: $organisationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicalRecords &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.organisationId, organisationId) ||
                other.organisationId == organisationId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, registrationDate, organisationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicalRecordsCopyWith<_$_MedicalRecords> get copyWith =>
      __$$_MedicalRecordsCopyWithImpl<_$_MedicalRecords>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalRecordsToJson(
      this,
    );
  }
}

abstract class _MedicalRecords implements MedicalRecords {
  const factory _MedicalRecords(
      {final int? id,
      @TimestampConverter() final DateTime? registrationDate,
      final String? organisationId}) = _$_MedicalRecords;

  factory _MedicalRecords.fromJson(Map<String, dynamic> json) =
      _$_MedicalRecords.fromJson;

  @override
  int? get id;
  @override
  @TimestampConverter()
  DateTime? get registrationDate;
  @override
  String? get organisationId;
  @override
  @JsonKey(ignore: true)
  _$$_MedicalRecordsCopyWith<_$_MedicalRecords> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaData _$MetaDataFromJson(Map<String, dynamic> json) {
  return _MetaData.fromJson(json);
}

/// @nodoc
mixin _$MetaData {
  String? get hipId => throw _privateConstructorUsedError;
  String? get counterId => throw _privateConstructorUsedError;
  String? get hprId => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataCopyWith<MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataCopyWith<$Res> {
  factory $MetaDataCopyWith(MetaData value, $Res Function(MetaData) then) =
      _$MetaDataCopyWithImpl<$Res, MetaData>;
  @useResult
  $Res call(
      {String? hipId,
      String? counterId,
      String? hprId,
      String? latitude,
      String? longitude});
}

/// @nodoc
class _$MetaDataCopyWithImpl<$Res, $Val extends MetaData>
    implements $MetaDataCopyWith<$Res> {
  _$MetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hipId = freezed,
    Object? counterId = freezed,
    Object? hprId = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      hipId: freezed == hipId
          ? _value.hipId
          : hipId // ignore: cast_nullable_to_non_nullable
              as String?,
      counterId: freezed == counterId
          ? _value.counterId
          : counterId // ignore: cast_nullable_to_non_nullable
              as String?,
      hprId: freezed == hprId
          ? _value.hprId
          : hprId // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaDataCopyWith<$Res> implements $MetaDataCopyWith<$Res> {
  factory _$$_MetaDataCopyWith(
          _$_MetaData value, $Res Function(_$_MetaData) then) =
      __$$_MetaDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? hipId,
      String? counterId,
      String? hprId,
      String? latitude,
      String? longitude});
}

/// @nodoc
class __$$_MetaDataCopyWithImpl<$Res>
    extends _$MetaDataCopyWithImpl<$Res, _$_MetaData>
    implements _$$_MetaDataCopyWith<$Res> {
  __$$_MetaDataCopyWithImpl(
      _$_MetaData _value, $Res Function(_$_MetaData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hipId = freezed,
    Object? counterId = freezed,
    Object? hprId = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_MetaData(
      hipId: freezed == hipId
          ? _value.hipId
          : hipId // ignore: cast_nullable_to_non_nullable
              as String?,
      counterId: freezed == counterId
          ? _value.counterId
          : counterId // ignore: cast_nullable_to_non_nullable
              as String?,
      hprId: freezed == hprId
          ? _value.hprId
          : hprId // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaData implements _MetaData {
  const _$_MetaData(
      {this.hipId, this.counterId, this.hprId, this.latitude, this.longitude});

  factory _$_MetaData.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataFromJson(json);

  @override
  final String? hipId;
  @override
  final String? counterId;
  @override
  final String? hprId;
  @override
  final String? latitude;
  @override
  final String? longitude;

  @override
  String toString() {
    return 'MetaData(hipId: $hipId, counterId: $counterId, hprId: $hprId, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaData &&
            (identical(other.hipId, hipId) || other.hipId == hipId) &&
            (identical(other.counterId, counterId) ||
                other.counterId == counterId) &&
            (identical(other.hprId, hprId) || other.hprId == hprId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hipId, counterId, hprId, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaDataCopyWith<_$_MetaData> get copyWith =>
      __$$_MetaDataCopyWithImpl<_$_MetaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDataToJson(
      this,
    );
  }
}

abstract class _MetaData implements MetaData {
  const factory _MetaData(
      {final String? hipId,
      final String? counterId,
      final String? hprId,
      final String? latitude,
      final String? longitude}) = _$_MetaData;

  factory _MetaData.fromJson(Map<String, dynamic> json) = _$_MetaData.fromJson;

  @override
  String? get hipId;
  @override
  String? get counterId;
  @override
  String? get hprId;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDataCopyWith<_$_MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}
