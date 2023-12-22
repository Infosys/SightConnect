// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extended_patient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExtendedPatientModel _$ExtendedPatientModelFromJson(Map<String, dynamic> json) {
  return _ExtendedPatientModel.fromJson(json);
}

/// @nodoc
mixin _$ExtendedPatientModel {
  int? get abhaNumber => throw _privateConstructorUsedError;
  String? get abhaAddress => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  String? get dayOfBirth => throw _privateConstructorUsedError;
  String? get monthOfBirth => throw _privateConstructorUsedError;
  String? get yearOfBirth => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
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
      {int? abhaNumber,
      String? abhaAddress,
      String? name,
      Gender? gender,
      String? dayOfBirth,
      String? monthOfBirth,
      String? yearOfBirth,
      String? phoneNumber,
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
    Object? abhaNumber = freezed,
    Object? abhaAddress = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dayOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? yearOfBirth = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? profilePhoto = freezed,
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
      {int? abhaNumber,
      String? abhaAddress,
      String? name,
      Gender? gender,
      String? dayOfBirth,
      String? monthOfBirth,
      String? yearOfBirth,
      String? phoneNumber,
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
    Object? abhaNumber = freezed,
    Object? abhaAddress = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dayOfBirth = freezed,
    Object? monthOfBirth = freezed,
    Object? yearOfBirth = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? profilePhoto = freezed,
    Object? parentPatientId = freezed,
    Object? address = freezed,
    Object? relatedParty = freezed,
    Object? identifiers = freezed,
    Object? medicalRecords = freezed,
  }) {
    return _then(_$_ExtendedPatientModel(
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
      {this.abhaNumber,
      this.abhaAddress,
      this.name,
      this.gender,
      this.dayOfBirth,
      this.monthOfBirth,
      this.yearOfBirth,
      this.phoneNumber,
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
    return 'ExtendedPatientModel(abhaNumber: $abhaNumber, abhaAddress: $abhaAddress, name: $name, gender: $gender, dayOfBirth: $dayOfBirth, monthOfBirth: $monthOfBirth, yearOfBirth: $yearOfBirth, phoneNumber: $phoneNumber, email: $email, profilePhoto: $profilePhoto, parentPatientId: $parentPatientId, address: $address, relatedParty: $relatedParty, identifiers: $identifiers, medicalRecords: $medicalRecords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExtendedPatientModel &&
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
      abhaNumber,
      abhaAddress,
      name,
      gender,
      dayOfBirth,
      monthOfBirth,
      yearOfBirth,
      phoneNumber,
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
          {final int? abhaNumber,
          final String? abhaAddress,
          final String? name,
          final Gender? gender,
          final String? dayOfBirth,
          final String? monthOfBirth,
          final String? yearOfBirth,
          final String? phoneNumber,
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
