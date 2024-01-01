// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientResponseModel _$$_PatientResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_PatientResponseModel(
      intent: json['intent'] as String?,
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
      profile: json['profile'] == null
          ? null
          : ProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PatientResponseModelToJson(
        _$_PatientResponseModel instance) =>
    <String, dynamic>{
      'intent': instance.intent,
      'metaData': instance.metaData?.toJson(),
      'profile': instance.profile?.toJson(),
    };

_$_MetaData _$$_MetaDataFromJson(Map<String, dynamic> json) => _$_MetaData(
      hipId: json['hipId'] as String?,
      counterId: json['counterId'] as String?,
      hprId: json['hprId'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$$_MetaDataToJson(_$_MetaData instance) =>
    <String, dynamic>{
      'hipId': instance.hipId,
      'counterId': instance.counterId,
      'hprId': instance.hprId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      patient: json['patient'] == null
          ? null
          : PatientModel.fromJson(json['patient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'patient': instance.patient?.toJson(),
    };

_$_PatientModel _$$_PatientModelFromJson(Map<String, dynamic> json) =>
    _$_PatientModel(
      patientId: json['patientId'] as int?,
      registryRef: json['registryRef'] as String?,
      abhaNumber: json['abhaNumber'] as String?,
      abhaAddress: json['abhaAddress'] as String?,
      name: json['name'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      middleName: json['middleName'] as String?,
      accountStatus: $enumDecodeNullable(
          _$PatientAccountStatusEnumMap, json['accountStatus']),
      gender: $enumDecodeNullable(_$PatientGenderEnumMap, json['gender']),
      profilePhoto: json['profilePhoto'] as String?,
      email: json['email'] as String?,
      dayOfBirth: json['dayOfBirth'] as String?,
      monthOfBirth: json['monthOfBirth'] as String?,
      yearOfBirth: json['yearOfBirth'] as String?,
      age: json['age'] as int?,
      phoneNumber: json['phoneNumber'] as String?,
      parentPatientId: json['parentPatientId'] as int?,
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => AddressModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      relatedParty: (json['relatedParty'] as List<dynamic>?)
          ?.map((e) => RelatedPartyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      identifiers: (json['identifiers'] as List<dynamic>?)
          ?.map((e) => IdentifierModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      medicalRecords: (json['medicalRecords'] as List<dynamic>?)
          ?.map((e) => MedicalRecordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dobSource: $enumDecodeNullable(_$DOBSourceEnumMap, json['dobSource']),
      privacyPolicyAccepted: json['privacyPolicyAccepted'] as bool?,
      privacyPolicyTimestamp: json['privacyPolicyTimestamp'] as String?,
    );

Map<String, dynamic> _$$_PatientModelToJson(_$_PatientModel instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'registryRef': instance.registryRef,
      'abhaNumber': instance.abhaNumber,
      'abhaAddress': instance.abhaAddress,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'accountStatus': _$PatientAccountStatusEnumMap[instance.accountStatus],
      'gender': _$PatientGenderEnumMap[instance.gender],
      'profilePhoto': instance.profilePhoto,
      'email': instance.email,
      'dayOfBirth': instance.dayOfBirth,
      'monthOfBirth': instance.monthOfBirth,
      'yearOfBirth': instance.yearOfBirth,
      'age': instance.age,
      'phoneNumber': instance.phoneNumber,
      'parentPatientId': instance.parentPatientId,
      'address': instance.address?.map((e) => e.toJson()).toList(),
      'relatedParty': instance.relatedParty?.map((e) => e.toJson()).toList(),
      'identifiers': instance.identifiers?.map((e) => e.toJson()).toList(),
      'medicalRecords':
          instance.medicalRecords?.map((e) => e.toJson()).toList(),
      'dobSource': _$DOBSourceEnumMap[instance.dobSource],
      'privacyPolicyAccepted': instance.privacyPolicyAccepted,
      'privacyPolicyTimestamp': instance.privacyPolicyTimestamp,
    };

const _$PatientAccountStatusEnumMap = {
  PatientAccountStatus.ACTIVE: 'ACTIVE',
  PatientAccountStatus.INACTIVE: 'INACTIVE',
  PatientAccountStatus.PENDING_VERIFICATION: 'PENDING_VERIFICATION',
  PatientAccountStatus.BLOCKED: 'BLOCKED',
  PatientAccountStatus.CLOSED: 'CLOSED',
  PatientAccountStatus.LIMITED: 'LIMITED',
  PatientAccountStatus.DELETED: 'DELETED',
};

const _$PatientGenderEnumMap = {
  PatientGender.MALE: 'MALE',
  PatientGender.FEMALE: 'FEMALE',
  PatientGender.OTHER: 'OTHER',
};

const _$DOBSourceEnumMap = {
  DOBSource.CALCULATED: 'CALCULATED',
  DOBSource.USER_PROVIDED: 'USER_PROVIDED',
};

_$_AddressModel _$$_AddressModelFromJson(Map<String, dynamic> json) =>
    _$_AddressModel(
      id: json['id'] as int?,
      line: json['line'] as String?,
      district: json['district'] as String?,
      state: json['state'] as String?,
      pincode: json['pincode'] as String?,
      label: json['label'] as String?,
      isPrimary: json['isPrimary'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
      status: $enumDecodeNullable(_$AddressStatusEnumMap, json['status']),
      ward: json['ward'] as String?,
      town: json['town'] as String?,
      village: json['village'] as String?,
      subDistrict: json['subDistrict'] as String?,
    );

Map<String, dynamic> _$$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'line': instance.line,
      'district': instance.district,
      'state': instance.state,
      'pincode': instance.pincode,
      'label': instance.label,
      'isPrimary': instance.isPrimary,
      'isDeleted': instance.isDeleted,
      'status': _$AddressStatusEnumMap[instance.status],
      'ward': instance.ward,
      'town': instance.town,
      'village': instance.village,
      'subDistrict': instance.subDistrict,
    };

const _$AddressStatusEnumMap = {
  AddressStatus.ACTIVE: 'ACTIVE',
  AddressStatus.INACTIVE: 'INACTIVE',
};

_$_IdentifierModel _$$_IdentifierModelFromJson(Map<String, dynamic> json) =>
    _$_IdentifierModel(
      id: json['id'] as int?,
      type: $enumDecodeNullable(_$IdentifierTypeEnumMap, json['type']),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_IdentifierModelToJson(_$_IdentifierModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$IdentifierTypeEnumMap[instance.type],
      'value': instance.value,
    };

const _$IdentifierTypeEnumMap = {
  IdentifierType.ABHA_NUMBER: 'ABHA_NUMBER',
  IdentifierType.ABHA_ADDRESS: 'ABHA_ADDRESS',
  IdentifierType.HPR_ID: 'HPR_ID',
  IdentifierType.COUNTER_ID: 'COUNTER_ID',
  IdentifierType.MR_CODE: 'MR_CODE',
};

_$_MedicalRecordModel _$$_MedicalRecordModelFromJson(
        Map<String, dynamic> json) =>
    _$_MedicalRecordModel(
      id: json['id'] as int?,
      registrationDate: const TimestampConverter()
          .fromJson(json['registrationDate'] as String?),
      organisationId: json['organisationId'] as String?,
    );

Map<String, dynamic> _$$_MedicalRecordModelToJson(
        _$_MedicalRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'registrationDate':
          const TimestampConverter().toJson(instance.registrationDate),
      'organisationId': instance.organisationId,
    };

_$_RelatedPartyModel _$$_RelatedPartyModelFromJson(Map<String, dynamic> json) =>
    _$_RelatedPartyModel(
      patientId: json['patientId'] as int?,
      relation:
          $enumDecodeNullable(_$FamilyRelationShipEnumMap, json['relation']),
      parentPatientId: json['parentPatientId'] as int?,
      status: $enumDecodeNullable(_$RelatedPartyStatusEnumMap, json['status']),
      name: json['name'] as String?,
      profilePicture: json['profilePicture'] as String?,
      age: json['age'] as int?,
      regRef: json['regRef'] as String?,
    );

Map<String, dynamic> _$$_RelatedPartyModelToJson(
        _$_RelatedPartyModel instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'relation': _$FamilyRelationShipEnumMap[instance.relation],
      'parentPatientId': instance.parentPatientId,
      'status': _$RelatedPartyStatusEnumMap[instance.status],
      'name': instance.name,
      'profilePicture': instance.profilePicture,
      'age': instance.age,
      'regRef': instance.regRef,
    };

const _$FamilyRelationShipEnumMap = {
  FamilyRelationShip.FATHER: 'FATHER',
  FamilyRelationShip.MOTHER: 'MOTHER',
  FamilyRelationShip.SON: 'SON',
  FamilyRelationShip.DAUGHTER: 'DAUGHTER',
  FamilyRelationShip.BROTHER: 'BROTHER',
  FamilyRelationShip.SPOUSE: 'SPOUSE',
  FamilyRelationShip.CHILD: 'CHILD',
  FamilyRelationShip.SIBING: 'SIBING',
  FamilyRelationShip.UNCLE: 'UNCLE',
  FamilyRelationShip.AUNT: 'AUNT',
  FamilyRelationShip.GRANDFATHER: 'GRANDFATHER',
  FamilyRelationShip.GRANDMOTHER: 'GRANDMOTHER',
  FamilyRelationShip.OTHER: 'OTHER',
};

const _$RelatedPartyStatusEnumMap = {
  RelatedPartyStatus.ACTIVE: 'ACTIVE',
  RelatedPartyStatus.INACTIVE: 'INACTIVE',
  RelatedPartyStatus.PENDING_VERIFICATION: 'PENDING_VERIFICATION',
  RelatedPartyStatus.BLOCKED: 'BLOCKED',
  RelatedPartyStatus.CLOSED: 'CLOSED',
  RelatedPartyStatus.LIMITED: 'LIMITED',
  RelatedPartyStatus.DELETED: 'DELETED',
};
