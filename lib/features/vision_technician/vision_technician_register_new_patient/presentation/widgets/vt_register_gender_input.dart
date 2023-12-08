import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTRegisterGenderInput extends ConsumerWidget {
  const VTRegisterGenderInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var gender = ref.watch(registerNewPatientProvider).genderValue;
    print(gender);
    print("value");

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Gender",
        style: applyRobotoFont(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
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
              groupValue: gender,
              onChanged: (value) {
                ref
                    .read(registerNewPatientProvider.notifier)
                    .setGenderValue(value);
              },
            ),
          ),
          Expanded(
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
              groupValue: gender,
              onChanged: (value) {
                ref
                    .read(registerNewPatientProvider.notifier)
                    .setGenderValue(value);
              },
            ),
          ),
          Expanded(
            child: RadioListTile<int>(
              visualDensity: VisualDensity.compact,
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Others",
                style: applyRobotoFont(
                  fontSize: 14,
                  color: AppColor.grey,
                ),
              ),
              value: 3,
              groupValue: gender,
              onChanged: (value) {
                ref
                    .read(registerNewPatientProvider.notifier)
                    .setGenderValue(value);
              },
            ),
          ),
        ],
      )
    ]);
  }
}
