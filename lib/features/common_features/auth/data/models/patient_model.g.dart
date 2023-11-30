// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientModel _$$_PatientModelFromJson(Map<String, dynamic> json) =>
    _$_PatientModel(
      counterId: json['counterId'] as String?,
      hprID: json['hprID'] as String?,
      hipCode: json['hipCode'] as String?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      abhaId: json['abhaId'] as String?,
      abhaAddress: json['abhaAddress'] as String?,
      name: json['name'] as String?,
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
