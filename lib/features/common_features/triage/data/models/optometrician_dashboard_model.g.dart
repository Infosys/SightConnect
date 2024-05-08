// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'optometrician_dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OptometricianDashboardModelImpl _$$OptometricianDashboardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OptometricianDashboardModelImpl(
      totalAssessmentsThisMonth:
          (json['totalAssessmentsThisMonth'] as num?)?.toInt(),
      totalAssessmentsToday: (json['totalAssessmentsToday'] as num?)?.toInt(),
      totalAssessmentsThisMonthByOptometrist:
          (json['totalAssessmentsThisMonthByOptometrist'] as num?)?.toInt(),
      totalAssessmentsTodayByOptometrist:
          (json['totalAssessmentsTodayByOptometrist'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OptometricianDashboardModelImplToJson(
        _$OptometricianDashboardModelImpl instance) =>
    <String, dynamic>{
      'totalAssessmentsThisMonth': instance.totalAssessmentsThisMonth,
      'totalAssessmentsToday': instance.totalAssessmentsToday,
      'totalAssessmentsThisMonthByOptometrist':
          instance.totalAssessmentsThisMonthByOptometrist,
      'totalAssessmentsTodayByOptometrist':
          instance.totalAssessmentsTodayByOptometrist,
    };
