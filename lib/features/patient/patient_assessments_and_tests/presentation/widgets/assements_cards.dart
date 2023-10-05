import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/fake_data_source.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessment_report_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AssessmentCards extends StatelessWidget {
  const AssessmentCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        child: Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              var currentData = data[index];
              return SizedBox(
                height: AppSize.height(context) * 0.23,
                child: Card(
                  elevation: 2,
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppSize.width(context) * 0.01,
                                ),
                                decoration: BoxDecoration(
                                  color: currentData['checkupType'] ==
                                          "Routine Checkup"
                                      ? AppColor.green
                                      : AppColor.orange,
                                ),
                                child: Text(
                                  currentData['checkupType'],
                                  style: applyRobotoFont(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.white),
                                )),
                            const Spacer(),
                            Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppSize.width(context) * 0.01,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: currentData['reminderMessage'] ==
                                            "Post OPS Care"
                                        ? AppColor.green.withOpacity(0.6)
                                        : currentData['reminderMessage'] ==
                                                "3rd Reminder Sent"
                                            ? AppColor.red.withOpacity(0.6)
                                            : AppColor.green.withOpacity(0.6)),
                                child: Text(
                                  currentData['reminderMessage'],
                                  style: applyRobotoFont(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.black),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              currentData['image'],
                              height: 25,
                              width: 25,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              currentData['name'],
                              style: applyRobotoFont(
                                  fontSize: 14, fontWeight: FontWeight.w400),
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
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  currentData['appointmentType'],
                                  style: applyRobotoFont(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.grey),
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
                                      color: AppColor.grey),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  '19 Sep 2023',
                                  style: applyRobotoFont(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data[index]['MessageText'],
                          softWrap: true,
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          PatientAssessmentReportPage(
                                            index: index,
                                          )));
                                },
                                child: Text(
                                  'View Report',
                                  style: applyRobotoFont(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.primary),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  'View Timeline',
                                  style: applyRobotoFont(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.primary),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
