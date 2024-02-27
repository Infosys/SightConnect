import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_form_helper_widgets.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/provider/vg_details_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VgOnboardingPersonalNameCard extends HookConsumerWidget {
  const VgOnboardingPersonalNameCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(visionGuardianDetailsProvider);
    var selectedValue = useState<int>(-1);

    return Card(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            customTextField(context, data.name, "First Name"),
            const SizedBox(height: AppSize.klheight),
            customTextField(context, data.middleName, "Middle Name"),
            const SizedBox(height: AppSize.klheight),
            customTextField(context, data.lastName, "Last Name"),
            const SizedBox(height: AppSize.klheight),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Gender",
                  style: applyRobotoFont(
                      fontSize: 14, fontWeight: FontWeight.w400)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: SizedBox(
                    width: 100,
                    child: RadioListTile<int>(
                      visualDensity: VisualDensity.compact,
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "Male",
                        style: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.grey,
                        ),
                      ),
                      value: 1,
                      groupValue: selectedValue.value,
                      onChanged: (value) {
                        selectedValue.value = value!;
                        data.setGender = 'Male';
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: RadioListTile<int>(
                    visualDensity: VisualDensity.compact,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Female",
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.grey,
                      ),
                    ),
                    value: 2,
                    groupValue: selectedValue.value,
                    onChanged: (value) {
                      selectedValue.value = value!;
                      data.setGender = 'Female';
                    },
                  ),
                ),
                Flexible(
                  child: RadioListTile<int>(
                    visualDensity: VisualDensity.compact,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Other",
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.grey,
                      ),
                    ),
                    value: 3,
                    groupValue: selectedValue.value,
                    onChanged: (value) {
                      selectedValue.value = value!;
                      data.setGender = 'Other';
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.klheight),
            customTextField(context, data.abhaid, "HPR ID (Optional)"),
            const SizedBox(height: AppSize.klheight),
            customTextField(context, data.email, "Email ID"),
          ],
        ),
      ),
    );
  }
}
