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
          const SizedBox(height: AppSize.km),
          const Text("No Vision Center Found"),
        ],
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
          const SizedBox(height: AppSize.km),
          AppCard(
            padding: AppSize.km,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  data.facilityInformation?.facilityName ?? "",
                  style: applyFiraSansFont(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: AppSize.km),
                _AddressTile(
                  icon: Icons.location_on_outlined,
                  value:
                      "${data.facilityInformation?.facilityAddressDetails?.addressLine1 ?? ""}, ${data.facilityInformation?.facilityAddressDetails?.addressLine2 ?? ""}, ${data.facilityInformation?.facilityAddressDetails?.pincode ?? ""}",
                ),
                _AddressTile(
                  icon: Icons.phone_outlined,
                  value: data.facilityInformation?.facilityContactInformation
                          ?.facilityContactNumber ??
                      "",
                ),
                _AddressTile(
                  icon: Icons.access_time_rounded,
                  value:
                      "${data.facilityInformation?.timingsOfFacility?.first.workingDays ?? ""} - ${data.facilityInformation?.timingsOfFacility?.last.workingDays ?? ""}, ${data.facilityInformation?.timingsOfFacility?.first.openingHours ?? ""}",
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

class _AddressTile extends StatelessWidget {
  const _AddressTile({
    required this.icon,
    required this.value,
  });
  final IconData icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.isMobile(context)
          ? const EdgeInsets.symmetric(vertical: AppSize.ks)
          : const EdgeInsets.symmetric(vertical: AppSize.ks),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: AppColor.grey,
            size: 24,
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              value,
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
    );
  }
}
