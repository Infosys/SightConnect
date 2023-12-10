import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/vision_center_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_input.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreliminaryAssessmentVisionCenter extends HookConsumerWidget {
  PreliminaryAssessmentVisionCenter({super.key});
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<VisionCenterModel> visionCenter =
        ref.watch(preliminaryAssessmentProvider).visionCenters;
    var firstcontroller = ScrollController();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSize.kmpadding),
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
      // child: Column(
      //   children: [
      //     VTRegisterInput(
      //       title: "Recommendations",
      //       keyboardType: TextInputType.multiline,
      //       controller: ref
      //           .read(preliminaryAssessmentProvider)
      //           .recommendationController,
      //     ),
      //     const SizedBox(height: AppSize.klheight),
      //     Text(
      //       "Vision Center",
      //       style: applyFiraSansFont(
      //         fontSize: 18,
      //         fontWeight: FontWeight.w500,
      //       ),
      //     ),
      //     const SizedBox(
      //       height: AppSize.klheight,
      //     ),
      //   ],
      // ),
      child: Wrap(
        direction: Axis.vertical,
        children: [
          SizedBox(
            width:
                (Responsive.isTablet(context) || Responsive.isMobile(context))
                    ? AppSize.klwidth * 32
                    : AppSize.klwidth * 50,
            child: VTRegisterInput(
              title: "Recommendations",
              keyboardType: TextInputType.multiline,
              controller: ref
                  .read(preliminaryAssessmentProvider)
                  .recommendationController,
            ),
          ),
          const SizedBox(
            height: AppSize.klheight,
          ),
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
          Wrap(spacing: AppSize.klwidth, children: [
            Container(
              width: AppSize.klwidth * 15,
              padding: const EdgeInsets.all(AppSize.kspadding + 2),
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.lightGrey),
                borderRadius: BorderRadius.circular(AppSize.kmradius),
              ),
              child: SizedBox(
                  width: AppSize.klwidth * 15,
                  height: AppSize.klheight * 8,
                  child: Scrollbar(
                    thumbVisibility: true,
                    controller: firstcontroller,
                    child: ListView.builder(
                        controller: firstcontroller,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: AppSize.kspadding - 3,
                                top: AppSize.kspadding - 3,
                                bottom: AppSize.kspadding - 3,
                                right: AppSize.kmpadding + 4),
                            child: InkWell(
                              onTap: () {
                                selectedIndex = index;
                                ref
                                    .read(
                                        preliminaryAssessmentProvider.notifier)
                                    .toogleVisionCenters(index);
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            visionCenter[index].checked == false
                                                ? AppColor.lightGrey
                                                : AppColor.blue,
                                        width: 2),
                                    borderRadius:
                                        BorderRadius.circular(AppSize.ksradius),
                                  ),
                                  padding: const EdgeInsets.all(
                                      AppSize.kspadding + 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(visionCenter[index].type,
                                          style: applyRobotoFont(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          )),
                                      Icon(
                                        Icons.check_circle,
                                        size: 10,
                                        color:
                                            visionCenter[index].checked == true
                                                ? AppColor.green
                                                : AppColor.grey,
                                      )
                                    ],
                                  )),
                            ),
                          );
                        }),
                  )),
            ),
            Wrap(
              spacing: AppSize.kmheight,
              direction: Axis.vertical,
              children: [
                Text(
                  "LVPEI Eye Institute",
                  style: applyFiraSansFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Wrap(
                  spacing: AppSize.kmwidth,
                  direction: Axis.horizontal,
                  children: [
                    const Icon(Icons.location_on_outlined),
                    SizedBox(
                      width: AppSize.klwidth * 15,
                      child: Text(visionCenter[selectedIndex].completeAddress),
                    ),
                  ],
                ),
                Wrap(
                  spacing: AppSize.kmwidth,
                  direction: Axis.horizontal,
                  children: [
                    const Icon(Icons.phone_outlined),
                    SizedBox(
                      width: AppSize.klwidth * 18,
                      child: Text(visionCenter[selectedIndex].phoneno),
                    ),
                  ],
                ),
                Wrap(
                  spacing: AppSize.kmwidth,
                  direction: Axis.horizontal,
                  children: [
                    const Icon(Icons.access_time),
                    SizedBox(
                      width: AppSize.klwidth * 18,
                      child: Text(visionCenter[selectedIndex].time),
                    ),
                  ],
                )
              ],
            ),
          ]),
          const SizedBox(
            height: AppSize.klheight,
          ),
          SizedBox(
            width:
                (Responsive.isTablet(context) || Responsive.isMobile(context))
                    ? AppSize.klwidth * 32
                    : AppSize.klwidth * 50,
            child: VTRegisterInput(
              title: "Remarks",
              keyboardType: TextInputType.multiline,
              controller:
                  ref.read(preliminaryAssessmentProvider).remarksController,
            ),
          ),
        ],
      ),
    );
  }
}
