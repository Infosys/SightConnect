/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/update_triage/update_triage_eye_scan/presentation/pages/update_triage_eye_scan_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/update_triage/update_triage_quessionaire/presentation/pages/update_questionnaire_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/visual_acuity/features/visual_acuity_tumbling/presentation/pages/visual_acuity_tumbling_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/presentation/provider/patient_assessment_update_data_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/presentation/widgets/patient_self_test_reports.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/triage/presentation/providers/triage_provider.dart';
import '../../../../../helpers/providers/global_visual_acuity_provider.dart';

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
    final loc = context.loc!;

    if (result.isEmpty) {
      return BlurDialogBox(
        title: const Text(''),
        content: const Text('Not Available at this moment'),
        actions: [
          TextButton(
            onPressed: () {
              navigator.pop();
            },
            child: const Text('OK'),
          )
        ],
      );
    }

    return BlurDialogBox(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(child: Text(loc.triageAlerDialogBoxTitle)),
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
                      navigator.pushReplacement(
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
                      ref.read(resetProvider).reset();
                      ref
                          .read(globalVisualAcuityProvider)
                          .setDiagnosticReportID(diagnosticReportID);
                      // ref.read(distanceTumblingTestProvider).setDiagnosticReportId =
                      //     diagnosticReportID;
                      navigator.pushReplacement(
                        MaterialPageRoute(
                          builder: (context) =>
                              const VisualAcuityTumblingPage(),
                        ),
                      );
                      break;
                    case TestType.IMAGE:
                      navigator.pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => UpdateTriageEyeScanPage(
                            diagnosticReportId: diagnosticReportID,
                          ),
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
