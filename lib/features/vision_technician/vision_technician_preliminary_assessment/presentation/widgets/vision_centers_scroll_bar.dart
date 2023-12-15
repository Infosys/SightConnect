import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/vision_center_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/domain/repositories/vt_vision_center_repository_impl.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/model/vision_center_models.dart';


class VisionCentersScrollBar extends ConsumerWidget {
  const VisionCentersScrollBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<VisionCenterModel> visionCenter =
        ref.watch(preliminaryAssessmentHelperProvider).visionCenters;
    
    
    final firstcontroller = ScrollController();
    int selectedIndex = 0;
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
      child: Scrollbar(
        thumbVisibility: true,
        controller: firstcontroller,
        child: ListView.builder(
            shrinkWrap: true,
            controller: firstcontroller,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(AppSize.kspadding),
                child: InkWell(
                  onTap: () {
                    selectedIndex = index;
                    ref
                        .read(preliminaryAssessmentHelperProvider.notifier)
                        .toogleVisionCenters(index);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: visionCenter[index].checked == false
                                ? AppColor.lightGrey
                                : AppColor.blue,
                            width: 2),
                        borderRadius: BorderRadius.circular(AppSize.ksradius),
                      ),
                      padding: const EdgeInsets.all(AppSize.kspadding + 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(visionCenter[index].type ?? "",
                              style: applyRobotoFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              )),
                          Icon(
                            Icons.check_circle,
                            size: 20,
                            color: visionCenter[index].checked == true
                                ? AppColor.green
                                : AppColor.grey,
                          )
                        ],
                      )),
                ),
              );
            }),
      ),
    );
  }
}
