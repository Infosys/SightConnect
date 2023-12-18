// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_DTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientDTO _$$_PatientDTOFromJson(Map<String, dynamic> json) =>
    _$_PatientDTO(
      counterId: json['counterId'] as String?,
      hprID: json['hprID'] as String?,
      hipCode: json['hipCode'] as String?,
      location: json['location'] == null
          ? null
          : LocationDTO.fromJson(json['location'] as Map<String, dynamic>),
      abhaId: json['abhaId'] as String?,
      abhaAddress: json['abhaAddress'] as String?,
      name: json['name'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      yearOfBirth: json['yearOfBirth'] as String?,
      monthOfBirth: (json['monthOfBirth'] as num?)?.toDouble(),
      dayOfBirth: (json['dayOfBirth'] as num?)?.toDouble(),
      age: json['age'] as int?,
      parentPatientId: json['parentPatientId'] as String?,
      relationship:
          $enumDecodeNullable(_$RelationshipEnumMap, json['relationship']),
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => AddressDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PatientDTOToJson(_$_PatientDTO instance) =>
    <String, dynamic>{
      'counterId': instance.counterId,
      'hprID': instance.hprID,
      'hipCode': instance.hipCode,
      'location': instance.location,
      'abhaId': instance.abhaId,
      'abhaAddress': instance.abhaAddress,
      'name': instance.name,
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
      'address': instance.address,
    };

const _$GenderEnumMap = {
  Gender.MALE: 'MALE',
  Gender.FEMALE: 'FEMALE',
  Gender.OTHER: 'OTHER',
  Gender.M: 'M',
  Gender.F: 'F',
  Gender.O: 'O',
  Gender.Male: 'Male',
  Gender.Female: 'Female',
  Gender.Others: 'Others',
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
