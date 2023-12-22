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
          : MetaDataModel.fromJson(json['metaData'] as Map<String, dynamic>),
      profile: json['profile'] == null
          ? null
          : ProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PatientResponseModelToJson(
        _$_PatientResponseModel instance) =>
    <String, dynamic>{
      'intent': instance.intent,
      'metaData': instance.metaData,
      'profile': instance.profile,
    };
