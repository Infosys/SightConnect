import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_eye_scan/presentation/pages/pages/update_triage_eye_scan_page.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_quessionaire/presentation/pages/update_questionnaire_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_tumbling_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/provider/triage_update_report_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/assements_cards.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpdateTriageAlertBox extends HookConsumerWidget {
  const UpdateTriageAlertBox({
    required this.result,
    required this.diagnosticReportID,
    super.key,
  });
  final List<UpdateTriageReportAlertBoxEntity> result;
  final int diagnosticReportID;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigator = Navigator.of(context);

    if (result.isEmpty) {
      return const SizedBox();
    }

    return BlurDialogBox(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Select Steps to Redo'),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.close),
          )
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: result
            .map(
              (e) => UpdateTriageAlertBoxListOptoion(
                title: e.title,
                subtitle: e.subtitle,
                subtitlecolor: e.subtitlecolor,
                chipText: e.chipText,
                chipColor: e.chipColor,
                onPressed: () {
                  switch (e.testType) {
                    case TestType.QUESTIONNAIRE:
                      navigator.push(
                        MaterialPageRoute(
                          builder: (context) {
                            return UpdateTriageQuestionnairePage(
                              reportId: diagnosticReportID,
                            );
                          },
                        ),
                      );
                      break;
                    case TestType.OBSERVATION:
                      ref.read(globalProvider).setVAMode =
                          VisionAcuityMode.UPDATE;
                      ref.read(tumblingTestProvider).setDiagnosticReportId =
                          diagnosticReportID;
                      navigator.push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const VisualAcuityTumblingPage(),
                        ),
                      );
                      break;
                    case TestType.IMAGE:
                      navigator.push(
                        MaterialPageRoute(
                          builder: (context) => const UpdateTriageEyeScanPage(),
                        ),
                      );
                      break;
                  }
                },
              ),
            )
            .toList(),
      ),
      actions: const [],
    );
  }
}
