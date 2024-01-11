import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/severity_input.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/vision_centers_address_details.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/vision_centers_scroll_bar.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_input.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreliminaryAssessmentVisionCenter extends HookConsumerWidget {
  const PreliminaryAssessmentVisionCenter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(AppSize.kmpadding - 2),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.lightGrey),
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.ksradius),
        boxShadow: const [
          BoxShadow(
            color: AppColor.lightGrey, //New
            blurRadius: AppSize.ksradius / 2,
            spreadRadius: AppSize.ksradius / 8,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Vision Center",
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: AppSize.klheight,
          ),
          Responsive.isMobile(context)
              ? const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VisionCentersScrollBar(),
                    SizedBox(
                      height: AppSize.kmheight,
                    ),
                    VisionCenterAddressDetails(),
                  ],
                )
              : const Row(
                  children: [
                    VisionCentersScrollBar(),
                    SizedBox(
                      width: AppSize.klwidth,
                    ),
                    VisionCenterAddressDetails(),
                  ],
                ),
          const SizedBox(height: AppSize.klheight),
          const SeverityInput(),
          VTRegisterInput(
            title: "Remarks",
            keyboardType: TextInputType.multiline,
            controller:
                ref.read(preliminaryAssessmentHelperProvider).remarksController,
          ),
        ],
      ),
    );
  }
}
