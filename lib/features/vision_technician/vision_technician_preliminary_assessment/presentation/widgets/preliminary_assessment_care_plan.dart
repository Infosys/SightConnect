import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
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
    return Card(
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
