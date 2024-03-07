import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/tumbling_e_report_card.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';

class AssessmentAcuityScoreCard extends StatelessWidget {
  const AssessmentAcuityScoreCard({
    super.key,
    required this.visualAcuityBreifEntity,
  });
  final List<ObservationBriefEntity>? visualAcuityBreifEntity;

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
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
        const SizedBox(height: AppSize.kmheight),
        Column(
          children: [
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: visualAcuityBreifEntity?.length ?? 0,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: isMobile ? 1.5 : 2.5,
              ),
              itemBuilder: (context, index) {
                final bodySite = visualAcuityBreifEntity?[index].bodySite;
                final eyeSite =
                    visualAcuityBreifEntity?[index].observationValue;
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: AppCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "$bodySite",
                          style: applyFiraSansFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: AppSize.ksheight),
                        Flexible(
                          child: Text(
                            "$eyeSite",
                            style: applyFiraSansFont(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: getColorBasedOnObservationValue(eyeSite),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        )
      ],
    );
  }
}
