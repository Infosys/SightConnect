import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/vision_center_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_input.dart';
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
     
        padding: const EdgeInsets.all(AppSize.kmpadding-2),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VTRegisterInput(
              title: "Recommendations",
              keyboardType: TextInputType.multiline,
              controller: ref
                  .read(preliminaryAssessmentProvider)
                  .recommendationController,
            ),
            const SizedBox(
              height: AppSize.kmheight,
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
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: AppSize.klwidth * 14,
                height: AppSize.klheight * 10,
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
                                      color:
                                          visionCenter[index].checked == false
                                              ? AppColor.lightGrey
                                              : AppColor.blue,
                                      width: 2),
                                  borderRadius:
                                      BorderRadius.circular(AppSize.ksradius),
                                ),
                                padding:
                                    const EdgeInsets.all(AppSize.kspadding + 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
              ),
              
              const SizedBox(
                width: AppSize.klwidth*2,
              ),
              Column(
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
                        width: AppSize.klwidth *15,
                        child: Text(
                          visionCenter[selectedIndex].completeAddress,
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
                      const Icon(Icons.phone_outlined,
                        color: AppColor.grey,),
                      const SizedBox(
                        width: AppSize.kswidth,
                      ),
                      Text(
                        visionCenter[selectedIndex].phoneno,
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
                      const Icon(Icons.access_time,
                        color: AppColor.grey,),
                      const SizedBox(
                        width: AppSize.kswidth,
                      ),
                      SizedBox(
                        width: AppSize.klwidth * 15,
                        child: Text(
                          visionCenter[selectedIndex].time,
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
            ]),
            const SizedBox(
              height: AppSize.klheight,
            ),
            VTRegisterInput(
              title: "Remarks",
              keyboardType: TextInputType.multiline,
              controller:
                  ref.read(preliminaryAssessmentProvider).remarksController,
            ),
          ],
        ));
  }
}
