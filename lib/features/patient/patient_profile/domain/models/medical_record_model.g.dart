// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
