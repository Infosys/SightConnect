import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_dashboard/presentation/provider/vision_technician_dashboard_provider.dart';
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: OutlinedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(AppSize.kmpadding)),
                
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.klradius * 5),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text("Cancel",
                    style: applyRobotoFont(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blue,
                    )),
              ),
            ),
            const SizedBox(
              width: AppSize.klwidth,
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(AppSize.kmpadding)),
                  backgroundColor: MaterialStateProperty.all(AppColor.primary),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.klradius * 5),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Save",
                  style: applyRobotoFont(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColor.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: CustomAppbar(
        titleSpacing: 0,
        centerTitle: false,
        leadingIcon: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            ref.read(visionTechnicianDashboardProvider).changeIndex(0);
          },
        ),
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
                child: Row(
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
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
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
                        Row(children: [
                          Flexible(
                            child: Container(
                                height: AppSize.klheight * 2,
                                padding:
                                    const EdgeInsets.all(AppSize.kspadding),
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
                          ),
                          const SizedBox(
                            width: AppSize.klwidth,
                          ),
                          Flexible(
                            child: Container(
                                height: AppSize.klheight * 2,
                                             
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColor.blue),
                                  color: AppColor.lightBlue,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:
                                    const VtMarkMyAvailableDateRangePicker()),
                          ),
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
            ],
          ),
        ),
      ),
    );
  }
}
