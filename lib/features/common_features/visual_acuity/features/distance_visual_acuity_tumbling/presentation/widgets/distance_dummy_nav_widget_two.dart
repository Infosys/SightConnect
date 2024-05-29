import 'package:eye_care_for_all/features/common_features/visual_acuity/features/distance_visual_acuity_tumbling/presentation/providers/distance_visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity/features/distance_visual_acuity_tumbling/presentation/widgets/distance_visual_acuity_tumbling_test_left_eye_instruction.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DistanceDummyNavWidgetTwo extends ConsumerWidget {
  const DistanceDummyNavWidgetTwo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future.delayed(const Duration(milliseconds: 0), () {
      ref.read(distanceTumblingTestProvider).reset();
    });
    return const DistanceVisualAcuityTumblingLeftEyeInstruction();
  }
}
