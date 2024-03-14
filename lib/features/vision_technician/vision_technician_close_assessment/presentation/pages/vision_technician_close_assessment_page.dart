import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/vt_assessesment_and_test_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_view_model_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/close_heading.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/mr_code.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/recommendations.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/solution_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/care_plan_post_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/success_dialogue.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianCloseAssessmentPage extends ConsumerWidget {
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

    return Scaffold(
      appBar: CustomAppbar(
        leadingIcon: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {
            ref.invalidate(vtCloseAssessmentHelperProvider);
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
        title: Text(
          '${patientName} - OP ${patientId}',
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
                  ref.invalidate(vtCloseAssessmentHelperProvider);
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Text(
                  loc.vtBack,
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.primary,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: AppSize.width(context) * 0.4,
              child: ElevatedButton(
                onPressed: model.canSubmit()
                    ? () async {
                        List<TriageDetailedReportModel> finalReportList =
                            await ref
                                .read(vtAssessmentAndTestProvider)
                                .getTriageReportByEncounterId(
                                    encounterId!, DiagnosticReportStatus.FINAL);

                        CarePlanPostModel carePlanPostModel = CarePlanPostModel(
                          id: finalReportList.first.carePlans?.first.carePlanId,
                          organizationCode:
                              finalReportList.first.organizationCode,
                          tenantCode: finalReportList.first.tenantCode,
                          goal: [
                            GoalModel(
                              id: finalReportList
                                  .first.carePlans?.first.goals?.first.id,
                            )
                          ],
                        );

                        final TriagePostModel finalPostModel = TriagePostModel(
                          id: finalReportList.first.diagnosticReportId,
                          encounter: EncounterModel(
                              id: finalReportList.first.encounterId),
                        );
                        ref
                            .read(preliminaryAssessmentHelperProvider)
                            .setCarePlanResponse(carePlanPostModel);
                        ref
                            .read(preliminaryAssessmentHelperProvider)
                            .setTriageResponse(finalPostModel);

                        logger.t(finalReportList.first.toJson());
                        logger.f(finalPostModel.toJson());

                        String response = await ref
                            .read(vtCloseAssessmentViewModelProvider)
                            .submitCloseAssessmentInfo();
                        ref.invalidate(vtTriageSaveProvider);
                        ref.invalidate(vtCloseAssessmentHelperProvider);
                        ref.invalidate(vtTriageSaveProvider);
                        ref.invalidate(preliminaryAssessmentHelperProvider);
                        if (!context.mounted) {
                          return;
                        }
                        if (response == "success") {
                          await successDialogue(
                              context, loc.vtAssessmentClosedSuccessfully);
                        } else {
                          Fluttertoast.showToast(msg: loc.vtSomethingWentWrong);
                        }
                        if (context.mounted) {
                          Navigator.popUntil(context, (route) => route.isFirst);
                        }
                      }
                    : null,
                child: Text(loc.vtSubmit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
