// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientResponseModel _$$_PatientResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_PatientResponseModel(
      intent: json['intent'] as String?,
      metaData: json['metaData'] == null
          ? null
          : MetaDataModel.fromJson(json['metaData'] as Map<String, dynamic>),
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

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      patient: json['patient'] == null
          ? null
          : ExtendedPatientModel.fromJson(
              json['patient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'patient': instance.patient?.toJson(),
    };

_$_RelatedPartyModel _$$_RelatedPartyModelFromJson(Map<String, dynamic> json) =>
    _$_RelatedPartyModel(
      patientId: json['patientId'] as int?,
      relation: $enumDecodeNullable(_$RelationshipEnumMap, json['relation']),
      parentPatientId: json['parentPatientId'] as int?,
      regRef: json['regRef'] as String?,
      name: json['name'] as String?,
      profilePicture: json['profilePicture'] as String?,
      age: json['age'] as int?,
    );

Map<String, dynamic> _$$_RelatedPartyModelToJson(
        _$_RelatedPartyModel instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'relation': _$RelationshipEnumMap[instance.relation],
      'parentPatientId': instance.parentPatientId,
      'regRef': instance.regRef,
      'name': instance.name,
      'profilePicture': instance.profilePicture,
      'age': instance.age,
    };

const _$RelationshipEnumMap = {
  Relationship.FATHER: 'FATHER',
  Relationship.MOTHER: 'MOTHER',
  Relationship.SPOUSE: 'SPOUSE',
  Relationship.CHILD: 'CHILD',
  Relationship.SIBING: 'SIBING',
  Relationship.UNCLE: 'UNCLE',
  Relationship.AUNT: 'AUNT',
  Relationship.GRANDFATHER: 'GRANDFATHER',
  Relationship.GRANDMOTHER: 'GRANDMOTHER',
  Relationship.OTHER: 'OTHER',
};

_$_PatientModel _$$_PatientModelFromJson(Map<String, dynamic> json) =>
    _$_PatientModel(
      id: json['id'] as int?,
      regRef: json['regRef'] as String?,
      counterId: json['counterId'] as String?,
      hprID: json['hprID'] as String?,
      hipCode: json['hipCode'] as String?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      abhaId: json['abhaId'] as String?,
      abhaAddress: json['abhaAddress'] as String?,
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      yearOfBirth: json['yearOfBirth'] as String?,
      monthOfBirth: json['monthOfBirth'] as String?,
      dayOfBirth: json['dayOfBirth'] as String?,
      age: json['age'] as int?,
      parentPatientId: json['parentPatientId'] as String?,
      relationship:
          $enumDecodeNullable(_$RelationshipEnumMap, json['relationship']),
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => AddressModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PatientModelToJson(_$_PatientModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'regRef': instance.regRef,
      'counterId': instance.counterId,
      'hprID': instance.hprID,
      'hipCode': instance.hipCode,
      'location': instance.location?.toJson(),
      'abhaId': instance.abhaId,
      'abhaAddress': instance.abhaAddress,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'gender': _$GenderEnumMap[instance.gender],
      'mobile': instance.mobile,
      'email': instance.email,
      'profilePhoto': instance.profilePhoto,
      'yearOfBirth': instance.yearOfBirth,
      'monthOfBirth': instance.monthOfBirth,
      'dayOfBirth': instance.dayOfBirth,
      'age': instance.age,
      'parentPatientId': instance.parentPatientId,
      'relationship': _$RelationshipEnumMap[instance.relationship],
      'address': instance.address?.map((e) => e.toJson()).toList(),
    };

const _$GenderEnumMap = {
  Gender.Male: 'Male',
  Gender.Female: 'Female',
  Gender.Other: 'Other',
  Gender.MALE: 'MALE',
  Gender.FEMALE: 'FEMALE',
  Gender.OTHER: 'OTHER',
  Gender.M: 'M',
  Gender.F: 'F',
  Gender.O: 'O',
  Gender.Unknown: 'Unknown',
};

_$_MetaDataModel _$$_MetaDataModelFromJson(Map<String, dynamic> json) =>
    _$_MetaDataModel(
      hipId: json['hipId'] as String?,
      counterId: json['counterId'] as String?,
      hprId: json['hprId'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$$_MetaDataModelToJson(_$_MetaDataModel instance) =>
    <String, dynamic>{
      'hipId': instance.hipId,
      'counterId': instance.counterId,
      'hprId': instance.hprId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
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

_$_LocationModel _$$_LocationModelFromJson(Map<String, dynamic> json) =>
    _$_LocationModel(
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$_IdentifierModel _$$_IdentifierModelFromJson(Map<String, dynamic> json) =>
    _$_IdentifierModel(
      id: json['id'] as int?,
      type: $enumDecodeNullable(_$IdentifierTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_IdentifierModelToJson(_$_IdentifierModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$IdentifierTypeEnumMap[instance.type],
    };

const _$IdentifierTypeEnumMap = {
  IdentifierType.EMAIL: 'EMAIL',
  IdentifierType.MOBILE: 'MOBILE',
  IdentifierType.ABHA_ADDRESS: 'ABHA_ADDRESS',
  IdentifierType.ABHA_ID: 'ABHA_ID',
  IdentifierType.HPR_ID: 'HPR_ID',
  IdentifierType.COUNTER_ID: 'COUNTER_ID',
};

_$_ExtendedPatientModel _$$_ExtendedPatientModelFromJson(
        Map<String, dynamic> json) =>
    _$_ExtendedPatientModel(
      patientId: json['patientId'] as int?,
      osid: json['osid'] as String?,
      abhaNumber: json['abhaNumber'] as int?,
      abhaAddress: json['abhaAddress'] as String?,
      name: json['name'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      dayOfBirth: json['dayOfBirth'] as String?,
      monthOfBirth: json['monthOfBirth'] as String?,
      yearOfBirth: json['yearOfBirth'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      age: json['age'] as int?,
      email: json['email'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
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
    );

Map<String, dynamic> _$$_ExtendedPatientModelToJson(
        _$_ExtendedPatientModel instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'osid': instance.osid,
      'abhaNumber': instance.abhaNumber,
      'abhaAddress': instance.abhaAddress,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
      'dayOfBirth': instance.dayOfBirth,
      'monthOfBirth': instance.monthOfBirth,
      'yearOfBirth': instance.yearOfBirth,
      'phoneNumber': instance.phoneNumber,
      'age': instance.age,
      'email': instance.email,
      'profilePhoto': instance.profilePhoto,
      'parentPatientId': instance.parentPatientId,
      'address': instance.address?.map((e) => e.toJson()).toList(),
      'relatedParty': instance.relatedParty?.map((e) => e.toJson()).toList(),
      'identifiers': instance.identifiers?.map((e) => e.toJson()).toList(),
      'medicalRecords':
          instance.medicalRecords?.map((e) => e.toJson()).toList(),
    };

_$_AddressModel _$$_AddressModelFromJson(Map<String, dynamic> json) =>
    _$_AddressModel(
      id: json['id'] as int?,
      line: json['line'] as String?,
      ward: json['ward'] as String?,
      town: json['town'] as String?,
      village: json['village'] as String?,
      subDistrict: json['subDistrict'] as String?,
      district: json['district'] as String?,
      state: json['state'] as String?,
      pincode: json['pincode'] as String?,
      label: json['label'] as String?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      primary: json['primary'] as bool?,
      deleted: json['deleted'] as bool?,
    );

Map<String, dynamic> _$$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'line': instance.line,
      'ward': instance.ward,
      'town': instance.town,
      'village': instance.village,
      'subDistrict': instance.subDistrict,
      'district': instance.district,
      'state': instance.state,
      'pincode': instance.pincode,
      'label': instance.label,
      'status': _$StatusEnumMap[instance.status],
      'primary': instance.primary,
      'deleted': instance.deleted,
    };

const _$StatusEnumMap = {
  Status.ACTIVE: 'ACTIVE',
  Status.INACTIVE: 'INACTIVE',
  Status.IN_PROGRESS: 'IN_PROGRESS',
};
