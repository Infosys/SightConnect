// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_organ_inventory_analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EbOrganInventoryAnalyticsModelImpl
    _$$EbOrganInventoryAnalyticsModelImplFromJson(Map<String, dynamic> json) =>
        _$EbOrganInventoryAnalyticsModelImpl(
          day: json['day'] == null
              ? null
              : Day.fromJson(json['day'] as Map<String, dynamic>),
          week: json['week'] == null
              ? null
              : Day.fromJson(json['week'] as Map<String, dynamic>),
          month: json['month'] == null
              ? null
              : Day.fromJson(json['month'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$EbOrganInventoryAnalyticsModelImplToJson(
        _$EbOrganInventoryAnalyticsModelImpl instance) =>
    <String, dynamic>{
      'day': instance.day?.toJson(),
      'week': instance.week?.toJson(),
      'month': instance.month?.toJson(),
    };

_$DayImpl _$$DayImplFromJson(Map<String, dynamic> json) => _$DayImpl(
      dayIn: (json['in'] as num?)?.toInt(),
      out: (json['out'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DayImplToJson(_$DayImpl instance) => <String, dynamic>{
      'in': instance.dayIn,
      'out': instance.out,
    };
