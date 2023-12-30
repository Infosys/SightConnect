import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/providers/mark_my_availability_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_my_available_date_range_picker.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_my_available_each_day_availability.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianMarkMyAvailabilityPage extends StatelessWidget {
  const VisionTechnicianMarkMyAvailabilityPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancel",
                  style: applyRobotoFont(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: AppSize.klwidth,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: null,
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
        preferredSizeHeight: 70,
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                'Mark My Availability',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColor.black,
                ),
              ),
            ),
            Flexible(
              child: Consumer(
                builder: (context, ref, _) {
                  final model = ref.watch(markMyAvailabilityHelperProvider);
                  return model.isLoading
                      ? const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Center(
                              child: CircularProgressIndicator(),
                            ),
                          ],
                        )
                      : Padding(
                          padding: const EdgeInsets.all(0),
                          child: TextButton.icon(
                            style: TextButton.styleFrom(
                              foregroundColor: model.markAvailability
                                  ? AppColor.white
                                  : AppColor.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(AppSize.klradius * 5),
                              ),
                            ),
                            onPressed: () async {
                              try {
                                await model.updateAvailability();
                              } catch (e) {
                                Fluttertoast.showToast(
                                  msg: "Something went wrong.. Try Again!!",
                                );
                              }
                            },
                            icon: model.markAvailability
                                ? const Icon(
                                    Icons.check,
                                    size: 20,
                                    color: AppColor.white,
                                  )
                                : const Icon(
                                    Icons.check,
                                    size: 20,
                                    color: AppColor.blue,
                                  ),
                            label: Text(
                              model.markAvailability
                                  ? "Marked"
                                  : "Mark my availabilty",
                            ),
                          ),
                        );
                },
              ),
            ),
            /*  InkWell(
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
            ) */
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
                  ),
                ),
                padding: const EdgeInsets.all(AppSize.klpadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Flexible(
                        child: Container(
                          height: AppSize.klheight * 2,
                          padding: const EdgeInsets.all(AppSize.kspadding),
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
                          ),
                        ),
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
                          child: const VtMarkMyAvailableDateRangePicker(),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: AppSize.klheight,
                    ),
                    Consumer(
                      builder: (context, ref, _) {
                        final model =
                            ref.watch(markMyAvailabilityHelperProvider);
                        return ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return VtMarkMyAvailableEachDayAvailability(
                              dayAvailabilityindex: index,
                            );
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
                          itemCount: model.markMyAvailabilityList.length,
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
