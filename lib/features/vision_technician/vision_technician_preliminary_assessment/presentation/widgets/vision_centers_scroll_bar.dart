import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/vision_center_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionCentersScrollBar extends ConsumerWidget {
  VisionCentersScrollBar({super.key});
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<VisionCenterModel> visionCenter =
        ref.watch(preliminaryAssessmentProvider).visionCenters;
    var firstcontroller = ScrollController();
    return Container(
      width: Responsive.isMobile(context)?AppSize.width(context): AppSize.width(context)/2,
      height: Responsive.isMobile(context)?AppSize.height(context) / 4:AppSize.height(context) / 4,
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
                        .read(preliminaryAssessmentProvider.notifier)
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
                          Text(visionCenter[index].type,
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
