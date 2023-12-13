import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessment_report_page.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/pages/patient_test_timeline_page.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentCards extends ConsumerWidget {
  final List<TriageDetailedReportModel> data;
  const AssessmentCards({
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        var report = data[index];
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
                        color: currentData['checkupType'] == "Routine Checkup"
                            ? AppColor.green
                            : AppColor.orange,
                      ),
                      child: Text(
                        currentData['checkupType'],
                        style: applyRobotoFont(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: currentData['reminderMessage'] == "Post OPS Care"
                            ? AppColor.green.withOpacity(0.6)
                            : currentData['reminderMessage'] ==
                                    "3rd Reminder Sent"
                                ? AppColor.red.withOpacity(0.4)
                                : AppColor.green.withOpacity(0.4),
                      ),
                      child: Text(
                        currentData['reminderMessage'],
                        style: applyRobotoFont(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: AppColor.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      currentData['image'],
                      height: 25,
                      width: 25,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      currentData['name'],
                      style: applyRobotoFont(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Eye Assessment',
                          style: applyRobotoFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          currentData['appointmentType'],
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
                          'Test ID: AT 010101',
                          style: applyRobotoFont(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.grey,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '19 Sep 2023',
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
                  currentData['MessageText'],
                  softWrap: true,
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PatientAssessmentReportPage(
                              index: index,
                            ),
                          ),
                        );
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
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const PatientTestTimelinePage(),
                          ),
                        );
                      },
                      child: Text(
                        'View Timeline',
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.primary,
                        ),
                      ),
                    ),
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
