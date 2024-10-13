/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessment_report_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/presentation/widgets/update_triage_alert_box.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/patient_assesssment_and_test_provider_new.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientSelfTestReports extends ConsumerStatefulWidget {
  const PatientSelfTestReports({
    required this.encounterId,
    super.key,
  });

  final int encounterId;

  @override
  ConsumerState<PatientSelfTestReports> createState() =>
      _PatientSelfTestReportsState();
}

class _PatientSelfTestReportsState
    extends ConsumerState<PatientSelfTestReports> {
  final scrollController = ScrollController();
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      ref
          .read(patientAssessmentAndTestProvider)
          .getTriageReportByEncounterId(widget.encounterId, true);

      _loadData();
    });
  }

  _loadData() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        logger.d("Self Test Report Load More");
        ref
            .read(patientAssessmentAndTestProvider)
            .getTriageReportByEncounterId(widget.encounterId, true);
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    var model = ref.watch(patientAssessmentAndTestProvider);

    return Scaffold(
      body: ListView.builder(
        controller: scrollController,
        padding: const EdgeInsets.all(16),
        itemCount: model.selfTestReportList.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index < model.selfTestReportList.length) {
            final currentData = model.selfTestReportList[index];
            logger.d(currentData.toString());

            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                AutoSizeText(
                                  '${loc.patientRID}: ${currentData.triageResultID}',
                                  minFontSize: 12,
                                  maxLines: 1,
                                  style: applyFiraSansFont(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Visibility(
                                  visible: currentData.status ==
                                      DiagnosticReportStatus.FINAL,
                                  child: AutoSizeText(
                                    currentData.status?.name ?? "",
                                    minFontSize: 10,
                                    maxLines: 1,
                                    style: applyFiraSansFont(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: _getChipColor(currentData.status!),
                                    ),
                                  ),
                                ),
                              ],
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
                              color: AppColor.darkOrange,
                            ),
                            child: Text(
                              loc.patientSelfTestReport,
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
                    style: applyRobotoFont(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Consumer(
                    builder: (context, ref, child) {
                      final model = ref.watch(patientAssessmentAndTestProvider);
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: currentData.isUpdateEnabled!,
                            child: Flexible(
                              child: TextButton(
                                onPressed: () async {
                                  try {
                                    model.currentTriageReportId =
                                        currentData.triageResultID;
                                    final result = await ref
                                        .read(patientAssessmentAndTestProvider)
                                        .updateTriage(
                                            currentData.triageResultID);
                                    logger.d(
                                        " update data is : ${(result).toString()}");
                                    if (result.isEmpty) {
                                      return;
                                    }
                                    if (context.mounted) {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return UpdateTriageAlertBox(
                                            result: result,
                                            diagnosticReportID:
                                                currentData.triageResultID,
                                          );
                                        },
                                      );
                                    }
                                  } catch (e) {
                                    Fluttertoast.showToast(
                                        msg: loc.patientUpdateUnavailable);
                                  }
                                },
                                child: Text(
                                  loc.updateButton,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: applyRobotoFont(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.primary),
                                ),
                              ),
                            ),
                          ),
                          (model.isReportLoading &&
                                  model.currentTriageReportId ==
                                      currentData.triageResultID)
                              ? const SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: CircularProgressIndicator.adaptive(),
                                )
                              : Flexible(
                                  child: TextButton(
                                    onPressed: () async {
                                      try {
                                        model.currentTriageReportId =
                                            currentData.triageResultID;
                                        final navigator = Navigator.of(context);
                                        final reports = await ref
                                            .read(
                                                patientAssessmentAndTestProvider)
                                            .getTriageDetailedReport(
                                              currentData.triageResultID,
                                            );
                                        navigator.push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PatientAssessmentReportPage(
                                              assessmentDetailsReport: reports,
                                            ),
                                          ),
                                        );
                                      } catch (e) {
                                        Fluttertoast.showToast(
                                            msg: loc.patientReportUnavailable);
                                      }
                                    },
                                    child: Text(
                                      loc.viewReportButton,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: applyRobotoFont(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.primary,
                                      ),
                                    ),
                                  ),
                                ),
                        ],
                      );
                    },
                  )
                ],
              ),
            );
          } else {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: model.hasSelfTestReportMore
                    ? const CircularProgressIndicator.adaptive()
                    : Text(loc.patientNoMoreData),
              ),
            );
          }
        },
      ),
    );
  }
}

String getSeverityText(Severity? severity, BuildContext context) {
  final loc = context.loc!;
  switch (severity) {
    case Severity.ABNORMAL:
      return loc.assessmentCardUrgentConsult;
    case Severity.LOW:
      return loc.assessmentCardRoutineCheckUp;
    case Severity.HIGH:
      return loc.assessmentCardEarlyCheckUp;
    default:
      return "";
  }
}

class UpdateTriageAlertBoxListOptoion extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color subtitlecolor;
  final String chipText;
  final Color chipColor;
  final Function() onPressed;

  const UpdateTriageAlertBoxListOptoion({
    super.key,
    required this.title,
    required this.subtitle,
    required this.subtitlecolor,
    required this.chipText,
    required this.chipColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      onTap: onPressed,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.black,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            width: AppSize.km,
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: chipColor,
            ),
            child: Text(
              chipText,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: AppColor.white,
              ),
            ),
          )
        ],
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: subtitlecolor,
        ),
      ),
    );
  }
}

_getChipColor(DiagnosticReportStatus status) {
  switch (status) {
    case DiagnosticReportStatus.CANCELLED:
      return AppColor.red;
    case DiagnosticReportStatus.AMENDED:
      return AppColor.darkOrange;
    case DiagnosticReportStatus.FINAL:
      return AppColor.green;
    default:
      return AppColor.grey;
  }
}
