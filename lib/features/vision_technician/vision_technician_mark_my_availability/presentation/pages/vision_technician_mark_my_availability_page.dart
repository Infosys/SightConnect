import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/providers/mark_my_availability_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_my_available_date_range_picker.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_my_available_each_day_availability.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_show_marks_unavailable.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianMarkMyAvailabilityPage extends ConsumerWidget {
  const VisionTechnicianMarkMyAvailabilityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var markMyAvailabilityList =
        ref.watch(markMyAvailabilityProvider).markMyAvailabilityList;

    return Scaffold(
        backgroundColor: AppColor.scaffold,
        appBar: CustomAppbar(
          leadingWidth: 70,
          centerTitle: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mark My Availability',
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColor.black,
                ),
              ),
              InkWell(
                onTap: () {
                  showMarksUnAvaialbility(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(AppSize.kspadding),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.blue),
                    borderRadius: BorderRadius.circular(AppSize.klradius),
                    color: Colors.transparent,
                  ),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.edit_calendar_rounded,
                            size: 20,
                            color: AppColor.blue,
                          ),
                          Text(
                            "Mark as Unavailable",
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(AppSize.klpadding),
              child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(AppSize.kmradius - 5),
                          )),
                      padding: const EdgeInsets.all(AppSize.klpadding),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(children: [
                              Container(
                                  padding:
                                      const EdgeInsets.all(AppSize.kspadding),
                                  width: AppSize.klwidth * 4,
                                  height: AppSize.klheight * 2,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColor.blue),
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "Oct 2023",
                                    style: applyRobotoFont(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                              const SizedBox(
                                width: AppSize.klwidth,
                              ),
                              Container(
                                
                                  width: AppSize.klwidth * 11,
                                  height: AppSize.klheight * 2,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColor.blue),
                                    color: AppColor.lightBlue,
                                    borderRadius: BorderRadius.circular(AppSize.kmradius),
                                  ),
                                  child:
                                      Padding(
                                        padding: const EdgeInsets.only(left:AppSize.kspadding),
                                        child: const VtMarkMyAvailableDateRangePicker(),
                                      )),
                            ]),
                            const SizedBox(
                              height: AppSize.klheight,
                            ),
                            ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return VtMarkMyAvailableEachDayAvailability(
                                    dayAvailabilityindex: index);
                              },
                              separatorBuilder: (context, index) {
                                return const Column(
                                  children: [
                                    SizedBox(
                                      height: AppSize.klheight,
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: AppColor.grey,
                                    )
                                  ],
                                );
                              },
                              itemCount: markMyAvailabilityList.length,
                            )
                          ])),
                  const SizedBox(
                    height: AppSize.klheight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text("Cancel"),
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.klwidth,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Save"),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ));
  }
}
