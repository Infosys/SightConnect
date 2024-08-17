// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_reject_case_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBRejectCaseRequestModelImpl _$$EBRejectCaseRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EBRejectCaseRequestModelImpl(
      reason: json['reason'] as String?,
      comments: json['comments'] as String?,
      performerId: json['performerId'] as String?,
      performerRole: json['performerRole'] as String?,
      verifiedById: json['verifiedById'] as String?,
      verifiedByRole: json['verifiedByRole'] as String?,
    );

Map<String, dynamic> _$$EBRejectCaseRequestModelImplToJson(
        _$EBRejectCaseRequestModelImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'comments': instance.comments,
      'performerId': instance.performerId,
      'performerRole': instance.performerRole,
      'verifiedById': instance.verifiedById,
      'verifiedByRole': instance.verifiedByRole,
    };
