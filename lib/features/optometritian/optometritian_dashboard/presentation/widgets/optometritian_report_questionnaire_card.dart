import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OptometritianReportQuestionnaireCard extends ConsumerWidget {
  const OptometritianReportQuestionnaireCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    QuestionnaireUrgency urgency =
        ref.watch(triageUrgencyRepositoryProvider).questionnaireUrgency();
    List<Map<String, dynamic>> data =
        ref.watch(triageQuestionnaireProvider).questionnaireForReportPage;

    var remarksData = ref.watch(triageQuestionnaireProvider).allRemarks;

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
                    if (currentData['answer'][i] != "None of these")
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
                  color: urgency == QuestionnaireUrgency.EMERGENCY
                      ? AppColor.red
                      : urgency == QuestionnaireUrgency.PRIORITY
                          ? AppColor.orange
                          : AppColor.green,
                  border: Border.all(
                    width: 1.5,
                    color: urgency == QuestionnaireUrgency.EMERGENCY
                        ? AppColor.red
                        : urgency == QuestionnaireUrgency.PRIORITY
                            ? AppColor.orange
                            : AppColor.green,
                  ),
                ),
                child: Center(
                  child: Text(
                    urgency == QuestionnaireUrgency.EMERGENCY
                        ? 'Urgent Consult'
                        : urgency == QuestionnaireUrgency.PRIORITY
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
