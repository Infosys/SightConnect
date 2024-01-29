import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/optometrician_triage_response.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/optometrician_triage_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_triage/presentation/providers/optometritian_report_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OptometritianReportQuestionnaireCard extends ConsumerWidget {
  const OptometritianReportQuestionnaireCard({required this.report, super.key});

  final OptometristTriageResponse report;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(optometritianReportProvider);

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
          _QuestionnaireList(
            questionnaires: report.questionResponse ?? [],
          ),
          report.questionnaireRemarks == ""
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
                          report.questionnaireRemarks!,
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
                  fontSize: 16,
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
                  color: model.getColorOnUrgency(report.questionnaireUrgency!),
                  border: Border.all(
                    width: 1.5,
                    color:
                        model.getColorOnUrgency(report.questionnaireUrgency!),
                  ),
                ),
                child: Center(
                  child: Text(
                    model.getUrgencyText(report.questionnaireUrgency!),
                    style: applyRobotoFont(
                      fontSize: 16,
                      color: AppColor.white,
                      fontWeight: FontWeight.w600,
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

class _QuestionnaireList extends ConsumerWidget {
  const _QuestionnaireList({
    required this.questionnaires,
    super.key,
  });
  final List<QuestionResponse> questionnaires;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(optometristQuestionnaireProvider(questionnaires));

    if (model.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return ListView.builder(
      itemCount: model.output.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final question = model.output[index];

        return index > 0
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "",
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
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
              )
            : const SizedBox();
      },
    );
  }
}
