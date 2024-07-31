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

_$MyReferralModelImpl _$$MyReferralModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyReferralModelImpl(
      referrals: (json['referrals'] as List<dynamic>?)
          ?.map((e) => ReferralModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      statistics: json['statistics'] as bool?,
      referralsTriageStatistics: json['referralsTriageStatistics'] == null
          ? null
          : ReferralsTriageStatistics.fromJson(
              json['referralsTriageStatistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MyReferralModelImplToJson(
        _$MyReferralModelImpl instance) =>
    <String, dynamic>{
      'referrals': instance.referrals?.map((e) => e.toJson()).toList(),
      'statistics': instance.statistics,
      'referralsTriageStatistics': instance.referralsTriageStatistics?.toJson(),
    };

_$ReferralModelImpl _$$ReferralModelImplFromJson(Map<String, dynamic> json) =>
    _$ReferralModelImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      registeredMobile: json['registeredMobile'] as String?,
      patientId: (json['patientId'] as num?)?.toInt(),
      referredDate:
          const TimestampConverter().fromJson(json['referredDate'] as String?),
      referredBy: json['referredBy'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ReferralModelImplToJson(_$ReferralModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'registeredMobile': instance.registeredMobile,
      'patientId': instance.patientId,
      'referredDate': const TimestampConverter().toJson(instance.referredDate),
      'referredBy': instance.referredBy,
      'metadata': instance.metadata,
    };

_$ReferralsTriageStatisticsImpl _$$ReferralsTriageStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralsTriageStatisticsImpl(
      referred: (json['referred'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      totalReferredCounts: (json['totalReferredCounts'] as num?)?.toInt(),
      totalTriagedCounts: (json['totalTriagedCounts'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ReferralsTriageStatisticsImplToJson(
        _$ReferralsTriageStatisticsImpl instance) =>
    <String, dynamic>{
      'referred': instance.referred,
      'totalReferredCounts': instance.totalReferredCounts,
      'totalTriagedCounts': instance.totalTriagedCounts,
    };
