// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'optometrician_dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OptometricianDashboardModelImpl _$$OptometricianDashboardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OptometricianDashboardModelImpl(
      totalAssessmentsThisMonth: json['totalAssessmentsThisMonth'] as int?,
      totalAssessmentsToday: json['totalAssessmentsToday'] as int?,
      totalAssessmentsThisMonthByOptometrist:
          json['totalAssessmentsThisMonthByOptometrist'] as int?,
      totalAssessmentsTodayByOptometrist:
          json['totalAssessmentsTodayByOptometrist'] as int?,
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
