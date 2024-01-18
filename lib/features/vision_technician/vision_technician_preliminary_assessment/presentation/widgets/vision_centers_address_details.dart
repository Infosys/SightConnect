import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionCenterAddressDetails extends ConsumerWidget {
  const VisionCenterAddressDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visionCenter =
        ref.watch(preliminaryAssessmentHelperProvider).selectedVisionCenter;

    if (visionCenter == null) return const SizedBox();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          visionCenter.facilityInformation?.facilityName ?? "",
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
                "${visionCenter.facilityInformation?.facilityAddressDetails?.addressLine1 ?? ""}, ${visionCenter.facilityInformation?.facilityAddressDetails?.addressLine2 ?? ""}, ${visionCenter.facilityInformation?.facilityAddressDetails?.pincode ?? ""}",
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
              visionCenter.facilityInformation?.facilityContactInformation
                      ?.facilityContactNumber ??
                  "",
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
                "${visionCenter.facilityInformation?.timingsOfFacility?.first.workingDays ?? ""} - ${visionCenter.facilityInformation?.timingsOfFacility?.last.workingDays ?? ""}, ${visionCenter.facilityInformation?.timingsOfFacility?.first.openingHours ?? ""}",
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
