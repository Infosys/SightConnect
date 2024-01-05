import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_add_event_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_address_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_datetime_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_bottom_navigation.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_form_helper_widgets.dart';

import 'package:eye_care_for_all/shared/theme/app_shadow.dart';

import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class VGAddEventDetailsPage extends ConsumerWidget {
  const VGAddEventDetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(addEventDetailsProvider);
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: const CustomAppbar(
        title: Text("Add Event"),
        centerTitle: false,
      ),
      bottomNavigationBar: const VisionGuardianEventBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const VisionGuardianAddEventCard(),
              const SizedBox(height: AppSize.klheight),
              Container(
                padding: const EdgeInsets.all(AppSize.kmpadding),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  boxShadow: applyLightShadow(),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(AppSize.kmradius - 5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    customTextField(
                      data.eventTitle,
                      "Event Title",
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    customTextField(
                      data.eventDescription,
                      "Event Description",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.kmheight),
              const VisionGuardianEventDateTimeCard(),
              const SizedBox(height: AppSize.kmheight),
              const VisionGuardianEventAddressCard(),
              const SizedBox(height: AppSize.kmheight),
            ],
          ),
        ),
      ),
    );
  }
}
