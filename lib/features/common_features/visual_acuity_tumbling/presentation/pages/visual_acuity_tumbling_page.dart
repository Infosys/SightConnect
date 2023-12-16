import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_instructional_video_page.dart';
import 'package:flutter/material.dart';

class VisualAcuityTumblingPage extends StatelessWidget {
  const VisualAcuityTumblingPage({super.key, this.mode = TriageMode.POST});

  final TriageMode mode;

  @override
  Widget build(BuildContext context) {
    return VisualAcuityInstructionalVideoPage(mode: mode);
  }
}
