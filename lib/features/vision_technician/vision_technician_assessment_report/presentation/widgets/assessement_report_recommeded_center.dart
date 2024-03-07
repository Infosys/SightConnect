import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/provider/vision_technician_report_page_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentReportRecommendedCenter extends ConsumerWidget {
  const AssessmentReportRecommendedCenter({super.key, this.visionCenterId});

  final int? visionCenterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    if (visionCenterId == null) {
      logger.d("visionCenterId is null");
      return Container(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: const Center(
          child: Text("No Vision Center Found"),
        ),
      );
    }

    return ref.watch(visionTechnicianReportPageProvider(visionCenterId!)).when(
        data: (data) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            loc.vtRecommendedCenter,
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.kmheight),
          AppCard(
            padding: AppSize.kmpadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.facilityInformation?.facilityName ?? "",
                  style: applyFiraSansFont(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: AppSize.kmheight),
                RecommendationPhoneNumber(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: AppColor.grey,
                        ),
                        const SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            "${data.facilityInformation?.facilityAddressDetails?.addressLine1 ?? ""}, ${data.facilityInformation?.facilityAddressDetails?.addressLine2 ?? ""}, ${data.facilityInformation?.facilityAddressDetails?.pincode ?? ""}",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.phone_outlined,
                              color: AppColor.grey,
                              size: AppSize.klheight,
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: Text(
                                data
                                        .facilityInformation
                                        ?.facilityContactInformation
                                        ?.facilityContactNumber ??
                                    "",
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSize.ksheight),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Flexible(
                              child: Icon(
                                Icons.access_time_rounded,
                                color: AppColor.grey,
                                size: AppSize.klheight,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: Text(
                                "${data.facilityInformation?.timingsOfFacility?.first.workingDays ?? ""} - ${data.facilityInformation?.timingsOfFacility?.last.workingDays ?? ""}, ${data.facilityInformation?.timingsOfFacility?.first.openingHours ?? ""}",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }, error: (e, s) {
      logger.d("error for vision center $e");
      return Container();
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    });
  }
}

class RecommendationPhoneNumber extends ConsumerWidget {
  const RecommendationPhoneNumber({super.key, required this.children});

  final List<Widget> children;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Responsive.isMobile(context)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start, children: children)
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          );
  }
}
