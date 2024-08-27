import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/presentation/widgets/tumbling_e_report_card.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../../../main.dart';

class AssessmentAcuityScoreCard extends StatelessWidget {
  const AssessmentAcuityScoreCard({
    super.key,
    required this.visualAcuityBreifEntity,
  });
  final List<ObservationBriefEntity>? visualAcuityBreifEntity;

  @override
  Widget build(BuildContext context) {
    List<ObservationBriefEntity> shortDistance = visualAcuityBreifEntity!
        .where((element) => element.code == "Near")
        .toList();
    List<ObservationBriefEntity> longDistance = visualAcuityBreifEntity!
        .where((element) => element.code == "Distance")
        .toList();

    logger.d(
        "shortDistance : ${shortDistance.map((e) => e.toString())} \n longDistance : ${longDistance.map((e) => e.toString())}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Visual Acuity",
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: AppSize.km),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                "Short Distance Visual Acuity",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(16),
                itemCount: shortDistance.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(
                      left: AppSize.width(context) * 0.03,
                      top: AppSize.height(context) * 0.01,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.black.withOpacity(0.1),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            shortDistance[index].bodySite ?? "",
                            style: applyRobotoFont(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "${shortDistance[index].observationValue}",
                            style: applyRobotoFont(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: getColorBasedOnObservationValue(
                                shortDistance[index].observationValue,
                              ),
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              Text(
                "Long Distance Visual Acuity",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(16),
                itemCount: longDistance.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(
                      left: AppSize.width(context) * 0.03,
                      top: AppSize.height(context) * 0.01,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.black.withOpacity(0.1),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            longDistance[index].bodySite ?? "",
                            style: applyRobotoFont(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "${longDistance[index].observationValue}",
                            style: applyRobotoFont(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: getColorBasedOnObservationValue(
                                longDistance[index].observationValue,
                              ),
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
