import 'package:eye_care_for_all/apps/sightconnect/common/update_triage/update_triage_eye_scan/presentation/pages/update_triage_eye_scan_instructions_page.dart';
import 'package:flutter/material.dart';

class UpdateTriageEyeScanPage extends StatelessWidget {
  const UpdateTriageEyeScanPage({super.key, required this.diagnosticReportId});
  final int diagnosticReportId;

  @override
  Widget build(BuildContext context) {
    return UpdateTriageEyeScanInstructions(
      diagnosticReportId: diagnosticReportId,
    );
  }
}
