import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/error_dialogue_box.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/providers/mark_my_availability_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_my_available_date_range_picker.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_my_available_each_day_availability.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianMarkMyAvailabilityPage extends ConsumerWidget {
  const VisionTechnicianMarkMyAvailabilityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watchRef = ref.watch(markMyAvailabilityHelperProvider);
    bool? available = ref.watch(markMyAvailabilityHelperProvider).available;
    bool loading = ref.watch(markMyAvailabilityHelperProvider).isLoading;

    // bool? availableForTeleconsultation =
    //     ref.watch(globalVTProvider).user?.availableForTeleconsultation;

    logger.d("available : $available");

    return Scaffold(
      bottomNavigationBar: !loading
          ? Padding(
              padding: const EdgeInsets.all(AppSize.kmpadding),
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(
                  available! ? AppColor.white : AppColor.primary,
                  ),
                  side: MaterialStateProperty.all(
                    const BorderSide(color: AppColor.primary),
                  ),
                ),
                onPressed: () async {
                  try {
                    await watchRef.updateAvailability();
                  } catch (e) {
                    if (context.mounted) {
                      showErrorDialogue(context);
                    }
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check,
                      size: 20,
                      color: available ? AppColor.primary : AppColor.white,
                    ),
                    const SizedBox(width: AppSize.kswidth),
                    Text(
                      available ? "Marked" : "Mark my availabilty",
                      style: applyRobotoFont(
                        fontWeight: FontWeight.w400,
                        color: available ? AppColor.primary : AppColor.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : const Center(child: CircularProgressIndicator()),
      appBar: CustomAppbar(
        titleSpacing: 0,
        preferredSizeHeight: 70,
        centerTitle: false,
        title: Text(
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
                    Row(
                      children: [
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
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.klheight,
                    ),
                    ListView.separated(
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
                      itemCount: watchRef.markMyAvailabilityList.length,
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
