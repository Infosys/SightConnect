import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/care_plan_view_model_provider.dart';
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
      "Visit tertiaryCenter",
      "Visit Center of Excellence"
    ];
    final selectedOption = useState<String?>('');

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recommendation',
              style: TextStyle(
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
                    selectedOption.value = value;
                    data.setPatientInstruction(selectedOption.value!);
                    ref.read(carePlanViewModelProvider).saveCarePlan();
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
