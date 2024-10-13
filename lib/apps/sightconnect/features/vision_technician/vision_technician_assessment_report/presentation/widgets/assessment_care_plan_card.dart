/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';

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
    final isMobile = Responsive.isMobile(context);

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
        const SizedBox(height: AppSize.km),
        () {
          if (showCarePlan) {
            if (carePlan == null ||
                carePlan!.isEmpty ||
                carePlan!.first.goals == null ||
                carePlan!.first.goals!.isEmpty ||
                carePlan!.first.goals!.first.outcomes == null ||
                carePlan!.first.goals!.first.outcomes!.isEmpty) {
              return const Text(
                "No Prescription available",
              );
            }
            final outcomes = carePlan!.first.goals!.first.outcomes!;

            return Wrap(
              runSpacing: 8,
              children: [
                ...outcomes.map(
                  (e) {
                    return Container(
                      width: isMobile
                          ? AppSize.width(context) * 0.4
                          : AppSize.width(context) * 0.3,
                      height: isMobile
                          ? AppSize.width(context) * 0.15
                          : AppSize.width(context) * 0.1,
                      margin: EdgeInsets.only(right: isMobile ? 8 : 16),
                      child: AppCard(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: isMobile
                                  ? const EdgeInsets.all(AppSize.ks / 2)
                                  : const EdgeInsets.all(AppSize.ks - 2),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.green,
                              ),
                              child: Icon(
                                Icons.check,
                                size: isMobile ? 10 : 18,
                                color: AppColor.white,
                              ),
                            ),
                            isMobile
                                ? const SizedBox(width: AppSize.ks)
                                : const SizedBox(width: AppSize.km),
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
                    );
                  },
                )
              ],
            );
          } else {
            if (carePlan == null ||
                carePlan!.isEmpty ||
                carePlan!.first.activities == null ||
                carePlan!.first.activities!.isEmpty) {
              return const Text(
                "No Recommended Center Type available",
              );
            }
            final activites = carePlan!.first.activities!;
            return Wrap(
              runSpacing: 8,
              children: [
                ...activites.map(
                  (e) => AppCard(
                    padding: AppSize.km,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.local_hospital_outlined),
                        const SizedBox(width: 8),
                        Text(
                          e.plannedActivityReference?.serviceRequest
                                  ?.patientInstruction
                                  .formatTitle()
                                  .capitalizeFirstOfEach() ??
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
              ],
            );
          }
        }(),
      ],
    );
  }
}
