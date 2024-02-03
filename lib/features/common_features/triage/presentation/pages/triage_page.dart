import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_db_helper.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_scan_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/pages/triage_questionnaire_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_tumbling_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import '../../../visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';

class TriagePage extends ConsumerStatefulWidget {
  const TriagePage({super.key});

  @override
  ConsumerState<TriagePage> createState() => _TriagePageState();
}

class _TriagePageState extends ConsumerState<TriagePage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final loc = context.loc!;
      try {
        await ref.read(accessibilityProvider).setBrightness(80.0);
        Fluttertoast.showToast(msg: loc.eyeAssessmentBrightnessLabel);
      } catch (e) {
        Fluttertoast.showToast(
          msg: loc.eyeAssessmentBrightnessError,
        );
      }
    });
    MatomoTracker.instance.trackEvent(
        eventInfo: EventInfo(
            category: 'Triage',
            action: 'Triage Entered',
            name: 'Triage Entered'),
        dimensions: {
          'dimension1': '${PersistentAuthStateService.authState.activeRole}'
        });
  }

  @override
  void dispose() {
    MatomoTracker.instance.trackEvent(
        eventInfo: EventInfo(
          category: 'Triage',
          action: 'Triage Exited',
          name: 'Triage Exited',
        ),
        dimensions: {
          'dimension1': '${PersistentAuthStateService.authState.activeRole}'
        });

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var currentStep = ref.watch(triageStepperProvider).currentStep;
    final loc = context.loc!;

    return ref.watch(getTriageProvider).when(
      data: (data) {
        switch (currentStep) {
          case 0:
            return TriageQuestionnairePage(
              questionnaireSections:
                  data.questionnaire?.questionnaireItem ?? [],
            );
          case 1:
            ref.read(globalProvider).setVAMode = VisionAcuityMode.TRIAGE;
            return const VisualAcuityTumblingPage();
          case 2:
            return const TriageEyeScanPage();
          default:
            return TriageQuestionnairePage(
              questionnaireSections:
                  data.questionnaire?.questionnaireItem ?? [],
            );
        }
      },
      error: (error, stackTrace) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(error.toString()),
                ),
                const SizedBox(
                  height: AppSize.klheight,
                ),
                TextButton.icon(
                  onPressed: () async {
                    await TriageDBHelper().discardLocalTriageEntries();
                    ref.invalidate(getTriageProvider);
                  },
                  icon: const Icon(Icons.refresh_outlined),
                  label: Text(loc.retryButton),
                ),
              ],
            ),
          ),
        );
      },
      loading: () {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
