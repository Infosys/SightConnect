import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_vt_availibility_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/error_dialogue_box.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/providers/mark_my_availability_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_my_available_date_range_picker.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_my_available_each_day_availability.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianMarkMyAvailabilityPage extends ConsumerWidget {
  const VisionTechnicianMarkMyAvailabilityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    var watchRef = ref.watch(markMyAvailabilityHelperProvider);
    bool? available = ref.watch(markMyAvailabilityHelperProvider).available;
    bool loading = ref.watch(markMyAvailabilityHelperProvider).isLoading;

    return Scaffold(
      bottomNavigationBar: !loading
          ? Padding(
              padding: const EdgeInsets.all(AppSize.km),
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
                    ref.watch(globalVTAvailabilityProvider).setAvailability(
                          watchRef.available!,
                        );
                  } catch (e) {
                    if (context.mounted) {
                      showErrorDialogue(context);
                    }
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      available ? loc.vtMarked : loc.vtMarkMyAvailability,
                      style: applyRobotoFont(
                        fontWeight: FontWeight.w400,
                        color: available ? AppColor.primary : AppColor.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : const Center(child: CircularProgressIndicator.adaptive()),
      appBar: CustomAppbar(
        centerTitle: false,
        title: Text(
          loc.vtMarkMyAvailability,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.km),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppSize.km - 5),
                  ),
                ),
                padding: const EdgeInsets.all(AppSize.kl),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: AppSize.kl * 2,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.lightGrey),
                              color: AppColor.lightGrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const VtMarkMyAvailableDateRangePicker(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSize.kl),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return VtMarkMyAvailableEachDayAvailability(
                          dayAvailabilityindex: index,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          color: AppColor.grey,
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
