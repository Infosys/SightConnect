// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_form_data_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubmitFormDataRequestModelImpl _$$SubmitFormDataRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmitFormDataRequestModelImpl(
      formData: json['formData'] == null
          ? null
          : FormData.fromJson(json['formData'] as Map<String, dynamic>),
      performerId: json['performerId'] as String?,
      performerRole: json['performerRole'] as String?,
      verifiedById: json['verifiedById'] as String?,
      verifiedByRole: json['verifiedByRole'] as String?,
    );

Map<String, dynamic> _$$SubmitFormDataRequestModelImplToJson(
        _$SubmitFormDataRequestModelImpl instance) =>
    <String, dynamic>{
      'formData': instance.formData?.toJson(),
      'performerId': instance.performerId,
      'performerRole': instance.performerRole,
      'verifiedById': instance.verifiedById,
      'verifiedByRole': instance.verifiedByRole,
    };

_$FormDataImpl _$$FormDataImplFromJson(Map<String, dynamic> json) =>
    _$FormDataImpl();

Map<String, dynamic> _$$FormDataImplToJson(_$FormDataImpl instance) =>
    <String, dynamic>{};
