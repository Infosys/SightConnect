/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

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
