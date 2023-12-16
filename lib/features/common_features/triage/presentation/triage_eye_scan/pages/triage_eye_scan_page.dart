import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:flutter/material.dart';

import 'triage_eye_scan_instructions_page.dart';

class TriageEyeScanPage extends StatelessWidget {
  const TriageEyeScanPage({super.key, this.mode = TriageMode.POST});
  final TriageMode mode;
  @override
  Widget build(BuildContext context) {
    return TriageEyeScanInstructions(
      mode: mode,
    );
  }
}
