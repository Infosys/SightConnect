import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_triage_report/presentation/provider/optometritian_report_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OptometritianReportQuestionnaireCard extends ConsumerWidget {
  final List<Map<String, dynamic>> data;
  final TriageUrgency urgency;
  const OptometritianReportQuestionnaireCard({
    super.key,
    required this.data,
    required this.urgency,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var remarksData = "";

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
                            child: Text(
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
          remarksData.isEmpty
              ? const SizedBox()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Other Symptoms",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight,
                    ),
                    Row(
                      children: [
                        Text(
                          "\u2022  ",
                          style: applyRobotoFont(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.7),
                              height: 1.5),
                        ),
                        Text(
                          remarksData,
                          softWrap: true,
                          style: applyRobotoFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(
                        thickness: 1.5,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight,
                    ),
                  ],
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
                  color: getColorOnUrgency(urgency),
                  border: Border.all(
                    width: 1.5,
                    color: getColorOnUrgency(urgency),
                  ),
                ),
                child: Center(
                  child: Text(
                    getUrgencyText(urgency),
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
