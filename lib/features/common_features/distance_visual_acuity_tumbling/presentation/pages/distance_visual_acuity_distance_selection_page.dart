import 'package:eye_care_for_all/core/providers/global_visual_acuity_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../shared/widgets/custom_app_bar.dart';
import '../providers/distance_visual_acuity_test_provider.dart';
import '../widgets/distance_visual_acuity_tumbling_test_left_eye_instruction.dart';

class DistanceVisualAcuityDistanceSelectionPage extends ConsumerWidget {
  const DistanceVisualAcuityDistanceSelectionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CustomAppbar(
        centerTitle: true,
        title: Text("Visual Acuity Distance Selection"),
      ),
      body: Column(
        children: [
          Text(
            "Select the distance at which you want to perform the test",
            style: applyFiraSansFont(fontSize: 18),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(globalVisualAcuityProvider).setThreeMeter(false);
         
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) =>
                            const DistanceVisualAcuityTumblingLeftEyeInstruction(),
                      ),
                    );
                  },
                  child: Text(
                    "2 meters",
                    style: applyFiraSansFont(),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                   ref.read(globalVisualAcuityProvider).setThreeMeter(true);
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) =>
                            const DistanceVisualAcuityTumblingLeftEyeInstruction(),
                      ),
                    );
                  },
                  child: Text(
                    "3 meters",
                    style: applyFiraSansFont(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
