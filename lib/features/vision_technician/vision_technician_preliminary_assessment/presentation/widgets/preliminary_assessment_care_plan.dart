import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/source/vt_care_plan_remote_source.dart';

class PreliminaryAssessmentCarePlan extends HookConsumerWidget {
  const PreliminaryAssessmentCarePlan({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {        

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
