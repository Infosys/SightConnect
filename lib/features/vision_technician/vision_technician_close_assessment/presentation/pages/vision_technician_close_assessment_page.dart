import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';

import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_view_model_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/close_heading.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/mr_code.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/recommendations.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/solution_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_dashboard/presentation/pages/vision_technician_dashboard_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';

import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/success_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianCloseAssessmentPage extends ConsumerWidget {
  const VisionTechnicianCloseAssessmentPage({
    super.key,
    this.patientDetails,
  });
  final VTPatientDto? patientDetails;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    if (patientDetails == null) return const SizedBox();

    var canSubmit = ref
            .watch(vtCloseAssessmentHelperProvider)
            .mrCodeController
            .text
            .length >
        3;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppSize.klheight * 3,
        leading: InkWell(
            onTap: () {
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
            child: const Icon(Icons.chevron_left)),
        title: Text(
          '${patientDetails?.name} - OP ${patientDetails?.id}',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: applyFiraSansFont(),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          SizedBox(width: AppSize.width(context) * 0.05),
          Expanded(
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
          SizedBox(width: AppSize.width(context) * 0.05),
          Expanded(
            child: TextButton(
              onPressed: canSubmit
                  ? () async {
                      String response = await ref
                          .read(vtCloseAssessmentViewModelProvider)
                          .submitCloseAssessmentInfo(patientDetails!);
                      ref.invalidate(vtTriageProvider);
                      ref.invalidate(vtCloseAssessmentHelperProvider);
                      ref.invalidate(vtTriageProvider);
                      ref.invalidate(preliminaryAssessmentHelperProvider);

                      if (context.mounted) {
                        if (response == "success") {
                          await successDialogue(
                              context, loc.vtAssessmentClosedSuccessfully);
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   const SnackBar(
                          //     content: Text("Assessment Closed Successfully"),
                          //   ),
                          // );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(loc.vtSomethingWentWrong),
                            ),
                          );
                        }

                        if (context.mounted) {
                          Navigator.popUntil(context, (route) => route.isFirst);
                        }
                      }
                    }
                  : null,
              child: Text(
                loc.vtSubmit,
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: canSubmit ? AppColor.white : AppColor.grey,
                ),
              ),
            ),
          ),
          SizedBox(width: AppSize.width(context) * 0.05),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          children: [
            CloseHeading(encountedId: patientDetails?.encounterId),
            const SizedBox(height: AppSize.klheight),
            const MRCode(),
            const SizedBox(height: AppSize.klheight),
            const SolutionCard(),
            const SizedBox(height: AppSize.klheight),
            const Recommendations(),
          ],
        ),
      ),
    );
  }
}
