// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      requestId: json['requestId'] as String?,
      timestamp: json['timestamp'] as String?,
      intent: json['intent'] as Map<String, dynamic>?,
      location: json['location'] as Map<String, dynamic>?,
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'timestamp': instance.timestamp,
      'intent': instance.intent,
      'location': instance.location,
      'profile': instance.profile,
    };

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      hipCode: json['hipCode'] as String?,
      patient: json['patient'] == null
          ? null
          : Patient.fromJson(json['patient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'hipCode': instance.hipCode,
      'patient': instance.patient,
    };

_$_Patient _$$_PatientFromJson(Map<String, dynamic> json) => _$_Patient(
      healthId: json['healthId'] as String?,
      healthIdNumber: json['healthIdNumber'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => PatientAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      yearOfBirth: json['yearOfBirth'] as int?,
      dayOfBirth: json['dayOfBirth'] as int?,
      monthOfBirth: json['monthOfBirth'] as int?,
      parentPatientId: json['parentPatientId'] as String?,
      relatedParty: (json['relatedParty'] as List<dynamic>?)
          ?.map((e) => RelatedParty.fromJson(e as Map<String, dynamic>))
          .toList(),
      identifiers: (json['identifiers'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      medicalRecords: (json['medicalRecords'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_PatientToJson(_$_Patient instance) =>
    <String, dynamic>{
      'healthId': instance.healthId,
      'healthIdNumber': instance.healthIdNumber,
      'name': instance.name,
      'gender': instance.gender,
      'profilePhoto': instance.profilePhoto,
      'address': instance.address,
      'yearOfBirth': instance.yearOfBirth,
      'dayOfBirth': instance.dayOfBirth,
      'monthOfBirth': instance.monthOfBirth,
      'parentPatientId': instance.parentPatientId,
      'relatedParty': instance.relatedParty,
      'identifiers': instance.identifiers,
      'medicalRecords': instance.medicalRecords,
    };

_$_PatientAddress _$$_PatientAddressFromJson(Map<String, dynamic> json) =>
    _$_PatientAddress(
      line: json['line'] as String?,
      district: json['district'] as String?,
      state: json['state'] as String?,
      pincode: json['pincode'] as String?,
      label: json['label'] as String?,
      isPrimary: json['isPrimary'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_PatientAddressToJson(_$_PatientAddress instance) =>
    <String, dynamic>{
      'line': instance.line,
      'district': instance.district,
      'state': instance.state,
      'pincode': instance.pincode,
      'label': instance.label,
      'isPrimary': instance.isPrimary,
      'isDeleted': instance.isDeleted,
      'status': instance.status,
    };

_$_RelatedParty _$$_RelatedPartyFromJson(Map<String, dynamic> json) =>
    _$_RelatedParty(
      patientId: json['patientId'] as String?,
      name: json['name'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      relationship: json['relationship'] as String?,
      age: json['age'] as String?,
    );

Map<String, dynamic> _$$_RelatedPartyToJson(_$_RelatedParty instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'name': instance.name,
      'profilePhoto': instance.profilePhoto,
      'relationship': instance.relationship,
      'age': instance.age,
    };
