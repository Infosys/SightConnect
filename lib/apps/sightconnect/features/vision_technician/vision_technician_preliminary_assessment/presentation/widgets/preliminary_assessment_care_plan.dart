import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/patient_instruction.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
// import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/care_plan_provider.dart';

class PreliminaryAssessmentCarePlan extends HookConsumerWidget {
  const PreliminaryAssessmentCarePlan({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(carePlanProvider);
    final isMobile = Responsive.isMobile(context);

    // final loc = context.loc!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSize.km),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.km),
        boxShadow: applycustomShadow(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              // loc.vtRecommendation,
              "Vision Center Type",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              runSpacing: 10,
              children: model.availableInstruction.map((option) {
                return SizedBox(
                  width: isMobile
                      ? AppSize.width(context) * 0.3
                      : AppSize.width(context) * 0.3,
                  child: RadioListTile<PatientInstruction>(
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    visualDensity: VisualDensity.compact,
                    title: Text(visionCenterMappers(option)),
                    value: option,
                    groupValue: model.patientInstruction,
                    onChanged: (value) {
                      ref
                          .read(preliminaryAssessmentHelperProvider)
                          .setRecommendationSelected();

                      model.setPatientInstruction(value!);
                    },
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  visionCenterMappers(PatientInstruction option) {
    return switch (option) {
      PatientInstruction.VISIT_PRIMARY_CLINIC => "Primary Center",
      PatientInstruction.VISIT_SECONDARY_CLINIC => "Secondary Center",
      PatientInstruction.VISIT_TERTIARY_CLINIC => "Tertiary Center",
      PatientInstruction.VISIT_COE => "Center of Excellence",
      PatientInstruction.VISIT_AS_PER_CONSULT => "Center Consulted"
    };
  }
}
