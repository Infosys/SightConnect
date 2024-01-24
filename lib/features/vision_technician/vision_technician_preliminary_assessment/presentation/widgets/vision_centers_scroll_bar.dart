import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/nearby_vision_centers_list.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionCentersScrollBar extends ConsumerWidget {
  const VisionCentersScrollBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstcontroller = ScrollController();

    return Container(
      width: Responsive.isMobile(context)
          ? AppSize.width(context)
          : AppSize.width(context) / 2,
      height: Responsive.isMobile(context)
          ? AppSize.height(context) / 5
          : Responsive.isTablet(context)
              ? AppSize.height(context) / 4
              : AppSize.height(context) / 2.5,
      padding: const EdgeInsets.all(AppSize.kspadding + 2),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.lightGrey),
        borderRadius: BorderRadius.circular(AppSize.kmradius),
      ),
      child: ref.watch(simpleNearByVisionCenterProvider).when(
            data: (data) {
              return Scrollbar(
                thumbVisibility: true,
                controller: firstcontroller,
                child: ListView.builder(
                  shrinkWrap: true,
                  controller: firstcontroller,
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    final isSelected = ref
                        .watch(preliminaryAssessmentHelperProvider)
                        .isSelectVisionCenter(data[index]);

                    return Padding(
                      padding: const EdgeInsets.all(AppSize.kspadding),
                      child: InkWell(
                        onTap: () {
                          logger.d("selected vision center ${data[index]}");

                          ref
                              .read(preliminaryAssessmentHelperProvider)
                              .setSelectedVisionCenter(data[index]);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:
                                  isSelected ? AppColor.green : AppColor.blue,
                              width: 2,
                            ),
                            borderRadius:
                                BorderRadius.circular(AppSize.ksradius),
                          ),
                          padding: const EdgeInsets.all(AppSize.kspadding + 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                data[index].facilityInformation?.facilityName ??
                                    "",
                                style: applyRobotoFont(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(
                                Icons.check_circle,
                                size: 20,
                                color:
                                    isSelected ? AppColor.green : AppColor.grey,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error, stackTrace) => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}
