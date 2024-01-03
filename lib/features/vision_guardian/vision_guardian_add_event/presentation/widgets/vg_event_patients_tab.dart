import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/remote/triage_remote_source.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_empty_result_card.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EventPatientsTab extends ConsumerWidget {
  const EventPatientsTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(getPatientTriageReportsProvider).when(
      data: (triageReportDetails) {
        if (triageReportDetails.length == 0) {
          return const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VisionGuardianEmptyResultCard(
                type: "Patient",
              ),
            ],
          );
        }
        print(triageReportDetails);
        return ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: triageReportDetails.length,
          itemBuilder: (context, index) {
            var data = triageReportDetails[index];
            return Container(
              padding: const EdgeInsets.all(AppSize.kspadding),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.white,
                boxShadow: applyLightShadow(),
                borderRadius: const BorderRadius.all(
                  Radius.circular(AppSize.kmradius - 5),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.ksradius),
                child: Container(
                  padding: const EdgeInsets.all(AppSize.kspadding),
                  width: Responsive.isMobile(context)
                      ? AppSize.width(context) * 0.9
                      : AppSize.width(context) * 0.6,
                  color: AppColor.white,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: AppColor.grey.withOpacity(0.8),
                        child: Image.asset(
                          AppImages.raghavi,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(width: AppSize.kswidth),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: Responsive.isMobile(context)
                                ? AppSize.width(context) * 0.74
                                : AppSize.width(context) * 0.6,
                            child: Row(
                              children: [
                                Text(
                                  data.name!,
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.black,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  data.category!,
                                  style: applyRobotoFont(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSize.ksheight),
                          SizedBox(
                            width: Responsive.isMobile(context)
                                ? AppSize.width(context) * 0.74
                                : AppSize.width(context) * 0.6,
                            child: Row(
                              children: [
                                Text(
                                  '${data.gender!}, ${DateTime.now().year - int.parse(data.yearOfBirth!)} years',
                                  style: applyRobotoFont(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.grey,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  DateTime.parse(data.encounterStartDate!)
                                      .toString(),
                                  style: applyRobotoFont(
                                    fontSize: 12,
                                    color: AppColor.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: AppSize.ksheight / 3),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSize.ksheight),
                          SizedBox(
                            width: Responsive.isMobile(context)
                                ? AppSize.width(context) * 0.74
                                : AppSize.width(context) * 0.6,
                            child: Row(
                              children: [
                                Text(
                                  data.encounterId.toString(),
                                  style: applyRobotoFont(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.grey,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  DateTime.parse(data.encounterStartDate!)
                                          .difference(DateTime.parse(
                                              data.encounterStartDate!))
                                          .inMinutes
                                          .toString() +
                                      ' mins',
                                  style: applyRobotoFont(
                                    fontSize: 12,
                                    color: AppColor.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: AppSize.ksheight / 3),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: AppSize.ksheight,
            );
          },
        );
      },
      error: (error, stackTrace) {
        return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VisionGuardianEmptyResultCard(
              type: "Patient",
            ),
          ],
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
