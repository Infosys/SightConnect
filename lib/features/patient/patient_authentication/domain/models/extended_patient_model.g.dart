// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExtendedPatientModel _$$_ExtendedPatientModelFromJson(
        Map<String, dynamic> json) =>
    _$_ExtendedPatientModel(
      abhaNumber: json['abhaNumber'] as int?,
      abhaAddress: json['abhaAddress'] as String?,
      name: json['name'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      dayOfBirth: json['dayOfBirth'] as String?,
      monthOfBirth: json['monthOfBirth'] as String?,
      yearOfBirth: json['yearOfBirth'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
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
      'abhaNumber': instance.abhaNumber,
      'abhaAddress': instance.abhaAddress,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
      'dayOfBirth': instance.dayOfBirth,
      'monthOfBirth': instance.monthOfBirth,
      'yearOfBirth': instance.yearOfBirth,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'profilePhoto': instance.profilePhoto,
      'parentPatientId': instance.parentPatientId,
      'address': instance.address,
      'relatedParty': instance.relatedParty,
      'identifiers': instance.identifiers,
      'medicalRecords': instance.medicalRecords,
    };

const _$GenderEnumMap = {
  Gender.MALE: 'MALE',
  Gender.FEMALE: 'FEMALE',
  Gender.OTHER: 'OTHER',
  Gender.M: 'M',
  Gender.F: 'F',
  Gender.O: 'O',
};
