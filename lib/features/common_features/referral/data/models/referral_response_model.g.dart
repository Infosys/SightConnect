// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReferralRequestModelImpl _$$ReferralRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralRequestModelImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      registeredMobile: json['registeredMobile'] as String?,
      patientId: (json['patientId'] as num?)?.toInt(),
      referredDate:
          const TimestampConverter().fromJson(json['referredDate'] as String?),
      referredBy: json['referredBy'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ReferralRequestModelImplToJson(
        _$ReferralRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'registeredMobile': instance.registeredMobile,
      'patientId': instance.patientId,
      'referredDate': const TimestampConverter().toJson(instance.referredDate),
      'referredBy': instance.referredBy,
      'metadata': instance.metadata,
    };

_$ReferralCodeModelImpl _$$ReferralCodeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralCodeModelImpl(
      code: json['code'] as String?,
      statistics: json['statistics'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ReferralCodeModelImplToJson(
        _$ReferralCodeModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'statistics': instance.statistics,
    };
