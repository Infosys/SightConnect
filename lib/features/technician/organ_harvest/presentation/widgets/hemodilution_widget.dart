import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/oh_main_header.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_segment_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/organ_harvest_provider.dart';

class HemodilutionWidget extends StatelessWidget {
  const HemodilutionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const OHMainHeader(
            title: "Hemodilution Test",
          ),
          const SizedBox(height: 16),
          AppCard(
            title:
                "Did the donor receive an infusion or transfusion prior to providing the sample for collection?",
            titleBottomSize: 16,
            margin: null,
            child: AppSegmentButton(
              items: const ["Yes", "No"],
              onSelected: (value) {},
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Consumer(
                builder: (context, ref, child) {
                  return ElevatedButton(
                    onPressed: () {
                      final provider = ref.read(organHarvestProvider);
                      provider.setStep(2);
                      provider.setCompleted(true);
                    },
                    child: const Text("Submit"),
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
