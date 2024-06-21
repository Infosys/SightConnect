import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_form_helper_widgets.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/regex/regex.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianEventAddressCard extends ConsumerWidget {
  const VisionGuardianEventAddressCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(addEventDetailsProvider);
    final loc = context.loc!;
    return Container(
      padding: const EdgeInsets.all(AppSize.km),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.km - 5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            loc.vgAddressDetails,
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: AppSize.km),
          customTextFieldIcon(
            context,
            data.venueName,
            loc.vgVenueName,
            validationFunction: (value) {
              if (value?.trim().isEmpty ?? true) {
                return loc.vtEnterSomeText;
              }
              if (!Regex.isValidTitle(value!)) {
                return loc.vgVenueNameSpecialCharError;
              }
              return null;
            },
            const SizedBox(),
          ),
          const SizedBox(height: AppSize.km),
          customTextFieldIcon(
            context,
            data.pincode,
            loc.vgPincode,
            validationFunction: (value) {
              if (value?.trim().isEmpty ?? true) {
                return loc.vtEnterSomeText;
              }
              if (!Regex.isValidPincode(value!)) {
                return loc.vgPincodeError;
              }
              return null;
            },
            const SizedBox(),
          ),
          const SizedBox(height: AppSize.km),
          customTextFieldIcon(
            context,
            data.city,
            loc.vgCityTownVillage,
            validationFunction: (value) {
              if (value?.trim().isEmpty ?? true) {
                return loc.vgCityTownVillageError;
              }
              if (!Regex.isValidCityTownVillageName(value!)) {
                return loc.vgCityTownVillageSpecialCharError;
              }
              return null;
            },
            const SizedBox(),
          ),
          const SizedBox(height: AppSize.km),
        ],
      ),
    );
  }
}
