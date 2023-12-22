// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientResponseModel _$PatientResponseModelFromJson(Map<String, dynamic> json) {
  return _PatientResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PatientResponseModel {
  String? get intent => throw _privateConstructorUsedError;
  MetaDataModel? get metaData => throw _privateConstructorUsedError;
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
  $Res call({String? intent, MetaDataModel? metaData, ProfileModel? profile});

  $MetaDataModelCopyWith<$Res>? get metaData;
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
              as MetaDataModel?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDataModelCopyWith<$Res>? get metaData {
    if (_value.metaData == null) {
      return null;
    }

    return $MetaDataModelCopyWith<$Res>(_value.metaData!, (value) {
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
abstract class _$$_PatientResponseModelCopyWith<$Res>
    implements $PatientResponseModelCopyWith<$Res> {
  factory _$$_PatientResponseModelCopyWith(_$_PatientResponseModel value,
          $Res Function(_$_PatientResponseModel) then) =
      __$$_PatientResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? intent, MetaDataModel? metaData, ProfileModel? profile});

  @override
  $MetaDataModelCopyWith<$Res>? get metaData;
  @override
  $ProfileModelCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$_PatientResponseModelCopyWithImpl<$Res>
    extends _$PatientResponseModelCopyWithImpl<$Res, _$_PatientResponseModel>
    implements _$$_PatientResponseModelCopyWith<$Res> {
  __$$_PatientResponseModelCopyWithImpl(_$_PatientResponseModel _value,
      $Res Function(_$_PatientResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intent = freezed,
    Object? metaData = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$_PatientResponseModel(
      intent: freezed == intent
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as String?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataModel?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientResponseModel implements _PatientResponseModel {
  const _$_PatientResponseModel({this.intent, this.metaData, this.profile});

  factory _$_PatientResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PatientResponseModelFromJson(json);

  @override
  final String? intent;
  @override
  final MetaDataModel? metaData;
  @override
  final ProfileModel? profile;

  @override
  String toString() {
    return 'PatientResponseModel(intent: $intent, metaData: $metaData, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientResponseModel &&
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
  _$$_PatientResponseModelCopyWith<_$_PatientResponseModel> get copyWith =>
      __$$_PatientResponseModelCopyWithImpl<_$_PatientResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientResponseModelToJson(
      this,
    );
  }
}

abstract class _PatientResponseModel implements PatientResponseModel {
  const factory _PatientResponseModel(
      {final String? intent,
      final MetaDataModel? metaData,
      final ProfileModel? profile}) = _$_PatientResponseModel;

  factory _PatientResponseModel.fromJson(Map<String, dynamic> json) =
      _$_PatientResponseModel.fromJson;

  @override
  String? get intent;
  @override
  MetaDataModel? get metaData;
  @override
  ProfileModel? get profile;
  @override
  @JsonKey(ignore: true)
  _$$_PatientResponseModelCopyWith<_$_PatientResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  ExtendedPatientModel? get patient => throw _privateConstructorUsedError;

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
  $Res call({ExtendedPatientModel? patient});

  $ExtendedPatientModelCopyWith<$Res>? get patient;
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
              as ExtendedPatientModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExtendedPatientModelCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $ExtendedPatientModelCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileModelCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$_ProfileModelCopyWith(
          _$_ProfileModel value, $Res Function(_$_ProfileModel) then) =
      __$$_ProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExtendedPatientModel? patient});

  @override
  $ExtendedPatientModelCopyWith<$Res>? get patient;
}

/// @nodoc
class __$$_ProfileModelCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$_ProfileModel>
    implements _$$_ProfileModelCopyWith<$Res> {
  __$$_ProfileModelCopyWithImpl(
      _$_ProfileModel _value, $Res Function(_$_ProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patient = freezed,
  }) {
    return _then(_$_ProfileModel(
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as ExtendedPatientModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileModel implements _ProfileModel {
  const _$_ProfileModel({this.patient});

  factory _$_ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileModelFromJson(json);

  @override
  final ExtendedPatientModel? patient;

  @override
  String toString() {
    return 'ProfileModel(patient: $patient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileModel &&
            (identical(other.patient, patient) || other.patient == patient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, patient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      __$$_ProfileModelCopyWithImpl<_$_ProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileModelToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel({final ExtendedPatientModel? patient}) =
      _$_ProfileModel;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileModel.fromJson;

  @override
  ExtendedPatientModel? get patient;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RelatedPartyModel _$RelatedPartyModelFromJson(Map<String, dynamic> json) {
  return _RelatedPartyModel.fromJson(json);
}

/// @nodoc
mixin _$RelatedPartyModel {
  int? get patientId => throw _privateConstructorUsedError;
  Relationship? get relation => throw _privateConstructorUsedError;
  int? get parentPatientId => throw _privateConstructorUsedError;
  String? get regRef => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;

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
      Relationship? relation,
      int? parentPatientId,
      String? regRef,
      String? name,
      String? profilePicture,
      int? age});
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
    Object? regRef = freezed,
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as Relationship?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as int?,
      regRef: freezed == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelatedPartyModelCopyWith<$Res>
    implements $RelatedPartyModelCopyWith<$Res> {
  factory _$$_RelatedPartyModelCopyWith(_$_RelatedPartyModel value,
          $Res Function(_$_RelatedPartyModel) then) =
      __$$_RelatedPartyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? patientId,
      Relationship? relation,
      int? parentPatientId,
      String? regRef,
      String? name,
      String? profilePicture,
      int? age});
}

/// @nodoc
class __$$_RelatedPartyModelCopyWithImpl<$Res>
    extends _$RelatedPartyModelCopyWithImpl<$Res, _$_RelatedPartyModel>
    implements _$$_RelatedPartyModelCopyWith<$Res> {
  __$$_RelatedPartyModelCopyWithImpl(
      _$_RelatedPartyModel _value, $Res Function(_$_RelatedPartyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? relation = freezed,
    Object? parentPatientId = freezed,
    Object? regRef = freezed,
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? age = freezed,
  }) {
    return _then(_$_RelatedPartyModel(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as Relationship?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as int?,
      regRef: freezed == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelatedPartyModel extends _RelatedPartyModel {
  const _$_RelatedPartyModel(
      {this.patientId,
      this.relation,
      this.parentPatientId,
      this.regRef,
      this.name,
      this.profilePicture,
      this.age})
      : super._();

  factory _$_RelatedPartyModel.fromJson(Map<String, dynamic> json) =>
      _$$_RelatedPartyModelFromJson(json);

  @override
  final int? patientId;
  @override
  final Relationship? relation;
  @override
  final int? parentPatientId;
  @override
  final String? regRef;
  @override
  final String? name;
  @override
  final String? profilePicture;
  @override
  final int? age;

  @override
  String toString() {
    return 'RelatedPartyModel(patientId: $patientId, relation: $relation, parentPatientId: $parentPatientId, regRef: $regRef, name: $name, profilePicture: $profilePicture, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelatedPartyModel &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.relation, relation) ||
                other.relation == relation) &&
            (identical(other.parentPatientId, parentPatientId) ||
                other.parentPatientId == parentPatientId) &&
            (identical(other.regRef, regRef) || other.regRef == regRef) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, patientId, relation,
      parentPatientId, regRef, name, profilePicture, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelatedPartyModelCopyWith<_$_RelatedPartyModel> get copyWith =>
      __$$_RelatedPartyModelCopyWithImpl<_$_RelatedPartyModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelatedPartyModelToJson(
      this,
    );
  }
}

abstract class _RelatedPartyModel extends RelatedPartyModel {
  const factory _RelatedPartyModel(
      {final int? patientId,
      final Relationship? relation,
      final int? parentPatientId,
      final String? regRef,
      final String? name,
      final String? profilePicture,
      final int? age}) = _$_RelatedPartyModel;
  const _RelatedPartyModel._() : super._();

  factory _RelatedPartyModel.fromJson(Map<String, dynamic> json) =
      _$_RelatedPartyModel.fromJson;

  @override
  int? get patientId;
  @override
  Relationship? get relation;
  @override
  int? get parentPatientId;
  @override
  String? get regRef;
  @override
  String? get name;
  @override
  String? get profilePicture;
  @override
  int? get age;
  @override
  @JsonKey(ignore: true)
  _$$_RelatedPartyModelCopyWith<_$_RelatedPartyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientModel _$PatientModelFromJson(Map<String, dynamic> json) {
  return _PatientModel.fromJson(json);
}

/// @nodoc
mixin _$PatientModel {
  int? get id => throw _privateConstructorUsedError;
  String? get regRef => throw _privateConstructorUsedError;
  String? get counterId => throw _privateConstructorUsedError;
  String? get hprID => throw _privateConstructorUsedError;
  String? get hipCode => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  String? get abhaId => throw _privateConstructorUsedError;
  String? get abhaAddress => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get profilePhoto => throw _privateConstructorUsedError;
  String? get yearOfBirth => throw _privateConstructorUsedError;
  String? get monthOfBirth => throw _privateConstructorUsedError;
  String? get dayOfBirth => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get parentPatientId => throw _privateConstructorUsedError;
  Relationship? get relationship => throw _privateConstructorUsedError;
  List<AddressModel>? get address => throw _privateConstructorUsedError;

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
      {int? id,
      String? regRef,
      String? counterId,
      String? hprID,
      String? hipCode,
      LocationModel? location,
      String? abhaId,
      String? abhaAddress,
      String? firstName,
      String? middleName,
      String? lastName,
      Gender? gender,
      String? mobile,
      String? email,
      String? profilePhoto,
      String? yearOfBirth,
      String? monthOfBirth,
      String? dayOfBirth,
      int? age,
      String? parentPatientId,
      Relationship? relationship,
      List<AddressModel>? address});

  $LocationModelCopyWith<$Res>? get location;
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
    Object? id = freezed,
    Object? regRef = freezed,
    Object? counterId = freezed,
    Object? hprID = freezed,
    Object? hipCode = freezed,
    Object? location = freezed,
    Object? abhaId = freezed,
    Object? abhaAddress = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? mobile = freezed,
    Object? email = freezed,
    Object? profilePhoto = freezed,
    Object? yearOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? dayOfBirth = freezed,
    Object? age = freezed,
    Object? parentPatientId = freezed,
    Object? relationship = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      regRef: freezed == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String?,
      counterId: freezed == counterId
          ? _value.counterId
          : counterId // ignore: cast_nullable_to_non_nullable
              as String?,
      hprID: freezed == hprID
          ? _value.hprID
          : hprID // ignore: cast_nullable_to_non_nullable
              as String?,
      hipCode: freezed == hipCode
          ? _value.hipCode
          : hipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      abhaId: freezed == abhaId
          ? _value.abhaId
          : abhaId // ignore: cast_nullable_to_non_nullable
              as String?,
      abhaAddress: freezed == abhaAddress
          ? _value.abhaAddress
          : abhaAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
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
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as String?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PatientModelCopyWith<$Res>
    implements $PatientModelCopyWith<$Res> {
  factory _$$_PatientModelCopyWith(
          _$_PatientModel value, $Res Function(_$_PatientModel) then) =
      __$$_PatientModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? regRef,
      String? counterId,
      String? hprID,
      String? hipCode,
      LocationModel? location,
      String? abhaId,
      String? abhaAddress,
      String? firstName,
      String? middleName,
      String? lastName,
      Gender? gender,
      String? mobile,
      String? email,
      String? profilePhoto,
      String? yearOfBirth,
      String? monthOfBirth,
      String? dayOfBirth,
      int? age,
      String? parentPatientId,
      Relationship? relationship,
      List<AddressModel>? address});

  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_PatientModelCopyWithImpl<$Res>
    extends _$PatientModelCopyWithImpl<$Res, _$_PatientModel>
    implements _$$_PatientModelCopyWith<$Res> {
  __$$_PatientModelCopyWithImpl(
      _$_PatientModel _value, $Res Function(_$_PatientModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? regRef = freezed,
    Object? counterId = freezed,
    Object? hprID = freezed,
    Object? hipCode = freezed,
    Object? location = freezed,
    Object? abhaId = freezed,
    Object? abhaAddress = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? mobile = freezed,
    Object? email = freezed,
    Object? profilePhoto = freezed,
    Object? yearOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? dayOfBirth = freezed,
    Object? age = freezed,
    Object? parentPatientId = freezed,
    Object? relationship = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_PatientModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      regRef: freezed == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String?,
      counterId: freezed == counterId
          ? _value.counterId
          : counterId // ignore: cast_nullable_to_non_nullable
              as String?,
      hprID: freezed == hprID
          ? _value.hprID
          : hprID // ignore: cast_nullable_to_non_nullable
              as String?,
      hipCode: freezed == hipCode
          ? _value.hipCode
          : hipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      abhaId: freezed == abhaId
          ? _value.abhaId
          : abhaId // ignore: cast_nullable_to_non_nullable
              as String?,
      abhaAddress: freezed == abhaAddress
          ? _value.abhaAddress
          : abhaAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
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
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as String?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship?,
      address: freezed == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientModel implements _PatientModel {
  const _$_PatientModel(
      {this.id,
      this.regRef,
      this.counterId,
      this.hprID,
      this.hipCode,
      this.location,
      this.abhaId,
      this.abhaAddress,
      this.firstName,
      this.middleName,
      this.lastName,
      this.gender,
      this.mobile,
      this.email,
      this.profilePhoto,
      this.yearOfBirth,
      this.monthOfBirth,
      this.dayOfBirth,
      this.age,
      this.parentPatientId,
      this.relationship,
      final List<AddressModel>? address})
      : _address = address;

  factory _$_PatientModel.fromJson(Map<String, dynamic> json) =>
      _$$_PatientModelFromJson(json);

  @override
  final int? id;
  @override
  final String? regRef;
  @override
  final String? counterId;
  @override
  final String? hprID;
  @override
  final String? hipCode;
  @override
  final LocationModel? location;
  @override
  final String? abhaId;
  @override
  final String? abhaAddress;
  @override
  final String? firstName;
  @override
  final String? middleName;
  @override
  final String? lastName;
  @override
  final Gender? gender;
  @override
  final String? mobile;
  @override
  final String? email;
  @override
  final String? profilePhoto;
  @override
  final String? yearOfBirth;
  @override
  final String? monthOfBirth;
  @override
  final String? dayOfBirth;
  @override
  final int? age;
  @override
  final String? parentPatientId;
  @override
  final Relationship? relationship;
  final List<AddressModel>? _address;
  @override
  List<AddressModel>? get address {
    final value = _address;
    if (value == null) return null;
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PatientModel(id: $id, regRef: $regRef, counterId: $counterId, hprID: $hprID, hipCode: $hipCode, location: $location, abhaId: $abhaId, abhaAddress: $abhaAddress, firstName: $firstName, middleName: $middleName, lastName: $lastName, gender: $gender, mobile: $mobile, email: $email, profilePhoto: $profilePhoto, yearOfBirth: $yearOfBirth, monthOfBirth: $monthOfBirth, dayOfBirth: $dayOfBirth, age: $age, parentPatientId: $parentPatientId, relationship: $relationship, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.regRef, regRef) || other.regRef == regRef) &&
            (identical(other.counterId, counterId) ||
                other.counterId == counterId) &&
            (identical(other.hprID, hprID) || other.hprID == hprID) &&
            (identical(other.hipCode, hipCode) || other.hipCode == hipCode) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.abhaId, abhaId) || other.abhaId == abhaId) &&
            (identical(other.abhaAddress, abhaAddress) ||
                other.abhaAddress == abhaAddress) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.yearOfBirth, yearOfBirth) ||
                other.yearOfBirth == yearOfBirth) &&
            (identical(other.monthOfBirth, monthOfBirth) ||
                other.monthOfBirth == monthOfBirth) &&
            (identical(other.dayOfBirth, dayOfBirth) ||
                other.dayOfBirth == dayOfBirth) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.parentPatientId, parentPatientId) ||
                other.parentPatientId == parentPatientId) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            const DeepCollectionEquality().equals(other._address, _address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        regRef,
        counterId,
        hprID,
        hipCode,
        location,
        abhaId,
        abhaAddress,
        firstName,
        middleName,
        lastName,
        gender,
        mobile,
        email,
        profilePhoto,
        yearOfBirth,
        monthOfBirth,
        dayOfBirth,
        age,
        parentPatientId,
        relationship,
        const DeepCollectionEquality().hash(_address)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientModelCopyWith<_$_PatientModel> get copyWith =>
      __$$_PatientModelCopyWithImpl<_$_PatientModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientModelToJson(
      this,
    );
  }
}

abstract class _PatientModel implements PatientModel {
  const factory _PatientModel(
      {final int? id,
      final String? regRef,
      final String? counterId,
      final String? hprID,
      final String? hipCode,
      final LocationModel? location,
      final String? abhaId,
      final String? abhaAddress,
      final String? firstName,
      final String? middleName,
      final String? lastName,
      final Gender? gender,
      final String? mobile,
      final String? email,
      final String? profilePhoto,
      final String? yearOfBirth,
      final String? monthOfBirth,
      final String? dayOfBirth,
      final int? age,
      final String? parentPatientId,
      final Relationship? relationship,
      final List<AddressModel>? address}) = _$_PatientModel;

  factory _PatientModel.fromJson(Map<String, dynamic> json) =
      _$_PatientModel.fromJson;

  @override
  int? get id;
  @override
  String? get regRef;
  @override
  String? get counterId;
  @override
  String? get hprID;
  @override
  String? get hipCode;
  @override
  LocationModel? get location;
  @override
  String? get abhaId;
  @override
  String? get abhaAddress;
  @override
  String? get firstName;
  @override
  String? get middleName;
  @override
  String? get lastName;
  @override
  Gender? get gender;
  @override
  String? get mobile;
  @override
  String? get email;
  @override
  String? get profilePhoto;
  @override
  String? get yearOfBirth;
  @override
  String? get monthOfBirth;
  @override
  String? get dayOfBirth;
  @override
  int? get age;
  @override
  String? get parentPatientId;
  @override
  Relationship? get relationship;
  @override
  List<AddressModel>? get address;
  @override
  @JsonKey(ignore: true)
  _$$_PatientModelCopyWith<_$_PatientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaDataModel _$MetaDataModelFromJson(Map<String, dynamic> json) {
  return _MetaDataModel.fromJson(json);
}

/// @nodoc
mixin _$MetaDataModel {
  String? get hipId => throw _privateConstructorUsedError;
  String? get counterId => throw _privateConstructorUsedError;
  String? get hprId => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataModelCopyWith<MetaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataModelCopyWith<$Res> {
  factory $MetaDataModelCopyWith(
          MetaDataModel value, $Res Function(MetaDataModel) then) =
      _$MetaDataModelCopyWithImpl<$Res, MetaDataModel>;
  @useResult
  $Res call(
      {String? hipId,
      String? counterId,
      String? hprId,
      String? latitude,
      String? longitude});
}

/// @nodoc
class _$MetaDataModelCopyWithImpl<$Res, $Val extends MetaDataModel>
    implements $MetaDataModelCopyWith<$Res> {
  _$MetaDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_MetaDataModelCopyWith<$Res>
    implements $MetaDataModelCopyWith<$Res> {
  factory _$$_MetaDataModelCopyWith(
          _$_MetaDataModel value, $Res Function(_$_MetaDataModel) then) =
      __$$_MetaDataModelCopyWithImpl<$Res>;
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
class __$$_MetaDataModelCopyWithImpl<$Res>
    extends _$MetaDataModelCopyWithImpl<$Res, _$_MetaDataModel>
    implements _$$_MetaDataModelCopyWith<$Res> {
  __$$_MetaDataModelCopyWithImpl(
      _$_MetaDataModel _value, $Res Function(_$_MetaDataModel) _then)
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
    return _then(_$_MetaDataModel(
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
class _$_MetaDataModel implements _MetaDataModel {
  const _$_MetaDataModel(
      {this.hipId, this.counterId, this.hprId, this.latitude, this.longitude});

  factory _$_MetaDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataModelFromJson(json);

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
    return 'MetaDataModel(hipId: $hipId, counterId: $counterId, hprId: $hprId, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaDataModel &&
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
  _$$_MetaDataModelCopyWith<_$_MetaDataModel> get copyWith =>
      __$$_MetaDataModelCopyWithImpl<_$_MetaDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDataModelToJson(
      this,
    );
  }
}

abstract class _MetaDataModel implements MetaDataModel {
  const factory _MetaDataModel(
      {final String? hipId,
      final String? counterId,
      final String? hprId,
      final String? latitude,
      final String? longitude}) = _$_MetaDataModel;

  factory _MetaDataModel.fromJson(Map<String, dynamic> json) =
      _$_MetaDataModel.fromJson;

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
  _$$_MetaDataModelCopyWith<_$_MetaDataModel> get copyWith =>
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
abstract class _$$_MedicalRecordModelCopyWith<$Res>
    implements $MedicalRecordModelCopyWith<$Res> {
  factory _$$_MedicalRecordModelCopyWith(_$_MedicalRecordModel value,
          $Res Function(_$_MedicalRecordModel) then) =
      __$$_MedicalRecordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @TimestampConverter() DateTime? registrationDate,
      String? organisationId});
}

/// @nodoc
class __$$_MedicalRecordModelCopyWithImpl<$Res>
    extends _$MedicalRecordModelCopyWithImpl<$Res, _$_MedicalRecordModel>
    implements _$$_MedicalRecordModelCopyWith<$Res> {
  __$$_MedicalRecordModelCopyWithImpl(
      _$_MedicalRecordModel _value, $Res Function(_$_MedicalRecordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? registrationDate = freezed,
    Object? organisationId = freezed,
  }) {
    return _then(_$_MedicalRecordModel(
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
class _$_MedicalRecordModel implements _MedicalRecordModel {
  const _$_MedicalRecordModel(
      {this.id,
      @TimestampConverter() this.registrationDate,
      this.organisationId});

  factory _$_MedicalRecordModel.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalRecordModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicalRecordModel &&
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
  _$$_MedicalRecordModelCopyWith<_$_MedicalRecordModel> get copyWith =>
      __$$_MedicalRecordModelCopyWithImpl<_$_MedicalRecordModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalRecordModelToJson(
      this,
    );
  }
}

abstract class _MedicalRecordModel implements MedicalRecordModel {
  const factory _MedicalRecordModel(
      {final int? id,
      @TimestampConverter() final DateTime? registrationDate,
      final String? organisationId}) = _$_MedicalRecordModel;

  factory _MedicalRecordModel.fromJson(Map<String, dynamic> json) =
      _$_MedicalRecordModel.fromJson;

  @override
  int? get id;
  @override
  @TimestampConverter()
  DateTime? get registrationDate;
  @override
  String? get organisationId;
  @override
  @JsonKey(ignore: true)
  _$$_MedicalRecordModelCopyWith<_$_MedicalRecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call({String? latitude, String? longitude});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$_LocationModelCopyWith(
          _$_LocationModel value, $Res Function(_$_LocationModel) then) =
      __$$_LocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? latitude, String? longitude});
}

/// @nodoc
class __$$_LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$_LocationModel>
    implements _$$_LocationModelCopyWith<$Res> {
  __$$_LocationModelCopyWithImpl(
      _$_LocationModel _value, $Res Function(_$_LocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_LocationModel(
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
class _$_LocationModel implements _LocationModel {
  const _$_LocationModel({this.latitude, this.longitude});

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);

  @override
  final String? latitude;
  @override
  final String? longitude;

  @override
  String toString() {
    return 'LocationModel(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationModel &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      __$$_LocationModelCopyWithImpl<_$_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelToJson(
      this,
    );
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {final String? latitude, final String? longitude}) = _$_LocationModel;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

IdentifierModel _$IdentifierModelFromJson(Map<String, dynamic> json) {
  return _IdentifierModel.fromJson(json);
}

/// @nodoc
mixin _$IdentifierModel {
  int? get id => throw _privateConstructorUsedError;
  IdentifierType? get type => throw _privateConstructorUsedError;

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
  $Res call({int? id, IdentifierType? type});
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdentifierModelCopyWith<$Res>
    implements $IdentifierModelCopyWith<$Res> {
  factory _$$_IdentifierModelCopyWith(
          _$_IdentifierModel value, $Res Function(_$_IdentifierModel) then) =
      __$$_IdentifierModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, IdentifierType? type});
}

/// @nodoc
class __$$_IdentifierModelCopyWithImpl<$Res>
    extends _$IdentifierModelCopyWithImpl<$Res, _$_IdentifierModel>
    implements _$$_IdentifierModelCopyWith<$Res> {
  __$$_IdentifierModelCopyWithImpl(
      _$_IdentifierModel _value, $Res Function(_$_IdentifierModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_IdentifierModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IdentifierType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdentifierModel implements _IdentifierModel {
  const _$_IdentifierModel({this.id, this.type});

  factory _$_IdentifierModel.fromJson(Map<String, dynamic> json) =>
      _$$_IdentifierModelFromJson(json);

  @override
  final int? id;
  @override
  final IdentifierType? type;

  @override
  String toString() {
    return 'IdentifierModel(id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdentifierModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdentifierModelCopyWith<_$_IdentifierModel> get copyWith =>
      __$$_IdentifierModelCopyWithImpl<_$_IdentifierModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdentifierModelToJson(
      this,
    );
  }
}

abstract class _IdentifierModel implements IdentifierModel {
  const factory _IdentifierModel({final int? id, final IdentifierType? type}) =
      _$_IdentifierModel;

  factory _IdentifierModel.fromJson(Map<String, dynamic> json) =
      _$_IdentifierModel.fromJson;

  @override
  int? get id;
  @override
  IdentifierType? get type;
  @override
  @JsonKey(ignore: true)
  _$$_IdentifierModelCopyWith<_$_IdentifierModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtendedPatientModel _$ExtendedPatientModelFromJson(Map<String, dynamic> json) {
  return _ExtendedPatientModel.fromJson(json);
}

/// @nodoc
mixin _$ExtendedPatientModel {
  int? get patientId => throw _privateConstructorUsedError;
  String? get osid => throw _privateConstructorUsedError;
  int? get abhaNumber => throw _privateConstructorUsedError;
  String? get abhaAddress => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  String? get dayOfBirth => throw _privateConstructorUsedError;
  String? get monthOfBirth => throw _privateConstructorUsedError;
  String? get yearOfBirth => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get profilePhoto => throw _privateConstructorUsedError;
  int? get parentPatientId => throw _privateConstructorUsedError;
  List<AddressModel>? get address => throw _privateConstructorUsedError;
  List<RelatedPartyModel>? get relatedParty =>
      throw _privateConstructorUsedError;
  List<IdentifierModel>? get identifiers => throw _privateConstructorUsedError;
  List<MedicalRecordModel>? get medicalRecords =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtendedPatientModelCopyWith<ExtendedPatientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtendedPatientModelCopyWith<$Res> {
  factory $ExtendedPatientModelCopyWith(ExtendedPatientModel value,
          $Res Function(ExtendedPatientModel) then) =
      _$ExtendedPatientModelCopyWithImpl<$Res, ExtendedPatientModel>;
  @useResult
  $Res call(
      {int? patientId,
      String? osid,
      int? abhaNumber,
      String? abhaAddress,
      String? name,
      Gender? gender,
      String? dayOfBirth,
      String? monthOfBirth,
      String? yearOfBirth,
      String? phoneNumber,
      int? age,
      String? email,
      String? profilePhoto,
      int? parentPatientId,
      List<AddressModel>? address,
      List<RelatedPartyModel>? relatedParty,
      List<IdentifierModel>? identifiers,
      List<MedicalRecordModel>? medicalRecords});
}

/// @nodoc
class _$ExtendedPatientModelCopyWithImpl<$Res,
        $Val extends ExtendedPatientModel>
    implements $ExtendedPatientModelCopyWith<$Res> {
  _$ExtendedPatientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? osid = freezed,
    Object? abhaNumber = freezed,
    Object? abhaAddress = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dayOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? yearOfBirth = freezed,
    Object? phoneNumber = freezed,
    Object? age = freezed,
    Object? email = freezed,
    Object? profilePhoto = freezed,
    Object? parentPatientId = freezed,
    Object? address = freezed,
    Object? relatedParty = freezed,
    Object? identifiers = freezed,
    Object? medicalRecords = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      monthOfBirth: freezed == monthOfBirth
          ? _value.monthOfBirth
          : monthOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      yearOfBirth: freezed == yearOfBirth
          ? _value.yearOfBirth
          : yearOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExtendedPatientModelCopyWith<$Res>
    implements $ExtendedPatientModelCopyWith<$Res> {
  factory _$$_ExtendedPatientModelCopyWith(_$_ExtendedPatientModel value,
          $Res Function(_$_ExtendedPatientModel) then) =
      __$$_ExtendedPatientModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? patientId,
      String? osid,
      int? abhaNumber,
      String? abhaAddress,
      String? name,
      Gender? gender,
      String? dayOfBirth,
      String? monthOfBirth,
      String? yearOfBirth,
      String? phoneNumber,
      int? age,
      String? email,
      String? profilePhoto,
      int? parentPatientId,
      List<AddressModel>? address,
      List<RelatedPartyModel>? relatedParty,
      List<IdentifierModel>? identifiers,
      List<MedicalRecordModel>? medicalRecords});
}

/// @nodoc
class __$$_ExtendedPatientModelCopyWithImpl<$Res>
    extends _$ExtendedPatientModelCopyWithImpl<$Res, _$_ExtendedPatientModel>
    implements _$$_ExtendedPatientModelCopyWith<$Res> {
  __$$_ExtendedPatientModelCopyWithImpl(_$_ExtendedPatientModel _value,
      $Res Function(_$_ExtendedPatientModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? osid = freezed,
    Object? abhaNumber = freezed,
    Object? abhaAddress = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dayOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? yearOfBirth = freezed,
    Object? phoneNumber = freezed,
    Object? age = freezed,
    Object? email = freezed,
    Object? profilePhoto = freezed,
    Object? parentPatientId = freezed,
    Object? address = freezed,
    Object? relatedParty = freezed,
    Object? identifiers = freezed,
    Object? medicalRecords = freezed,
  }) {
    return _then(_$_ExtendedPatientModel(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      monthOfBirth: freezed == monthOfBirth
          ? _value.monthOfBirth
          : monthOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      yearOfBirth: freezed == yearOfBirth
          ? _value.yearOfBirth
          : yearOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExtendedPatientModel implements _ExtendedPatientModel {
  const _$_ExtendedPatientModel(
      {this.patientId,
      this.osid,
      this.abhaNumber,
      this.abhaAddress,
      this.name,
      this.gender,
      this.dayOfBirth,
      this.monthOfBirth,
      this.yearOfBirth,
      this.phoneNumber,
      this.age,
      this.email,
      this.profilePhoto,
      this.parentPatientId,
      final List<AddressModel>? address,
      final List<RelatedPartyModel>? relatedParty,
      final List<IdentifierModel>? identifiers,
      final List<MedicalRecordModel>? medicalRecords})
      : _address = address,
        _relatedParty = relatedParty,
        _identifiers = identifiers,
        _medicalRecords = medicalRecords;

  factory _$_ExtendedPatientModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExtendedPatientModelFromJson(json);

  @override
  final int? patientId;
  @override
  final String? osid;
  @override
  final int? abhaNumber;
  @override
  final String? abhaAddress;
  @override
  final String? name;
  @override
  final Gender? gender;
  @override
  final String? dayOfBirth;
  @override
  final String? monthOfBirth;
  @override
  final String? yearOfBirth;
  @override
  final String? phoneNumber;
  @override
  final int? age;
  @override
  final String? email;
  @override
  final String? profilePhoto;
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
  String toString() {
    return 'ExtendedPatientModel(patientId: $patientId, osid: $osid, abhaNumber: $abhaNumber, abhaAddress: $abhaAddress, name: $name, gender: $gender, dayOfBirth: $dayOfBirth, monthOfBirth: $monthOfBirth, yearOfBirth: $yearOfBirth, phoneNumber: $phoneNumber, age: $age, email: $email, profilePhoto: $profilePhoto, parentPatientId: $parentPatientId, address: $address, relatedParty: $relatedParty, identifiers: $identifiers, medicalRecords: $medicalRecords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExtendedPatientModel &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.osid, osid) || other.osid == osid) &&
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
            (identical(other.age, age) || other.age == age) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
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
      patientId,
      osid,
      abhaNumber,
      abhaAddress,
      name,
      gender,
      dayOfBirth,
      monthOfBirth,
      yearOfBirth,
      phoneNumber,
      age,
      email,
      profilePhoto,
      parentPatientId,
      const DeepCollectionEquality().hash(_address),
      const DeepCollectionEquality().hash(_relatedParty),
      const DeepCollectionEquality().hash(_identifiers),
      const DeepCollectionEquality().hash(_medicalRecords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExtendedPatientModelCopyWith<_$_ExtendedPatientModel> get copyWith =>
      __$$_ExtendedPatientModelCopyWithImpl<_$_ExtendedPatientModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExtendedPatientModelToJson(
      this,
    );
  }
}

abstract class _ExtendedPatientModel implements ExtendedPatientModel {
  const factory _ExtendedPatientModel(
          {final int? patientId,
          final String? osid,
          final int? abhaNumber,
          final String? abhaAddress,
          final String? name,
          final Gender? gender,
          final String? dayOfBirth,
          final String? monthOfBirth,
          final String? yearOfBirth,
          final String? phoneNumber,
          final int? age,
          final String? email,
          final String? profilePhoto,
          final int? parentPatientId,
          final List<AddressModel>? address,
          final List<RelatedPartyModel>? relatedParty,
          final List<IdentifierModel>? identifiers,
          final List<MedicalRecordModel>? medicalRecords}) =
      _$_ExtendedPatientModel;

  factory _ExtendedPatientModel.fromJson(Map<String, dynamic> json) =
      _$_ExtendedPatientModel.fromJson;

  @override
  int? get patientId;
  @override
  String? get osid;
  @override
  int? get abhaNumber;
  @override
  String? get abhaAddress;
  @override
  String? get name;
  @override
  Gender? get gender;
  @override
  String? get dayOfBirth;
  @override
  String? get monthOfBirth;
  @override
  String? get yearOfBirth;
  @override
  String? get phoneNumber;
  @override
  int? get age;
  @override
  String? get email;
  @override
  String? get profilePhoto;
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
  @JsonKey(ignore: true)
  _$$_ExtendedPatientModelCopyWith<_$_ExtendedPatientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  int? get id => throw _privateConstructorUsedError;
  String? get line => throw _privateConstructorUsedError;
  String? get ward => throw _privateConstructorUsedError;
  String? get town => throw _privateConstructorUsedError;
  String? get village => throw _privateConstructorUsedError;
  String? get subDistrict => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get pincode => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  bool? get primary => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;

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
      String? ward,
      String? town,
      String? village,
      String? subDistrict,
      String? district,
      String? state,
      String? pincode,
      String? label,
      Status? status,
      bool? primary,
      bool? deleted});
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
    Object? ward = freezed,
    Object? town = freezed,
    Object? village = freezed,
    Object? subDistrict = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
    Object? label = freezed,
    Object? status = freezed,
    Object? primary = freezed,
    Object? deleted = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressModelCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$_AddressModelCopyWith(
          _$_AddressModel value, $Res Function(_$_AddressModel) then) =
      __$$_AddressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? line,
      String? ward,
      String? town,
      String? village,
      String? subDistrict,
      String? district,
      String? state,
      String? pincode,
      String? label,
      Status? status,
      bool? primary,
      bool? deleted});
}

/// @nodoc
class __$$_AddressModelCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$_AddressModel>
    implements _$$_AddressModelCopyWith<$Res> {
  __$$_AddressModelCopyWithImpl(
      _$_AddressModel _value, $Res Function(_$_AddressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? line = freezed,
    Object? ward = freezed,
    Object? town = freezed,
    Object? village = freezed,
    Object? subDistrict = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
    Object? label = freezed,
    Object? status = freezed,
    Object? primary = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_AddressModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String?,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressModel implements _AddressModel {
  const _$_AddressModel(
      {this.id,
      this.line,
      this.ward,
      this.town,
      this.village,
      this.subDistrict,
      this.district,
      this.state,
      this.pincode,
      this.label,
      this.status,
      this.primary,
      this.deleted});

  factory _$_AddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddressModelFromJson(json);

  @override
  final int? id;
  @override
  final String? line;
  @override
  final String? ward;
  @override
  final String? town;
  @override
  final String? village;
  @override
  final String? subDistrict;
  @override
  final String? district;
  @override
  final String? state;
  @override
  final String? pincode;
  @override
  final String? label;
  @override
  final Status? status;
  @override
  final bool? primary;
  @override
  final bool? deleted;

  @override
  String toString() {
    return 'AddressModel(id: $id, line: $line, ward: $ward, town: $town, village: $village, subDistrict: $subDistrict, district: $district, state: $state, pincode: $pincode, label: $label, status: $status, primary: $primary, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.ward, ward) || other.ward == ward) &&
            (identical(other.town, town) || other.town == town) &&
            (identical(other.village, village) || other.village == village) &&
            (identical(other.subDistrict, subDistrict) ||
                other.subDistrict == subDistrict) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, line, ward, town, village,
      subDistrict, district, state, pincode, label, status, primary, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressModelCopyWith<_$_AddressModel> get copyWith =>
      __$$_AddressModelCopyWithImpl<_$_AddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressModelToJson(
      this,
    );
  }
}

abstract class _AddressModel implements AddressModel {
  const factory _AddressModel(
      {final int? id,
      final String? line,
      final String? ward,
      final String? town,
      final String? village,
      final String? subDistrict,
      final String? district,
      final String? state,
      final String? pincode,
      final String? label,
      final Status? status,
      final bool? primary,
      final bool? deleted}) = _$_AddressModel;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$_AddressModel.fromJson;

  @override
  int? get id;
  @override
  String? get line;
  @override
  String? get ward;
  @override
  String? get town;
  @override
  String? get village;
  @override
  String? get subDistrict;
  @override
  String? get district;
  @override
  String? get state;
  @override
  String? get pincode;
  @override
  String? get label;
  @override
  Status? get status;
  @override
  bool? get primary;
  @override
  bool? get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_AddressModelCopyWith<_$_AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
