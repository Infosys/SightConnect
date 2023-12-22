import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_view_model_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/close_heading.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/mr_code.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/recommendations.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/solution_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianCloseAssessmentPage extends ConsumerWidget {
  const VisionTechnicianCloseAssessmentPage({super.key, this.patientDetails,});
  final VTPatientDto? patientDetails;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // VTPatientModel? patient =
    //     ref.watch(visionTechnicianSearchProvider).patientDetails;

    if (patientDetails == null) return const SizedBox();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppSize.klheight * 3,
        // backgroundColor: AppColor.primary,
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
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                // backgroundColor: MaterialStateProperty.all(AppColor.primary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    side: const BorderSide(color: AppColor.primary),
                    borderRadius: BorderRadius.circular(AppSize.klradius),
                  ),
                ),
              ),
              child: Text(
                "Back",
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
              onPressed: () {
                ref.read(vtCloseAssessmentViewModelProvider).submitCloseAssessmentInfo(patientDetails!);
                // Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColor.primary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    side: const BorderSide(color: AppColor.primary),
                    borderRadius: BorderRadius.circular(AppSize.klradius),
                  ),
                ),
              ),
              child: Text(
                "Submit",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
            ),
          ),
          SizedBox(width: AppSize.width(context) * 0.05),
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          children: [
            CloseHeading(),
            SizedBox(height: AppSize.klheight),
            MRCode(),
            SizedBox(height: AppSize.klheight),
            // EyeScanCard(),
            SolutionCard(),
            SizedBox(height: AppSize.klheight),
            Recommendations(),
          ],
        ),
      ),
    );
  }
}
