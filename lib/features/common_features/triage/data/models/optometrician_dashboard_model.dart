import 'package:freezed_annotation/freezed_annotation.dart';

part 'optometrician_dashboard_model.freezed.dart';
part 'optometrician_dashboard_model.g.dart';

@freezed
class OptometricianDashboardModel with _$OptometricianDashboardModel {
  const factory OptometricianDashboardModel(
      {int? totalAssessmentsThisMonth,
      int? totalAssessmentsToday,
      int? totalAssessmentsThisMonthByOptometrist,
      int? totalAssessmentsTodayByOptometrist}) = _OptometricianDashboardModel;

  factory OptometricianDashboardModel.fromJson(Map<String, dynamic> json) =>
      _$OptometricianDashboardModelFromJson(json);
}
