import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_questionnaire/provider/patient_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_dashboard/presentation/provider/optometritian_report_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OptometritianReportQuestionnaireCard extends ConsumerWidget {
  const OptometritianReportQuestionnaireCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TriageUrgency urgency =
        ref.watch(optometricianReportProvider).calculateUrgency();
    List<Map<String, dynamic>> data = ref
        .watch(patientTriageQuestionnaireProvider)
        .questionnaireForReportPage;

    var remarksData = ref.watch(patientTriageQuestionnaireProvider).allRemarks;

    return Container(
      color: AppColor.white,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Assessment Questions",
            style: applyRobotoFont(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            itemCount: data.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var currentData = data[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentData['question'],
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  for (var i = 0; i < currentData['answer'].length; i++)
                    if (currentData['answer'][i] != "None of These")
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 2),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "\u2022  ",
                              style: applyRobotoFont(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.7),
                                  height: 1.5),
                            ),
                            Flexible(
                              child:
                                  currentData['answer'][i] == "Other symptoms"
                                      ? Text(
                                          currentData['answer'][i] +
                                              " - " +
                                              remarksData[index],
                                          softWrap: true,
                                          style: applyRobotoFont(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black,
                                          ),
                                        )
                                      : Text(
                                          currentData['answer'][i],
                                          softWrap: true,
                                          style: applyRobotoFont(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black,
                                          ),
                                        ),
                            ),
                          ],
                        ),
                      ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      thickness: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
            },
          ),
          const SizedBox(
            height: AppSize.ksheight,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Category",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: AppSize.ksheight,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                width: AppSize.width(context) * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: urgency == TriageUrgency.EMERGENCY
                      ? AppColor.red
                      : urgency == TriageUrgency.PRIORITY
                          ? AppColor.orange
                          : AppColor.green,
                  border: Border.all(
                    width: 1.5,
                    color: urgency == TriageUrgency.EMERGENCY
                        ? AppColor.red
                        : urgency == TriageUrgency.PRIORITY
                            ? AppColor.orange
                            : AppColor.green,
                  ),
                ),
                child: Center(
                  child: Text(
                    urgency == TriageUrgency.EMERGENCY
                        ? 'Urgent Consult'
                        : urgency == TriageUrgency.PRIORITY
                            ? 'Early Consult'
                            : 'Regular Consult',
                    style: applyRobotoFont(
                      fontSize: 12,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
