import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessment_report_page.dart';
import 'package:eye_care_for_all/core/providers/patient_assesssment_and_test_provider_new.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/update_triage_alert_box.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentCards extends ConsumerWidget {
  final List<TriageReportBriefEntity> data;
  const AssessmentCards({
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (data.isEmpty) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Text(
            'No Data Found',
            style: applyRobotoFont(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColor.grey,
            ),
          ),
        ),
      );
    }
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        TriageReportBriefEntity currentData = data[index];
        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: getRequestPriorityColor(currentData.priority),
                      ),
                      child: Text(
                        getRequestPriorityText(currentData.priority),
                        style: applyRobotoFont(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    // Container(
                    //   padding: const EdgeInsets.all(4),
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(20),
                    //     color: AppColor.green.withOpacity(0.4),
                    //   ),
                    //   child: Text(
                    //     currentData.reportTag ?? "NA",
                    //     style: applyRobotoFont(
                    //       fontSize: 11,
                    //       fontWeight: FontWeight.w500,
                    //       color: AppColor.black,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentData.triageResultType ?? "NA",
                          style: applyRobotoFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          currentData.reportTag ?? "NA",
                          style: applyRobotoFont(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Test ID: ${currentData.triageResultID}',
                          style: applyRobotoFont(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.grey,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          currentData.triageResultStartDate?.formateDate ?? "",
                          style: applyRobotoFont(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  currentData.triageResultDescription ?? "",
                  softWrap: true,
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () async {
                        try {
                          final navigator = Navigator.of(context);
                          final reports = await ref
                              .read(patientAssessmentAndTestProvider)
                              .getTriageDetailedReport(
                                  currentData.triageResultID);
                          navigator.push(
                            MaterialPageRoute(
                              builder: (context) => PatientAssessmentReportPage(
                                assessmentDetailsReport: reports,
                              ),
                            ),
                          );
                        } catch (e) {
                          Fluttertoast.showToast(msg: "$e");
                        }
                      },
                      child: Text(
                        'View Report',
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.primary,
                        ),
                      ),
                    ),

                    const SizedBox(width: 24),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: ref
                              .watch(patientAssessmentAndTestProvider)
                              .isUpdateLoading
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                              ),
                            )
                          : TextButton.icon(
                              onPressed: currentData.isUpdateEnabled ?? false
                                  ? () async {
                                      final result = await ref
                                          .read(
                                              patientAssessmentAndTestProvider)
                                          .updateTriage(
                                              currentData.triageResultID);
                                      logger.f({result});
                                      if (result.isEmpty) {
                                        Fluttertoast.showToast(
                                            msg: "No data found");
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
                                    }
                                  : null,
                              label: Text(
                                'Update',
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: currentData.isUpdateEnabled ?? false
                                      ? AppColor.primary
                                      : AppColor.grey,
                                ),
                              ),
                              icon: Icon(
                                Icons.edit,
                                size: 16,
                                color: currentData.isUpdateEnabled ?? false
                                    ? AppColor.primary
                                    : AppColor.grey,
                              ),
                            ),
                    ),

                    // InkWell(
                    //   onTap: () {
                    //     Navigator.of(context).push(
                    //       MaterialPageRoute(
                    //         builder: (context) =>
                    //             const PatientTestTimelinePage(),
                    //       ),
                    //     );
                    //   },
                    //   child: Text(
                    //     'View Timeline',
                    //     style: applyRobotoFont(
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w500,
                    //       color: AppColor.primary,
                    //     ),
                    //   ),
                    // ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

String getRequestPriorityText(RequestPriority? priority) {
  switch (priority) {
    case RequestPriority.URGENT:
      return "Urgent Consult";
    case RequestPriority.ROUTINE:
      return "Routine Checkup";
    case RequestPriority.ASAP:
      return "ASAP";
    case RequestPriority.STAT:
      return "STAT";
    default:
      return "";
  }
}

Color getRequestPriorityColor(RequestPriority? priority) {
  switch (priority) {
    case RequestPriority.URGENT:
      return AppColor.orange;
    case RequestPriority.ROUTINE:
      return AppColor.green;
    case RequestPriority.ASAP:
      return AppColor.red;
    case RequestPriority.STAT:
      return AppColor.red;
    default:
      return AppColor.grey;
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
            width: AppSize.kmwidth,
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
