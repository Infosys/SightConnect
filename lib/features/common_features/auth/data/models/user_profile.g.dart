// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      intent: json['intent'] as String?,
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'intent': instance.intent,
      'metaData': instance.metaData,
      'profile': instance.profile,
    };

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      patient: json['patient'] == null
          ? null
          : Patient.fromJson(json['patient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'patient': instance.patient,
    };

_$_Patient _$$_PatientFromJson(Map<String, dynamic> json) => _$_Patient(
      abhaNumber: json['abhaNumber'] as int?,
      abhaAddress: json['abhaAddress'] as String?,
      name: json['name'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      dayOfBirth:
          const TimestampConverter().fromJson(json['dayOfBirth'] as String?),
      monthOfBirth:
          const TimestampConverter().fromJson(json['monthOfBirth'] as String?),
      yearOfBirth:
          const TimestampConverter().fromJson(json['yearOfBirth'] as String?),
      phoneNumber: json['phoneNumber'] as String?,
      parentPatientId: json['parentPatientId'] as int?,
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => PatientAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      relatedParty: (json['relatedParty'] as List<dynamic>?)
          ?.map((e) => RelatedParty.fromJson(e as Map<String, dynamic>))
          .toList(),
      identifiers: (json['identifiers'] as List<dynamic>?)
          ?.map((e) => Identifiers.fromJson(e as Map<String, dynamic>))
          .toList(),
      medicalRecords: (json['medicalRecords'] as List<dynamic>?)
          ?.map((e) => MedicalRecords.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PatientToJson(_$_Patient instance) =>
    <String, dynamic>{
      'abhaNumber': instance.abhaNumber,
      'abhaAddress': instance.abhaAddress,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
      'dayOfBirth': const TimestampConverter().toJson(instance.dayOfBirth),
      'monthOfBirth': const TimestampConverter().toJson(instance.monthOfBirth),
      'yearOfBirth': const TimestampConverter().toJson(instance.yearOfBirth),
      'phoneNumber': instance.phoneNumber,
      'parentPatientId': instance.parentPatientId,
      'address': instance.address,
      'relatedParty': instance.relatedParty,
      'identifiers': instance.identifiers,
      'medicalRecords': instance.medicalRecords,
    };

const _$GenderEnumMap = {
  Gender.MALE: 'MALE',
  Gender.FEMALE: 'FEMALE',
  Gender.OTHERS: 'OTHERS',
};

_$_PatientAddress _$$_PatientAddressFromJson(Map<String, dynamic> json) =>
    _$_PatientAddress(
      id: json['id'] as int?,
      line: json['line'] as String?,
      district: json['district'] as String?,
      state: json['state'] as String?,
      pincode: json['pincode'] as String?,
      label: json['label'] as String?,
      isPrimary: json['isPrimary'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_PatientAddressToJson(_$_PatientAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'line': instance.line,
      'district': instance.district,
      'state': instance.state,
      'pincode': instance.pincode,
      'label': instance.label,
      'isPrimary': instance.isPrimary,
      'isDeleted': instance.isDeleted,
      'status': _$StatusEnumMap[instance.status],
    };

const _$StatusEnumMap = {
  Status.ACTIVE: 'ACTIVE',
  Status.INACTIVE: 'INACTIVE',
};

_$_RelatedParty _$$_RelatedPartyFromJson(Map<String, dynamic> json) =>
    _$_RelatedParty(
      patientId: json['patientId'] as int?,
      relation: $enumDecodeNullable(_$RelationEnumMap, json['relation']),
      parentPatientId: json['parentPatientId'] as int?,
      regRef: json['regRef'] as String?,
    );

Map<String, dynamic> _$$_RelatedPartyToJson(_$_RelatedParty instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'relation': _$RelationEnumMap[instance.relation],
      'parentPatientId': instance.parentPatientId,
      'regRef': instance.regRef,
    };

const _$RelationEnumMap = {
  Relation.FATHER: 'FATHER',
  Relation.MOTHER: 'MOTHER',
  Relation.SPOUSE: 'SPOUSE',
  Relation.CHILD: 'CHILD',
  Relation.OTHERS: 'OTHERS',
};

_$_Identifiers _$$_IdentifiersFromJson(Map<String, dynamic> json) =>
    _$_Identifiers(
      id: json['id'] as int?,
      type: $enumDecodeNullable(_$IdentfierTypeEnumMap, json['type']),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_IdentifiersToJson(_$_Identifiers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$IdentfierTypeEnumMap[instance.type],
      'value': instance.value,
    };

const _$IdentfierTypeEnumMap = {
  IdentfierType.EMAIL: 'EMAIL',
  IdentfierType.MOBILE: 'MOBILE',
};

_$_MedicalRecords _$$_MedicalRecordsFromJson(Map<String, dynamic> json) =>
    _$_MedicalRecords(
      id: json['id'] as int?,
      registrationDate: const TimestampConverter()
          .fromJson(json['registrationDate'] as String?),
      organisationId: json['organisationId'] as String?,
    );

Map<String, dynamic> _$$_MedicalRecordsToJson(_$_MedicalRecords instance) =>
    <String, dynamic>{
      'id': instance.id,
      'registrationDate':
          const TimestampConverter().toJson(instance.registrationDate),
      'organisationId': instance.organisationId,
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
