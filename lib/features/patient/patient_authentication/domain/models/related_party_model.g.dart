// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_party_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
