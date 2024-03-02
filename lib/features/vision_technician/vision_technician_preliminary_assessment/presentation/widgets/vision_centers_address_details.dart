import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
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

    return SizedBox(
      height: Responsive.isMobile(context)
          ? AppSize.height(context) / 5
          : Responsive.isTablet(context)
              ? AppSize.height(context) / 4
              : AppSize.height(context) / 2.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            visionCenter.facilityInformation?.facilityName
                    .capitalizeFirstOfEach() ??
                "",
            style: applyFiraSansFont(
              fontSize: 14,
              fontWeight: FontWeight.w500,
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
                size: 24,
              ),
              const SizedBox(width: AppSize.klwidth),
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
                size: 24,
              ),
              const SizedBox(width: AppSize.klwidth),
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
                size: 24,
                color: AppColor.grey,
              ),
              const SizedBox(width: AppSize.klwidth),
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
      ),
    );
  }
}
