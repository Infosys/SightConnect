// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'optometrician_dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OptometricianDashboardModel _$$_OptometricianDashboardModelFromJson(
        Map<String, dynamic> json) =>
    _$_OptometricianDashboardModel(
      totalAssessmentsThisMonth: json['totalAssessmentsThisMonth'] as int?,
      totalAssessmentsToday: json['totalAssessmentsToday'] as int?,
      totalAssessmentsThisMonthByOptometrist:
          json['totalAssessmentsThisMonthByOptometrist'] as int?,
      totalAssessmentsTodayByOptometrist:
          json['totalAssessmentsTodayByOptometrist'] as int?,
    );

Map<String, dynamic> _$$_OptometricianDashboardModelToJson(
        _$_OptometricianDashboardModel instance) =>
    <String, dynamic>{
      'totalAssessmentsThisMonth': instance.totalAssessmentsThisMonth,
      'totalAssessmentsToday': instance.totalAssessmentsToday,
      'totalAssessmentsThisMonthByOptometrist':
          instance.totalAssessmentsThisMonthByOptometrist,
      'totalAssessmentsTodayByOptometrist':
          instance.totalAssessmentsTodayByOptometrist,
    };
