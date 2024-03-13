import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/care_plan_provider.dart';

class PreliminaryAssessmentCarePlan extends HookConsumerWidget {
  const PreliminaryAssessmentCarePlan({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(carePlanProvider);
    final options = [
      "Visit Primary Center",
      "Visit Secondary Center",
      "Visit Tertiary Center",
      "Visit Center of Excellence"
    ];
    final selectedOption = useState<String?>('');
    final loc = context.loc!;
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
            Text(
              loc.vtRecommendation,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: options.map((option) {
                return RadioListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  visualDensity: VisualDensity.compact,
                  title: Text(option),
                  value: option,
                  groupValue: selectedOption.value,
                  onChanged: (value) {
                    ref
                        .read(preliminaryAssessmentHelperProvider)
                        .setRecommendationSelected();
                    selectedOption.value = value;
                    data.setPatientInstruction(selectedOption.value!);

                    // ref.read(carePlanViewModelProvider).saveCarePlan();
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
