import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AssessementCarePlanCard extends StatelessWidget {
  const AssessementCarePlanCard({
    super.key,
    required this.carePlan,
    required this.title,
    this.showCarePlan = true,
  });
  final List<CarePlan>? carePlan;
  final bool showCarePlan;
  final String title;

  @override
  Widget build(BuildContext context) {
    final data = carePlan?.first.goals?.first.outcomes ?? [];
    final data2 = carePlan?.first.activities ?? [];
    if (data.isEmpty || data2.isEmpty) {
      return const SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: AppSize.kmheight),
        SizedBox(
          child: Wrap(
            children: () {
              if (showCarePlan) {
                return [
                  ...data.map(
                    (e) => Container(
                      width: AppSize.width(context) * 0.4,
                      height: AppSize.width(context) * 0.15,
                      margin: const EdgeInsets.only(right: 8),
                      child: AppCard(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.all(AppSize.kspadding / 2),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.green,
                              ),
                              child: const Icon(
                                Icons.check,
                                size: 10,
                                color: AppColor.white,
                              ),
                            ),
                            const SizedBox(width: AppSize.ksheight),
                            Flexible(
                              child: Text(
                                e.goalOutcome?.name
                                        .capitalizeFirstOfEach()
                                        .replaceAll("_", " ") ??
                                    "",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: applyFiraSansFont(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ];
              } else {
                return [
                  ...data2.map(
                    (e) => AppCard(
                      padding: AppSize.kmpadding,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.local_hospital),
                          const SizedBox(width: 8),
                          Text(
                            e.plannedActivityReference?.serviceRequest
                                    ?.patientInstruction
                                    .capitalizeFirstOfEach()
                                    .replaceAll("_", " ") ??
                                "",
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ];
              }
            }(),
          ),
        ),
      ],
    );
  }
}
