import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/patient_assesssment_and_test_provider_new.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/encounter_status.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessment_report_page.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/pages/patient_self_and_clinical_report_page.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/patient_dropdown_widget.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentsAndTestsPage extends StatelessWidget {
  const AssessmentsAndTestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;

    return Scaffold(
      appBar: CustomAppbar(
        title: Text(loc.appDrawerAssessmentsAndTests),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              children: [
                PatientDropDownWidget(),
              ],
            ),
            const SizedBox(height: 16),
            Consumer(
              builder: (context, ref, _) {
                final model = ref.watch(patientAssessmentAndTestProvider);

                if (model.isFinalReportLoading) {
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: AppSize.height(context) * 0.3),
                        const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ],
                    ),
                  );
                }
                return _content(
                  context: context,
                  currentReportId: model.currentTriageReportId,
                  data: model.finalReportList,
                  isLoading: model.isReportLoading,
                  onViewReport: (report) async {
                    final navigator = Navigator.of(context);
                    try {
                      model.currentTriageReportId = report.triageResultID;
                      final detailedReport = await model
                          .getTriageDetailedReport(report.triageResultID);
                      navigator.push(
                        MaterialPageRoute(
                          builder: (context) => PatientAssessmentReportPage(
                            assessmentDetailsReport: detailedReport,
                          ),
                        ),
                      );
                    } catch (e) {
                      Fluttertoast.showToast(msg: "Error in fetching report");
                    }
                  },
                  onViewHistory: (report) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PatientSelfAndClinicalReportPage(
                          encounterId: report.encounterId,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  _checkColorMapper(EncounterStatus? encounterStatus) {
    switch (encounterStatus) {
      case EncounterStatus.IN_PROGRESS:
        return AppColor.green;
      case EncounterStatus.CANCELLED:
        return AppColor.grey;
      default:
        return AppColor.grey;
    }
  }

  _content({
    required BuildContext context,
    required List<TriageReportBriefEntity> data,
    required Function(TriageReportBriefEntity) onViewReport,
    required Function(TriageReportBriefEntity) onViewHistory,
    required bool isLoading,
    required int currentReportId,
  }) {
    if (data.isEmpty) {
      return Expanded(
        child: Center(
          child: Text(
            context.loc!.noPreviewAvailable,
            style: applyRobotoFont(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          final currentData = data[index];
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: _checkColorMapper(
                                currentData.encounterStatus,
                              ),
                            ),
                            child: Text(
                              currentData.encounterStatus?.name ?? "",
                              style: applyRobotoFont(
                                fontSize: 10,
                                color: AppColor.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'EID: ${currentData.encounterId}',
                              style: applyRobotoFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColor.grey,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              currentData.triageResultStartDate?.formateDate ??
                                  "",
                              style: applyRobotoFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColor.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    currentData.triageResultDescription ?? "",
                    softWrap: true,
                    style: applyRobotoFont(fontSize: 14),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () => onViewHistory(currentData),
                        child: const Text("View History"),
                      ),
                      (isLoading &&
                              currentReportId == currentData.triageResultID)
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(),
                            )
                          : TextButton(
                              onPressed: () => onViewReport(currentData),
                              child: Text(context.loc!.viewReportButton),
                            )
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: data.length,
      ),
    );
  }
}
