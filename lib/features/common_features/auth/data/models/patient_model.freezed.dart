// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientModel _$PatientModelFromJson(Map<String, dynamic> json) {
  return _PatientModel.fromJson(json);
}

/// @nodoc
mixin _$PatientModel {
  String? get counterId => throw _privateConstructorUsedError;
  String? get hprID => throw _privateConstructorUsedError;
  String? get hipCode => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  String? get abhaId => throw _privateConstructorUsedError;
  String? get abhaAddress => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
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
      {String? counterId,
      String? hprID,
      String? hipCode,
      LocationModel? location,
      String? abhaId,
      String? abhaAddress,
      String? name,
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
    Object? counterId = freezed,
    Object? hprID = freezed,
    Object? hipCode = freezed,
    Object? location = freezed,
    Object? abhaId = freezed,
    Object? abhaAddress = freezed,
    Object? name = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      {String? counterId,
      String? hprID,
      String? hipCode,
      LocationModel? location,
      String? abhaId,
      String? abhaAddress,
      String? name,
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
    Object? counterId = freezed,
    Object? hprID = freezed,
    Object? hipCode = freezed,
    Object? location = freezed,
    Object? abhaId = freezed,
    Object? abhaAddress = freezed,
    Object? name = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      {this.counterId,
      this.hprID,
      this.hipCode,
      this.location,
      this.abhaId,
      this.abhaAddress,
      this.name,
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
  final String? name;
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
    return 'PatientModel(counterId: $counterId, hprID: $hprID, hipCode: $hipCode, location: $location, abhaId: $abhaId, abhaAddress: $abhaAddress, name: $name, gender: $gender, mobile: $mobile, email: $email, profilePhoto: $profilePhoto, yearOfBirth: $yearOfBirth, monthOfBirth: $monthOfBirth, dayOfBirth: $dayOfBirth, age: $age, parentPatientId: $parentPatientId, relationship: $relationship, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientModel &&
            (identical(other.counterId, counterId) ||
                other.counterId == counterId) &&
            (identical(other.hprID, hprID) || other.hprID == hprID) &&
            (identical(other.hipCode, hipCode) || other.hipCode == hipCode) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.abhaId, abhaId) || other.abhaId == abhaId) &&
            (identical(other.abhaAddress, abhaAddress) ||
                other.abhaAddress == abhaAddress) &&
            (identical(other.name, name) || other.name == name) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      counterId,
      hprID,
      hipCode,
      location,
      abhaId,
      abhaAddress,
      name,
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
      const DeepCollectionEquality().hash(_address));

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
      {final String? counterId,
      final String? hprID,
      final String? hipCode,
      final LocationModel? location,
      final String? abhaId,
      final String? abhaAddress,
      final String? name,
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
  String? get name;
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
