import 'package:eye_care_for_all/core/providers/global_visual_acuity_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_instructional_video_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'distance_visual_acuity_instructional_video_page.dart';

class DistanceVisualAcuityTumblingPage extends ConsumerWidget {
  const DistanceVisualAcuityTumblingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(globalVisualAcuityProvider).setShortDistanceTest(false);
    return const DistanceVisualAcuityInstructionalVideoPage();
  }
}
