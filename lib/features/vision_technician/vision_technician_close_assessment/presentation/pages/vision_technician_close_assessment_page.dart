import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_view_model_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/close_heading.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/mr_code.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/recommendations.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/solution_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_dashboard/presentation/pages/vision_technician_dashboard_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/success_dialogue.dart';
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
  final int encounterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;

    final model = ref.watch(vtCloseAssessmentHelperProvider);
    final canSubmit = model.mrCodeController.text.length > 3;

    return Scaffold(
      appBar: CustomAppbar(
        onBackPress: () {
          ref.invalidate(vtCloseAssessmentHelperProvider);
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (builder) {
                return const VisionTechnicianDashboardPage();
              },
            ),
          );
        },
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
                onPressed: canSubmit
                    ? () async {
                        String response = await ref
                            .read(vtCloseAssessmentViewModelProvider)
                            .submitCloseAssessmentInfo();
                        if (!context.mounted) {
                          return;
                        }
                        if (response == "success") {
                          await successDialogue(
                                  context, loc.vtAssessmentClosedSuccessfully)
                              .then(
                            (value) {
                              ref.invalidate(vtTriageSaveProvider);
                              ref.invalidate(vtCloseAssessmentHelperProvider);
                              ref.invalidate(vtTriageSaveProvider);
                              ref.invalidate(
                                  preliminaryAssessmentHelperProvider);
                              Navigator.of(context).popUntil((route) => false);
                            },
                          );
                        } else {
                          Fluttertoast.showToast(msg: loc.vtSomethingWentWrong);
                        }
                      }
                    : null,
                child: Text(
                  loc.vtSubmit,
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
