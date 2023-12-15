import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/vision_center_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionCenterAddressDetails extends ConsumerWidget {
 const VisionCenterAddressDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    // VisionCenterModel visionCenter = ref
    //     .watch(preliminaryAssessmentHelperProvider.notifier)
    //     .getCheckedVisionCenter();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "LVPEI Eye Institute",
          style: applyFiraSansFont(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: AppSize.klheight,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: AppColor.grey,
            ),
            const SizedBox(
              width: AppSize.kswidth,
            ),
            SizedBox(
              width: AppSize.klwidth * 10,
              child: Text(
                visionCenter.completeAddress ?? "",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.ksheight,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.phone_outlined,
              color: AppColor.grey,
            ),
            const SizedBox(
              width: AppSize.kswidth,
            ),
            Text(
              visionCenter.phoneno ?? "",
              style: applyRobotoFont(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.ksheight,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.access_time,
              color: AppColor.grey,
            ),
            const SizedBox(
              width: AppSize.kswidth,
            ),
            SizedBox(
              width: AppSize.klwidth * 10,
              child: Text(
                visionCenter.time ?? "",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
