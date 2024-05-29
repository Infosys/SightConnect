import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/keycloak.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_db_helper.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_scan_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/pages/triage_questionnaire_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity/features/visual_acuity_tumbling/presentation/pages/visual_acuity_tumbling_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import '../../../visual_acuity/features/distance_visual_acuity_tumbling/presentation/pages/distance_visual_acuity_tumbling_page.dart';
import '../../../visual_acuity/features/visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';
import '../../domain/models/triage_diagnostic_report_template_FHIR_model.dart';

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
      ref.read(accessibilityProvider).setBrightness().then((value) {
        Fluttertoast.showToast(msg: loc.eyeAssessmentBrightnessLabel);
        logger.d('Brightness set to 80');
      }).catchError((e) {
        logger.e(e.toString());
        Fluttertoast.showToast(
          msg: loc.eyeAssessmentBrightnessError,
        );
      });
    });
    MatomoTracker.instance.trackEvent(
      eventInfo: EventInfo(
          category: 'Triage', action: 'Triage Entered', name: 'Triage Entered'),
      dimensions: {
        'dimension1': '${PersistentAuthStateService.authState.activeRole}'
      },
    );
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
        final role =
            roleMapper(PersistentAuthStateService.authState.activeRole);
        return switch (role) {
          Role.ROLE_OPTOMETRIST =>
            optometristTriage(currentStep, context, data),
          Role.ROLE_PATIENT => patientTriage(currentStep, context, data),
          Role.ROLE_VISION_GUARDIAN =>
            patientTriage(currentStep, context, data),
          Role.ROLE_VISION_TECHNICIAN =>
            patientTriage(currentStep, context, data),
          _ => const SizedBox()
        };
      },
      error: (error, stackTrace) {
        final errorMessage = DioErrorHandler.getErrorMessage(error);
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(errorMessage),
                ),
                const SizedBox(
                  height: AppSize.kl,
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
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
    );
  }

  dynamic optometristTriage(int currentStep, BuildContext context,
      DiagnosticReportTemplateFHIRModel data) {
    ref.watch(triageStepperProvider).setMaxSteps(4);
    switch (currentStep) {
      case 0:
        return TriageQuestionnairePage(
          questionnaireSections: data.questionnaire?.questionnaireItem ?? [],
        );
      case 1:
        ref.read(globalProvider).setVAMode = VisionAcuityMode.TRIAGE;
        return const VisualAcuityTumblingPage();
      case 2:
        ref.read(globalProvider).setVAMode = VisionAcuityMode.TRIAGE;
        return const DistanceVisualAcuityTumblingPage();
      case 3:
        return const TriageEyeScanPage();

      default:
        return TriageQuestionnairePage(
          questionnaireSections: data.questionnaire?.questionnaireItem ?? [],
        );
    }
  }

  dynamic patientTriage(int currentStep, BuildContext context,
      DiagnosticReportTemplateFHIRModel data) {
    ref.read(triageStepperProvider).setMaxSteps(3);
    switch (currentStep) {
      case 0:
        return TriageQuestionnairePage(
          questionnaireSections: data.questionnaire?.questionnaireItem ?? [],
        );
      case 1:
        ref.read(globalProvider).setVAMode = VisionAcuityMode.TRIAGE;
        return const VisualAcuityTumblingPage();
      case 2:
        return const TriageEyeScanPage();

      default:
        return TriageQuestionnairePage(
          questionnaireSections: data.questionnaire?.questionnaireItem ?? [],
        );
    }
  }
}
