import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_add_event_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_address_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_datetime_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_bottom_navigation.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_form_helper_widgets.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class VGAddEventDetailsPage extends ConsumerWidget {
  const VGAddEventDetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(addEventDetailsProvider);
    var formKey = data.formKey;
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: CustomAppbar(
        leadingIcon: IconButton(
            onPressed: () {
              ref.watch(addEventDetailsProvider).resetFields();
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text("Add Event"),
        centerTitle: false,
      ),
      bottomNavigationBar: const VisionGuardianEventBottomNavigationBar(),
      body: LoadingOverlay(
        overlayColor: null,
        isLoading: ref.watch(addEventDetailsProvider).isLoading,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              // autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          validationFunction: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter End time";
                            }
                            if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]')
                                .hasMatch(value)) {
                              return "Should not contain any special character";
                            }
                            return null;
                          },
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
        ),
      ),
    );
  }
}
