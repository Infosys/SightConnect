import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/assessment_list.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/custom_chip.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AssessmentCard extends StatelessWidget {
  const AssessmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.kmpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Assessments",
            style: applyFiraSansFont(fontSize: 18, fontWeight: FontWeight.w500,),
          ),
          const SizedBox(height: AppSize.klheight),
          const Row(
            children: [
              CustomChip(title: "All"),
              CustomChip(title: "Critical"),
              CustomChip(title: "IVR Assessments"),
            ],
          ),
          const SizedBox(height: AppSize.kmheight),
          const AssessmentList(),
        ],
      ),
    );
  }
}
