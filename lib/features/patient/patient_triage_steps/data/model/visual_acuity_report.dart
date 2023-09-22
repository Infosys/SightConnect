import 'package:freezed_annotation/freezed_annotation.dart';
import '../enums/triage_enums.dart';

part 'visual_acuity_report.freezed.dart';
part 'visual_acuity_report.g.dart';

@freezed
class VisualAcuityReport with _$VisualAcuityReport {
  const factory VisualAcuityReport({
    required int id,
    double? logMarRNE,
    double? logMarLNE,
    double? logMarRDE,
    double? logMarLDE,
    double? logMarRNC,
    double? logMarLNC,
    double? logMarRDC,
    double? logMarLDC,
    String? leftEyeRemark,
    String? rightEyeRemark,
    @Default(EyeCondition.NORMAL) EyeCondition leftEyeCondition,
    @Default(EyeCondition.NORMAL) EyeCondition rightEyeCondition,
    String? remarks,
  }) = _VisualAcuityReport;

  factory VisualAcuityReport.fromJson(Map<String, Object?> json) =>
      _$VisualAcuityReportFromJson(json);
}
