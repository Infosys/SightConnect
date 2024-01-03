import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_form_helper_widgets.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianEventDateTimeCard extends ConsumerWidget {
  const VisionGuardianEventDateTimeCard({super.key});

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
            "Date & Time",
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: AppSize.kmheight),
          Row(
            children: [
              customTextFieldDatePicker(
                data.startDate,
                "Start Date",
                context,
              ),
              const SizedBox(width: AppSize.kswidth),
              customTextFieldTimePicker(
                data.startTime,
                "Start Time",
                context,
              ),
            ],
          ),
          const SizedBox(height: AppSize.kmheight),
          Row(
            children: [
              customTextFieldDatePicker(
                data.endDate,
                "End Date",
                context,
              ),
              const SizedBox(width: AppSize.kswidth),
              customTextFieldTimePicker(
                data.endTime,
                "End Time",
                context,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
