// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientInfo _$$_PatientInfoFromJson(Map<String, dynamic> json) =>
    _$_PatientInfo(
      id: json['id'] as int,
      registryRef: json['registryRef'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      deleted: json['deleted'] as bool?,
    );

Map<String, dynamic> _$$_PatientInfoToJson(_$_PatientInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'registryRef': instance.registryRef,
      'mobileNumber': instance.mobileNumber,
      'isDeleted': instance.isDeleted,
      'deleted': instance.deleted,
    };
