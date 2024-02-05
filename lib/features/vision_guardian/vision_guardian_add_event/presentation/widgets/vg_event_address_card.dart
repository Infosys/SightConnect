import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_form_helper_widgets.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianEventAddressCard extends ConsumerWidget {
  const VisionGuardianEventAddressCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(addEventDetailsProvider);
    return Container(
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
          Text(
            "Address Details",
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: AppSize.kmheight),
          customTextFieldIcon(
            data.venueName,
            "Venue Name",
            validationFunction: (value) {
              if (!RegExp(r'^[a-zA-Z0-9]*$').hasMatch(value!)) {
                return "Should not contain any special character";
              }
              return null;
            },
            const Icon(CupertinoIcons.search),
          ),
          const SizedBox(height: AppSize.kmheight),
          customTextFieldIcon(
            data.pincode,
            "Pincode",
            validationFunction: (value) {
              if (!RegExp(r'^[1-9][0-9]{5}$').hasMatch(value!)) {
                return "Only 6 digit pincode allowed";
              }
              return null;
            },
            const Icon(CupertinoIcons.search),
          ),
          const SizedBox(height: AppSize.kmheight),
          customTextFieldIcon(
            data.city,
            "City/Town/Village",
            validationFunction: (value) {
              if (!RegExp(r'^[a-zA-Z0-9]*$').hasMatch(value!)) {
                return "Should not contain any special character";
              }
              return null;
            },
            const Icon(CupertinoIcons.search),
          ),
          const SizedBox(height: AppSize.kmheight),
        ],
      ),
    );
  }
}
