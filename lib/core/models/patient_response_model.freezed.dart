// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientResponseModel _$PatientResponseModelFromJson(Map<String, dynamic> json) {
  return _PatientResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PatientResponseModel {
  String? get intent => throw _privateConstructorUsedError;
  MetaData? get metaData => throw _privateConstructorUsedError;
  ProfileModel? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientResponseModelCopyWith<PatientResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientResponseModelCopyWith<$Res> {
  factory $PatientResponseModelCopyWith(PatientResponseModel value,
          $Res Function(PatientResponseModel) then) =
      _$PatientResponseModelCopyWithImpl<$Res, PatientResponseModel>;
  @useResult
  $Res call({String? intent, MetaData? metaData, ProfileModel? profile});

  $MetaDataCopyWith<$Res>? get metaData;
  $ProfileModelCopyWith<$Res>? get profile;
}

/// @nodoc
class _$PatientResponseModelCopyWithImpl<$Res,
        $Val extends PatientResponseModel>
    implements $PatientResponseModelCopyWith<$Res> {
  _$PatientResponseModelCopyWithImpl(this._value, this._then);

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
              as ProfileModel?,
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
  $ProfileModelCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileModelCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientResponseModelImplCopyWith<$Res>
    implements $PatientResponseModelCopyWith<$Res> {
  factory _$$PatientResponseModelImplCopyWith(_$PatientResponseModelImpl value,
          $Res Function(_$PatientResponseModelImpl) then) =
      __$$PatientResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? intent, MetaData? metaData, ProfileModel? profile});

  @override
  $MetaDataCopyWith<$Res>? get metaData;
  @override
  $ProfileModelCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$PatientResponseModelImplCopyWithImpl<$Res>
    extends _$PatientResponseModelCopyWithImpl<$Res, _$PatientResponseModelImpl>
    implements _$$PatientResponseModelImplCopyWith<$Res> {
  __$$PatientResponseModelImplCopyWithImpl(_$PatientResponseModelImpl _value,
      $Res Function(_$PatientResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intent = freezed,
    Object? metaData = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$PatientResponseModelImpl(
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
              as ProfileModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientResponseModelImpl implements _PatientResponseModel {
  const _$PatientResponseModelImpl({this.intent, this.metaData, this.profile});

  factory _$PatientResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientResponseModelImplFromJson(json);

  @override
  final String? intent;
  @override
  final MetaData? metaData;
  @override
  final ProfileModel? profile;

  @override
  String toString() {
    return 'PatientResponseModel(intent: $intent, metaData: $metaData, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientResponseModelImpl &&
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
  _$$PatientResponseModelImplCopyWith<_$PatientResponseModelImpl>
      get copyWith =>
          __$$PatientResponseModelImplCopyWithImpl<_$PatientResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PatientResponseModel implements PatientResponseModel {
  const factory _PatientResponseModel(
      {final String? intent,
      final MetaData? metaData,
      final ProfileModel? profile}) = _$PatientResponseModelImpl;

  factory _PatientResponseModel.fromJson(Map<String, dynamic> json) =
      _$PatientResponseModelImpl.fromJson;

  @override
  String? get intent;
  @override
  MetaData? get metaData;
  @override
  ProfileModel? get profile;
  @override
  @JsonKey(ignore: true)
  _$$PatientResponseModelImplCopyWith<_$PatientResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$MetaDataImplCopyWith<$Res>
    implements $MetaDataCopyWith<$Res> {
  factory _$$MetaDataImplCopyWith(
          _$MetaDataImpl value, $Res Function(_$MetaDataImpl) then) =
      __$$MetaDataImplCopyWithImpl<$Res>;
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
class __$$MetaDataImplCopyWithImpl<$Res>
    extends _$MetaDataCopyWithImpl<$Res, _$MetaDataImpl>
    implements _$$MetaDataImplCopyWith<$Res> {
  __$$MetaDataImplCopyWithImpl(
      _$MetaDataImpl _value, $Res Function(_$MetaDataImpl) _then)
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
    return _then(_$MetaDataImpl(
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
class _$MetaDataImpl implements _MetaData {
  const _$MetaDataImpl(
      {this.hipId, this.counterId, this.hprId, this.latitude, this.longitude});

  factory _$MetaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaDataImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaDataImpl &&
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
  _$$MetaDataImplCopyWith<_$MetaDataImpl> get copyWith =>
      __$$MetaDataImplCopyWithImpl<_$MetaDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaDataImplToJson(
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
      final String? longitude}) = _$MetaDataImpl;

  factory _MetaData.fromJson(Map<String, dynamic> json) =
      _$MetaDataImpl.fromJson;

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
  _$$MetaDataImplCopyWith<_$MetaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  PatientModel? get patient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call({PatientModel? patient});

  $PatientModelCopyWith<$Res>? get patient;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

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
              as PatientModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientModelCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $PatientModelCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PatientModel? patient});

  @override
  $PatientModelCopyWith<$Res>? get patient;
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patient = freezed,
  }) {
    return _then(_$ProfileModelImpl(
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as PatientModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl({this.patient});

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final PatientModel? patient;

  @override
  String toString() {
    return 'ProfileModel(patient: $patient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.patient, patient) || other.patient == patient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, patient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel({final PatientModel? patient}) =
      _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  PatientModel? get patient;
  @override
  @JsonKey(ignore: true)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientModel _$PatientModelFromJson(Map<String, dynamic> json) {
  return _PatientModel.fromJson(json);
}

/// @nodoc
mixin _$PatientModel {
  int? get patientId => throw _privateConstructorUsedError;
  String? get registryRef => throw _privateConstructorUsedError;
  String? get abhaNumber => throw _privateConstructorUsedError;
  String? get abhaAddress => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  PatientAccountStatus? get accountStatus => throw _privateConstructorUsedError;
  PatientGender? get gender => throw _privateConstructorUsedError;
  String? get profilePhoto => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get dayOfBirth => throw _privateConstructorUsedError;
  String? get monthOfBirth => throw _privateConstructorUsedError;
  String? get yearOfBirth => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  int? get parentPatientId => throw _privateConstructorUsedError;
  List<AddressModel>? get address => throw _privateConstructorUsedError;
  List<RelatedPartyModel>? get relatedParty =>
      throw _privateConstructorUsedError;
  List<IdentifierModel>? get identifiers => throw _privateConstructorUsedError;
  List<MedicalRecordModel>? get medicalRecords =>
      throw _privateConstructorUsedError;
  DOBSource? get dobSource => throw _privateConstructorUsedError;
  bool? get privacyPolicyAccepted => throw _privateConstructorUsedError;
  String? get privacyPolicyTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientModelCopyWith<PatientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientModelCopyWith<$Res> {
  factory $PatientModelCopyWith(
          PatientModel value, $Res Function(PatientModel) then) =
      _$PatientModelCopyWithImpl<$Res, PatientModel>;
  @useResult
  $Res call(
      {int? patientId,
      String? registryRef,
      String? abhaNumber,
      String? abhaAddress,
      String? name,
      String? firstName,
      String? lastName,
      String? middleName,
      PatientAccountStatus? accountStatus,
      PatientGender? gender,
      String? profilePhoto,
      String? email,
      String? dayOfBirth,
      String? monthOfBirth,
      String? yearOfBirth,
      int? age,
      String? phoneNumber,
      int? parentPatientId,
      List<AddressModel>? address,
      List<RelatedPartyModel>? relatedParty,
      List<IdentifierModel>? identifiers,
      List<MedicalRecordModel>? medicalRecords,
      DOBSource? dobSource,
      bool? privacyPolicyAccepted,
      String? privacyPolicyTimestamp});
}

/// @nodoc
class _$PatientModelCopyWithImpl<$Res, $Val extends PatientModel>
    implements $PatientModelCopyWith<$Res> {
  _$PatientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? registryRef = freezed,
    Object? abhaNumber = freezed,
    Object? abhaAddress = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? accountStatus = freezed,
    Object? gender = freezed,
    Object? profilePhoto = freezed,
    Object? email = freezed,
    Object? dayOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? yearOfBirth = freezed,
    Object? age = freezed,
    Object? phoneNumber = freezed,
    Object? parentPatientId = freezed,
    Object? address = freezed,
    Object? relatedParty = freezed,
    Object? identifiers = freezed,
    Object? medicalRecords = freezed,
    Object? dobSource = freezed,
    Object? privacyPolicyAccepted = freezed,
    Object? privacyPolicyTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      registryRef: freezed == registryRef
          ? _value.registryRef
          : registryRef // ignore: cast_nullable_to_non_nullable
              as String?,
      abhaNumber: freezed == abhaNumber
          ? _value.abhaNumber
          : abhaNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      abhaAddress: freezed == abhaAddress
          ? _value.abhaAddress
          : abhaAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountStatus: freezed == accountStatus
          ? _value.accountStatus
          : accountStatus // ignore: cast_nullable_to_non_nullable
              as PatientAccountStatus?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as PatientGender?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfBirth: freezed == dayOfBirth
          ? _value.dayOfBirth
          : dayOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      monthOfBirth: freezed == monthOfBirth
          ? _value.monthOfBirth
          : monthOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      yearOfBirth: freezed == yearOfBirth
          ? _value.yearOfBirth
          : yearOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as List<AddressModel>?,
      relatedParty: freezed == relatedParty
          ? _value.relatedParty
          : relatedParty // ignore: cast_nullable_to_non_nullable
              as List<RelatedPartyModel>?,
      identifiers: freezed == identifiers
          ? _value.identifiers
          : identifiers // ignore: cast_nullable_to_non_nullable
              as List<IdentifierModel>?,
      medicalRecords: freezed == medicalRecords
          ? _value.medicalRecords
          : medicalRecords // ignore: cast_nullable_to_non_nullable
              as List<MedicalRecordModel>?,
      dobSource: freezed == dobSource
          ? _value.dobSource
          : dobSource // ignore: cast_nullable_to_non_nullable
              as DOBSource?,
      privacyPolicyAccepted: freezed == privacyPolicyAccepted
          ? _value.privacyPolicyAccepted
          : privacyPolicyAccepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      privacyPolicyTimestamp: freezed == privacyPolicyTimestamp
          ? _value.privacyPolicyTimestamp
          : privacyPolicyTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientModelImplCopyWith<$Res>
    implements $PatientModelCopyWith<$Res> {
  factory _$$PatientModelImplCopyWith(
          _$PatientModelImpl value, $Res Function(_$PatientModelImpl) then) =
      __$$PatientModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? patientId,
      String? registryRef,
      String? abhaNumber,
      String? abhaAddress,
      String? name,
      String? firstName,
      String? lastName,
      String? middleName,
      PatientAccountStatus? accountStatus,
      PatientGender? gender,
      String? profilePhoto,
      String? email,
      String? dayOfBirth,
      String? monthOfBirth,
      String? yearOfBirth,
      int? age,
      String? phoneNumber,
      int? parentPatientId,
      List<AddressModel>? address,
      List<RelatedPartyModel>? relatedParty,
      List<IdentifierModel>? identifiers,
      List<MedicalRecordModel>? medicalRecords,
      DOBSource? dobSource,
      bool? privacyPolicyAccepted,
      String? privacyPolicyTimestamp});
}

/// @nodoc
class __$$PatientModelImplCopyWithImpl<$Res>
    extends _$PatientModelCopyWithImpl<$Res, _$PatientModelImpl>
    implements _$$PatientModelImplCopyWith<$Res> {
  __$$PatientModelImplCopyWithImpl(
      _$PatientModelImpl _value, $Res Function(_$PatientModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? registryRef = freezed,
    Object? abhaNumber = freezed,
    Object? abhaAddress = freezed,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? accountStatus = freezed,
    Object? gender = freezed,
    Object? profilePhoto = freezed,
    Object? email = freezed,
    Object? dayOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? yearOfBirth = freezed,
    Object? age = freezed,
    Object? phoneNumber = freezed,
    Object? parentPatientId = freezed,
    Object? address = freezed,
    Object? relatedParty = freezed,
    Object? identifiers = freezed,
    Object? medicalRecords = freezed,
    Object? dobSource = freezed,
    Object? privacyPolicyAccepted = freezed,
    Object? privacyPolicyTimestamp = freezed,
  }) {
    return _then(_$PatientModelImpl(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      registryRef: freezed == registryRef
          ? _value.registryRef
          : registryRef // ignore: cast_nullable_to_non_nullable
              as String?,
      abhaNumber: freezed == abhaNumber
          ? _value.abhaNumber
          : abhaNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      abhaAddress: freezed == abhaAddress
          ? _value.abhaAddress
          : abhaAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountStatus: freezed == accountStatus
          ? _value.accountStatus
          : accountStatus // ignore: cast_nullable_to_non_nullable
              as PatientAccountStatus?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as PatientGender?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfBirth: freezed == dayOfBirth
          ? _value.dayOfBirth
          : dayOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      monthOfBirth: freezed == monthOfBirth
          ? _value.monthOfBirth
          : monthOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      yearOfBirth: freezed == yearOfBirth
          ? _value.yearOfBirth
          : yearOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as List<AddressModel>?,
      relatedParty: freezed == relatedParty
          ? _value._relatedParty
          : relatedParty // ignore: cast_nullable_to_non_nullable
              as List<RelatedPartyModel>?,
      identifiers: freezed == identifiers
          ? _value._identifiers
          : identifiers // ignore: cast_nullable_to_non_nullable
              as List<IdentifierModel>?,
      medicalRecords: freezed == medicalRecords
          ? _value._medicalRecords
          : medicalRecords // ignore: cast_nullable_to_non_nullable
              as List<MedicalRecordModel>?,
      dobSource: freezed == dobSource
          ? _value.dobSource
          : dobSource // ignore: cast_nullable_to_non_nullable
              as DOBSource?,
      privacyPolicyAccepted: freezed == privacyPolicyAccepted
          ? _value.privacyPolicyAccepted
          : privacyPolicyAccepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      privacyPolicyTimestamp: freezed == privacyPolicyTimestamp
          ? _value.privacyPolicyTimestamp
          : privacyPolicyTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientModelImpl implements _PatientModel {
  const _$PatientModelImpl(
      {this.patientId,
      this.registryRef,
      this.abhaNumber,
      this.abhaAddress,
      this.name,
      this.firstName,
      this.lastName,
      this.middleName,
      this.accountStatus,
      this.gender,
      this.profilePhoto,
      this.email,
      this.dayOfBirth,
      this.monthOfBirth,
      this.yearOfBirth,
      this.age,
      this.phoneNumber,
      this.parentPatientId,
      final List<AddressModel>? address,
      final List<RelatedPartyModel>? relatedParty,
      final List<IdentifierModel>? identifiers,
      final List<MedicalRecordModel>? medicalRecords,
      this.dobSource,
      this.privacyPolicyAccepted,
      this.privacyPolicyTimestamp})
      : _address = address,
        _relatedParty = relatedParty,
        _identifiers = identifiers,
        _medicalRecords = medicalRecords;

  factory _$PatientModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientModelImplFromJson(json);

  @override
  final int? patientId;
  @override
  final String? registryRef;
  @override
  final String? abhaNumber;
  @override
  final String? abhaAddress;
  @override
  final String? name;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? middleName;
  @override
  final PatientAccountStatus? accountStatus;
  @override
  final PatientGender? gender;
  @override
  final String? profilePhoto;
  @override
  final String? email;
  @override
  final String? dayOfBirth;
  @override
  final String? monthOfBirth;
  @override
  final String? yearOfBirth;
  @override
  final int? age;
  @override
  final String? phoneNumber;
  @override
  final int? parentPatientId;
  final List<AddressModel>? _address;
  @override
  List<AddressModel>? get address {
    final value = _address;
    if (value == null) return null;
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RelatedPartyModel>? _relatedParty;
  @override
  List<RelatedPartyModel>? get relatedParty {
    final value = _relatedParty;
    if (value == null) return null;
    if (_relatedParty is EqualUnmodifiableListView) return _relatedParty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<IdentifierModel>? _identifiers;
  @override
  List<IdentifierModel>? get identifiers {
    final value = _identifiers;
    if (value == null) return null;
    if (_identifiers is EqualUnmodifiableListView) return _identifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MedicalRecordModel>? _medicalRecords;
  @override
  List<MedicalRecordModel>? get medicalRecords {
    final value = _medicalRecords;
    if (value == null) return null;
    if (_medicalRecords is EqualUnmodifiableListView) return _medicalRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DOBSource? dobSource;
  @override
  final bool? privacyPolicyAccepted;
  @override
  final String? privacyPolicyTimestamp;

  @override
  String toString() {
    return 'PatientModel(patientId: $patientId, registryRef: $registryRef, abhaNumber: $abhaNumber, abhaAddress: $abhaAddress, name: $name, firstName: $firstName, lastName: $lastName, middleName: $middleName, accountStatus: $accountStatus, gender: $gender, profilePhoto: $profilePhoto, email: $email, dayOfBirth: $dayOfBirth, monthOfBirth: $monthOfBirth, yearOfBirth: $yearOfBirth, age: $age, phoneNumber: $phoneNumber, parentPatientId: $parentPatientId, address: $address, relatedParty: $relatedParty, identifiers: $identifiers, medicalRecords: $medicalRecords, dobSource: $dobSource, privacyPolicyAccepted: $privacyPolicyAccepted, privacyPolicyTimestamp: $privacyPolicyTimestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientModelImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.registryRef, registryRef) ||
                other.registryRef == registryRef) &&
            (identical(other.abhaNumber, abhaNumber) ||
                other.abhaNumber == abhaNumber) &&
            (identical(other.abhaAddress, abhaAddress) ||
                other.abhaAddress == abhaAddress) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.accountStatus, accountStatus) ||
                other.accountStatus == accountStatus) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dayOfBirth, dayOfBirth) ||
                other.dayOfBirth == dayOfBirth) &&
            (identical(other.monthOfBirth, monthOfBirth) ||
                other.monthOfBirth == monthOfBirth) &&
            (identical(other.yearOfBirth, yearOfBirth) ||
                other.yearOfBirth == yearOfBirth) &&
            (identical(other.age, age) || other.age == age) &&
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
                .equals(other._medicalRecords, _medicalRecords) &&
            (identical(other.dobSource, dobSource) ||
                other.dobSource == dobSource) &&
            (identical(other.privacyPolicyAccepted, privacyPolicyAccepted) ||
                other.privacyPolicyAccepted == privacyPolicyAccepted) &&
            (identical(other.privacyPolicyTimestamp, privacyPolicyTimestamp) ||
                other.privacyPolicyTimestamp == privacyPolicyTimestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        patientId,
        registryRef,
        abhaNumber,
        abhaAddress,
        name,
        firstName,
        lastName,
        middleName,
        accountStatus,
        gender,
        profilePhoto,
        email,
        dayOfBirth,
        monthOfBirth,
        yearOfBirth,
        age,
        phoneNumber,
        parentPatientId,
        const DeepCollectionEquality().hash(_address),
        const DeepCollectionEquality().hash(_relatedParty),
        const DeepCollectionEquality().hash(_identifiers),
        const DeepCollectionEquality().hash(_medicalRecords),
        dobSource,
        privacyPolicyAccepted,
        privacyPolicyTimestamp
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientModelImplCopyWith<_$PatientModelImpl> get copyWith =>
      __$$PatientModelImplCopyWithImpl<_$PatientModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientModelImplToJson(
      this,
    );
  }
}

abstract class _PatientModel implements PatientModel {
  const factory _PatientModel(
      {final int? patientId,
      final String? registryRef,
      final String? abhaNumber,
      final String? abhaAddress,
      final String? name,
      final String? firstName,
      final String? lastName,
      final String? middleName,
      final PatientAccountStatus? accountStatus,
      final PatientGender? gender,
      final String? profilePhoto,
      final String? email,
      final String? dayOfBirth,
      final String? monthOfBirth,
      final String? yearOfBirth,
      final int? age,
      final String? phoneNumber,
      final int? parentPatientId,
      final List<AddressModel>? address,
      final List<RelatedPartyModel>? relatedParty,
      final List<IdentifierModel>? identifiers,
      final List<MedicalRecordModel>? medicalRecords,
      final DOBSource? dobSource,
      final bool? privacyPolicyAccepted,
      final String? privacyPolicyTimestamp}) = _$PatientModelImpl;

  factory _PatientModel.fromJson(Map<String, dynamic> json) =
      _$PatientModelImpl.fromJson;

  @override
  int? get patientId;
  @override
  String? get registryRef;
  @override
  String? get abhaNumber;
  @override
  String? get abhaAddress;
  @override
  String? get name;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get middleName;
  @override
  PatientAccountStatus? get accountStatus;
  @override
  PatientGender? get gender;
  @override
  String? get profilePhoto;
  @override
  String? get email;
  @override
  String? get dayOfBirth;
  @override
  String? get monthOfBirth;
  @override
  String? get yearOfBirth;
  @override
  int? get age;
  @override
  String? get phoneNumber;
  @override
  int? get parentPatientId;
  @override
  List<AddressModel>? get address;
  @override
  List<RelatedPartyModel>? get relatedParty;
  @override
  List<IdentifierModel>? get identifiers;
  @override
  List<MedicalRecordModel>? get medicalRecords;
  @override
  DOBSource? get dobSource;
  @override
  bool? get privacyPolicyAccepted;
  @override
  String? get privacyPolicyTimestamp;
  @override
  @JsonKey(ignore: true)
  _$$PatientModelImplCopyWith<_$PatientModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  int? get id => throw _privateConstructorUsedError;
  String? get line => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get pincode => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get isPrimary => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  AddressStatus? get status => throw _privateConstructorUsedError;
  String? get ward => throw _privateConstructorUsedError;
  String? get town => throw _privateConstructorUsedError;
  String? get village => throw _privateConstructorUsedError;
  String? get subDistrict => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
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
      AddressStatus? status,
      String? ward,
      String? town,
      String? village,
      String? subDistrict});
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

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
    Object? ward = freezed,
    Object? town = freezed,
    Object? village = freezed,
    Object? subDistrict = freezed,
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
              as AddressStatus?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String?,
      town: freezed == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      subDistrict: freezed == subDistrict
          ? _value.subDistrict
          : subDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressModelImplCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$AddressModelImplCopyWith(
          _$AddressModelImpl value, $Res Function(_$AddressModelImpl) then) =
      __$$AddressModelImplCopyWithImpl<$Res>;
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
      AddressStatus? status,
      String? ward,
      String? town,
      String? village,
      String? subDistrict});
}

/// @nodoc
class __$$AddressModelImplCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$AddressModelImpl>
    implements _$$AddressModelImplCopyWith<$Res> {
  __$$AddressModelImplCopyWithImpl(
      _$AddressModelImpl _value, $Res Function(_$AddressModelImpl) _then)
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
    Object? ward = freezed,
    Object? town = freezed,
    Object? village = freezed,
    Object? subDistrict = freezed,
  }) {
    return _then(_$AddressModelImpl(
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
              as AddressStatus?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String?,
      town: freezed == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      subDistrict: freezed == subDistrict
          ? _value.subDistrict
          : subDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressModelImpl implements _AddressModel {
  const _$AddressModelImpl(
      {this.id,
      this.line,
      this.district,
      this.state,
      this.pincode,
      this.label,
      this.isPrimary,
      this.isDeleted,
      this.status,
      this.ward,
      this.town,
      this.village,
      this.subDistrict});

  factory _$AddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressModelImplFromJson(json);

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
  final AddressStatus? status;
  @override
  final String? ward;
  @override
  final String? town;
  @override
  final String? village;
  @override
  final String? subDistrict;

  @override
  String toString() {
    return 'AddressModel(id: $id, line: $line, district: $district, state: $state, pincode: $pincode, label: $label, isPrimary: $isPrimary, isDeleted: $isDeleted, status: $status, ward: $ward, town: $town, village: $village, subDistrict: $subDistrict)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressModelImpl &&
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
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ward, ward) || other.ward == ward) &&
            (identical(other.town, town) || other.town == town) &&
            (identical(other.village, village) || other.village == village) &&
            (identical(other.subDistrict, subDistrict) ||
                other.subDistrict == subDistrict));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      line,
      district,
      state,
      pincode,
      label,
      isPrimary,
      isDeleted,
      status,
      ward,
      town,
      village,
      subDistrict);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      __$$AddressModelImplCopyWithImpl<_$AddressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressModelImplToJson(
      this,
    );
  }
}

abstract class _AddressModel implements AddressModel {
  const factory _AddressModel(
      {final int? id,
      final String? line,
      final String? district,
      final String? state,
      final String? pincode,
      final String? label,
      final bool? isPrimary,
      final bool? isDeleted,
      final AddressStatus? status,
      final String? ward,
      final String? town,
      final String? village,
      final String? subDistrict}) = _$AddressModelImpl;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$AddressModelImpl.fromJson;

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
  AddressStatus? get status;
  @override
  String? get ward;
  @override
  String? get town;
  @override
  String? get village;
  @override
  String? get subDistrict;
  @override
  @JsonKey(ignore: true)
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IdentifierModel _$IdentifierModelFromJson(Map<String, dynamic> json) {
  return _IdentifierModel.fromJson(json);
}

/// @nodoc
mixin _$IdentifierModel {
  int? get id => throw _privateConstructorUsedError;
  IdentifierType? get type => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentifierModelCopyWith<IdentifierModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentifierModelCopyWith<$Res> {
  factory $IdentifierModelCopyWith(
          IdentifierModel value, $Res Function(IdentifierModel) then) =
      _$IdentifierModelCopyWithImpl<$Res, IdentifierModel>;
  @useResult
  $Res call({int? id, IdentifierType? type, String? value});
}

/// @nodoc
class _$IdentifierModelCopyWithImpl<$Res, $Val extends IdentifierModel>
    implements $IdentifierModelCopyWith<$Res> {
  _$IdentifierModelCopyWithImpl(this._value, this._then);

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
              as IdentifierType?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdentifierModelImplCopyWith<$Res>
    implements $IdentifierModelCopyWith<$Res> {
  factory _$$IdentifierModelImplCopyWith(_$IdentifierModelImpl value,
          $Res Function(_$IdentifierModelImpl) then) =
      __$$IdentifierModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, IdentifierType? type, String? value});
}

/// @nodoc
class __$$IdentifierModelImplCopyWithImpl<$Res>
    extends _$IdentifierModelCopyWithImpl<$Res, _$IdentifierModelImpl>
    implements _$$IdentifierModelImplCopyWith<$Res> {
  __$$IdentifierModelImplCopyWithImpl(
      _$IdentifierModelImpl _value, $Res Function(_$IdentifierModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_$IdentifierModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IdentifierType?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdentifierModelImpl implements _IdentifierModel {
  const _$IdentifierModelImpl({this.id, this.type, this.value});

  factory _$IdentifierModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentifierModelImplFromJson(json);

  @override
  final int? id;
  @override
  final IdentifierType? type;
  @override
  final String? value;

  @override
  String toString() {
    return 'IdentifierModel(id: $id, type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentifierModelImpl &&
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
  _$$IdentifierModelImplCopyWith<_$IdentifierModelImpl> get copyWith =>
      __$$IdentifierModelImplCopyWithImpl<_$IdentifierModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdentifierModelImplToJson(
      this,
    );
  }
}

abstract class _IdentifierModel implements IdentifierModel {
  const factory _IdentifierModel(
      {final int? id,
      final IdentifierType? type,
      final String? value}) = _$IdentifierModelImpl;

  factory _IdentifierModel.fromJson(Map<String, dynamic> json) =
      _$IdentifierModelImpl.fromJson;

  @override
  int? get id;
  @override
  IdentifierType? get type;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$IdentifierModelImplCopyWith<_$IdentifierModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicalRecordModel _$MedicalRecordModelFromJson(Map<String, dynamic> json) {
  return _MedicalRecordModel.fromJson(json);
}

/// @nodoc
mixin _$MedicalRecordModel {
  int? get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get registrationDate => throw _privateConstructorUsedError;
  String? get organisationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalRecordModelCopyWith<MedicalRecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalRecordModelCopyWith<$Res> {
  factory $MedicalRecordModelCopyWith(
          MedicalRecordModel value, $Res Function(MedicalRecordModel) then) =
      _$MedicalRecordModelCopyWithImpl<$Res, MedicalRecordModel>;
  @useResult
  $Res call(
      {int? id,
      @TimestampConverter() DateTime? registrationDate,
      String? organisationId});
}

/// @nodoc
class _$MedicalRecordModelCopyWithImpl<$Res, $Val extends MedicalRecordModel>
    implements $MedicalRecordModelCopyWith<$Res> {
  _$MedicalRecordModelCopyWithImpl(this._value, this._then);

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
abstract class _$$MedicalRecordModelImplCopyWith<$Res>
    implements $MedicalRecordModelCopyWith<$Res> {
  factory _$$MedicalRecordModelImplCopyWith(_$MedicalRecordModelImpl value,
          $Res Function(_$MedicalRecordModelImpl) then) =
      __$$MedicalRecordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @TimestampConverter() DateTime? registrationDate,
      String? organisationId});
}

/// @nodoc
class __$$MedicalRecordModelImplCopyWithImpl<$Res>
    extends _$MedicalRecordModelCopyWithImpl<$Res, _$MedicalRecordModelImpl>
    implements _$$MedicalRecordModelImplCopyWith<$Res> {
  __$$MedicalRecordModelImplCopyWithImpl(_$MedicalRecordModelImpl _value,
      $Res Function(_$MedicalRecordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? registrationDate = freezed,
    Object? organisationId = freezed,
  }) {
    return _then(_$MedicalRecordModelImpl(
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
class _$MedicalRecordModelImpl implements _MedicalRecordModel {
  const _$MedicalRecordModelImpl(
      {this.id,
      @TimestampConverter() this.registrationDate,
      this.organisationId});

  factory _$MedicalRecordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicalRecordModelImplFromJson(json);

  @override
  final int? id;
  @override
  @TimestampConverter()
  final DateTime? registrationDate;
  @override
  final String? organisationId;

  @override
  String toString() {
    return 'MedicalRecordModel(id: $id, registrationDate: $registrationDate, organisationId: $organisationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicalRecordModelImpl &&
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
  _$$MedicalRecordModelImplCopyWith<_$MedicalRecordModelImpl> get copyWith =>
      __$$MedicalRecordModelImplCopyWithImpl<_$MedicalRecordModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicalRecordModelImplToJson(
      this,
    );
  }
}

abstract class _MedicalRecordModel implements MedicalRecordModel {
  const factory _MedicalRecordModel(
      {final int? id,
      @TimestampConverter() final DateTime? registrationDate,
      final String? organisationId}) = _$MedicalRecordModelImpl;

  factory _MedicalRecordModel.fromJson(Map<String, dynamic> json) =
      _$MedicalRecordModelImpl.fromJson;

  @override
  int? get id;
  @override
  @TimestampConverter()
  DateTime? get registrationDate;
  @override
  String? get organisationId;
  @override
  @JsonKey(ignore: true)
  _$$MedicalRecordModelImplCopyWith<_$MedicalRecordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RelatedPartyModel _$RelatedPartyModelFromJson(Map<String, dynamic> json) {
  return _RelatedPartyModel.fromJson(json);
}

/// @nodoc
mixin _$RelatedPartyModel {
  int? get patientId => throw _privateConstructorUsedError;
  FamilyRelationShip? get relation => throw _privateConstructorUsedError;
  int? get parentPatientId => throw _privateConstructorUsedError;
  RelatedPartyStatus? get status => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get regRef => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedPartyModelCopyWith<RelatedPartyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedPartyModelCopyWith<$Res> {
  factory $RelatedPartyModelCopyWith(
          RelatedPartyModel value, $Res Function(RelatedPartyModel) then) =
      _$RelatedPartyModelCopyWithImpl<$Res, RelatedPartyModel>;
  @useResult
  $Res call(
      {int? patientId,
      FamilyRelationShip? relation,
      int? parentPatientId,
      RelatedPartyStatus? status,
      String? name,
      String? profilePicture,
      int? age,
      String? regRef});
}

/// @nodoc
class _$RelatedPartyModelCopyWithImpl<$Res, $Val extends RelatedPartyModel>
    implements $RelatedPartyModelCopyWith<$Res> {
  _$RelatedPartyModelCopyWithImpl(this._value, this._then);

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
    Object? status = freezed,
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? age = freezed,
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
              as FamilyRelationShip?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RelatedPartyStatus?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      regRef: freezed == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelatedPartyModelImplCopyWith<$Res>
    implements $RelatedPartyModelCopyWith<$Res> {
  factory _$$RelatedPartyModelImplCopyWith(_$RelatedPartyModelImpl value,
          $Res Function(_$RelatedPartyModelImpl) then) =
      __$$RelatedPartyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? patientId,
      FamilyRelationShip? relation,
      int? parentPatientId,
      RelatedPartyStatus? status,
      String? name,
      String? profilePicture,
      int? age,
      String? regRef});
}

/// @nodoc
class __$$RelatedPartyModelImplCopyWithImpl<$Res>
    extends _$RelatedPartyModelCopyWithImpl<$Res, _$RelatedPartyModelImpl>
    implements _$$RelatedPartyModelImplCopyWith<$Res> {
  __$$RelatedPartyModelImplCopyWithImpl(_$RelatedPartyModelImpl _value,
      $Res Function(_$RelatedPartyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? relation = freezed,
    Object? parentPatientId = freezed,
    Object? status = freezed,
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? age = freezed,
    Object? regRef = freezed,
  }) {
    return _then(_$RelatedPartyModelImpl(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as FamilyRelationShip?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RelatedPartyStatus?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
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
class _$RelatedPartyModelImpl implements _RelatedPartyModel {
  const _$RelatedPartyModelImpl(
      {this.patientId,
      this.relation,
      this.parentPatientId,
      this.status,
      this.name,
      this.profilePicture,
      this.age,
      this.regRef});

  factory _$RelatedPartyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelatedPartyModelImplFromJson(json);

  @override
  final int? patientId;
  @override
  final FamilyRelationShip? relation;
  @override
  final int? parentPatientId;
  @override
  final RelatedPartyStatus? status;
  @override
  final String? name;
  @override
  final String? profilePicture;
  @override
  final int? age;
  @override
  final String? regRef;

  @override
  String toString() {
    return 'RelatedPartyModel(patientId: $patientId, relation: $relation, parentPatientId: $parentPatientId, status: $status, name: $name, profilePicture: $profilePicture, age: $age, regRef: $regRef)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedPartyModelImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.relation, relation) ||
                other.relation == relation) &&
            (identical(other.parentPatientId, parentPatientId) ||
                other.parentPatientId == parentPatientId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.regRef, regRef) || other.regRef == regRef));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, patientId, relation,
      parentPatientId, status, name, profilePicture, age, regRef);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelatedPartyModelImplCopyWith<_$RelatedPartyModelImpl> get copyWith =>
      __$$RelatedPartyModelImplCopyWithImpl<_$RelatedPartyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedPartyModelImplToJson(
      this,
    );
  }
}

abstract class _RelatedPartyModel implements RelatedPartyModel {
  const factory _RelatedPartyModel(
      {final int? patientId,
      final FamilyRelationShip? relation,
      final int? parentPatientId,
      final RelatedPartyStatus? status,
      final String? name,
      final String? profilePicture,
      final int? age,
      final String? regRef}) = _$RelatedPartyModelImpl;

  factory _RelatedPartyModel.fromJson(Map<String, dynamic> json) =
      _$RelatedPartyModelImpl.fromJson;

  @override
  int? get patientId;
  @override
  FamilyRelationShip? get relation;
  @override
  int? get parentPatientId;
  @override
  RelatedPartyStatus? get status;
  @override
  String? get name;
  @override
  String? get profilePicture;
  @override
  int? get age;
  @override
  String? get regRef;
  @override
  @JsonKey(ignore: true)
  _$$RelatedPartyModelImplCopyWith<_$RelatedPartyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
