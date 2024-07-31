import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_view_model_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/widgets/close_heading.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/widgets/mr_code.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/widgets/recommendations.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/widgets/solution_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_analytics_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/presentation/provider/vt_home_helper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/data/model/care_plan_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/care_plan_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/vt_assessesment_and_test_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/success_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianCloseAssessmentPage extends HookConsumerWidget {
  const VisionTechnicianCloseAssessmentPage({
    super.key,
    required this.patientName,
    required this.encounterId,
    required this.patientId,
  });
  final String patientName;
  final String patientId;
  final int? encounterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    final model = ref.watch(vtCloseAssessmentHelperProvider);
    final isLoading = useState(false);

    return LoadingOverlay(
      isLoading: isLoading.value,
      child: Scaffold(
        appBar: CustomAppbar(
          onBackPress: () {
            reset(ref);
          },
          title: Text(
            '${patientName.capitalizeFirstOfEach()} - OP ${patientId}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyFiraSansFont(),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSize.km),
          child: Column(
            children: [
              CloseHeading(encountedId: encounterId),
              const SizedBox(height: AppSize.kl),
              const MRCode(),
              const SizedBox(height: AppSize.kl),
              const SolutionCard(),
              const SizedBox(height: AppSize.kl),
              const Recommendations(),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: AppSize.width(context) * 0.4,
                child: OutlinedButton(
                  onPressed: () {
                    reset(ref).then((value) => Navigator.of(context).pop());
                  },
                  child: Text(
                    loc.vtBack,
                  ),
                ),
              ),
              SizedBox(
                width: AppSize.width(context) * 0.4,
                child: ElevatedButton(
                  onPressed: model.canSubmit()
                      ? () async {
                          try {
                            isLoading.value = true;
                            final navigator = Navigator.of(context);
                            final triagReports = await ref
                                .read(vtAssessmentAndTestProvider)
                                .getTriageReportByEncounterId(
                                  encounterId!,
                                  DiagnosticReportStatus.FINAL,
                                );

                            if (triagReports.isEmpty) {
                              throw ServerFailure(
                                  errorMessage: "No report found");
                            }

                            final finalReport = triagReports.first;
                            final carePlans = finalReport.carePlans;

                            if (carePlans == null || carePlans.isEmpty) {
                              throw ServerFailure(
                                  errorMessage: "No care plan found");
                            }

                            final goals = carePlans.first.goals;

                            if (goals == null || goals.isEmpty) {
                              throw ServerFailure(
                                  errorMessage: "No goals found");
                            }

                            final carePlanPostModel = CarePlanPostModel(
                              id: carePlans.first.carePlanId,
                              organizationCode: finalReport.organizationCode,
                              tenantCode: finalReport.tenantCode,
                              goal: [GoalModel(id: goals.first.id)],
                            );

                            final triagePostModel = TriagePostModel(
                              id: finalReport.diagnosticReportId,
                              encounter:
                                  EncounterModel(id: finalReport.encounterId),
                            );

                            ref
                                .read(preliminaryAssessmentHelperProvider)
                                .setCarePlanResponse(carePlanPostModel);
                            ref
                                .read(preliminaryAssessmentHelperProvider)
                                .setTriageResponse(triagePostModel);

                            await ref
                                .read(vtCloseAssessmentViewModelProvider)
                                .submitCloseAssessmentInfo();
                            ref.invalidate(vtTriageSaveProvider);
                            ref.invalidate(vtCloseAssessmentHelperProvider);
                            ref.invalidate(vtTriageSaveProvider);
                            ref.invalidate(preliminaryAssessmentHelperProvider);

                            await successDialogue(
                              context,
                              "Assessment has been closed successfully",
                            );
                            reset(ref).then((value) =>
                                navigator.popUntil((route) => route.isFirst));
                          } on Failure catch (e) {
                            Fluttertoast.showToast(msg: e.errorMessage);
                          } catch (e) {
                            logger.e(e);
                            Fluttertoast.showToast(
                                msg: loc.vtSomethingWentWrong);
                          } finally {
                            isLoading.value = false;
                          }
                        }
                      : null,
                  child: Text(loc.vtSubmit),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> reset(WidgetRef ref) async {
    ref.invalidate(vtCloseAssessmentHelperProvider);
    ref.invalidate(preliminaryAssessmentHelperProvider);
    ref.invalidate(carePlanProvider);
    logger.d("invalidated VT triage provider");

    ref.invalidate(visionTechnicianAnalyticsProvider);
    ref.invalidate(vtHomeHelperProvider);
    logger.d("Refreshing VT Dashboard data");
  }
}
