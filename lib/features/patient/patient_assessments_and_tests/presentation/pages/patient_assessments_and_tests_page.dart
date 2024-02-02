import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
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
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(
        title: Text(loc.appDrawerAssessmentsAndTests),
      ),
      body: Container(
        height: AppSize.height(context),
        width: AppSize.width(context),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.scaffoldBg,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: AppSize.klheight * 5),
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
                    hasMore: model.hasMore,
                    onRefresh: () async {
                      try {
                        await model.refeshReports();
                      } catch (e) {
                        Fluttertoast.showToast(msg: "Error in fetching report");
                      }
                    },
                    onLoadMore: () async {
                      try {
                        await model.incrementPage();
                      } catch (e) {
                        Fluttertoast.showToast(msg: "Error in fetching report");
                      }
                    },
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
                          builder: (context) =>
                              PatientSelfAndClinicalReportPage(
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

  _content(
      {required BuildContext context,
      required List<TriageReportBriefEntity> data,
      required bool hasMore,
      required Function(TriageReportBriefEntity) onViewReport,
      required Function(TriageReportBriefEntity) onViewHistory,
      required bool isLoading,
      required int currentReportId,
      required Function onLoadMore,
      required Function() onRefresh}) {
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
      child: RefreshIndicator(
        onRefresh: () async {
          onRefresh();
        },
        child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: data.length + 1,
          itemBuilder: (context, index) {
            if (index == data.length) {
              if (hasMore) {
                onLoadMore();
              }
              return hasMore
                  ? Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 20,
                        width: 20,
                        child: const CircularProgressIndicator(),
                      ),
                    )
                  : Center(
                      child: Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text("No more Reports")));
            }
            final currentData = data[index];

            return Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'EID: ${currentData.encounterId}',
                              minFontSize: 12,
                              maxLines: 1,
                              style: applyFiraSansFont(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              currentData.triageResultStartDate
                                      ?.formatDateTimeMonthName ??
                                  "",
                              style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
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
                              borderRadius: BorderRadius.circular(16),
                              color: _checkColorMapper(
                                currentData.encounterStatus,
                              ),
                            ),
                            child: Text(
                              _formatStatus(currentData.encounterStatus?.name),
                              style: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    currentData.triageResultDescription ?? "",
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: applyRobotoFont(fontSize: 14),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () => onViewHistory(currentData),
                        child: Text(context.loc!.viewHistoryButton),
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
            );
          },
        ),
      ),
    );
  }

  _formatStatus(String? status) {
    // check for null and check if underscore present then take first else retura
    if (status == null) {
      return "";
    }
    if (status.contains("_")) {
      return ('${status.split("_")[0]} ${status.split("_")[1]}')
          .toLowerCase()
          .capitalize();
    }
    return status.toLowerCase().capitalize();
  }
}
