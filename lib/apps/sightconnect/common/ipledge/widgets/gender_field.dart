import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../data/enums.dart';

class GenderField extends HookWidget {
  const GenderField({
    this.genderController,
    this.activeColor,
    super.key,
  });

  final TextEditingController? genderController;
  final Color? activeColor;

  @override
  Widget build(BuildContext context) {
    final selectedGender = useState<String>(genderController?.text ?? "");

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              "Gender *",
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.grey,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Radio(
                    value: GenderEnum.male.value,
                    groupValue: selectedGender.value,
                    onChanged: (value) {
                      // selectedGender.value = value!;
                      // genderController?.text = value;
                    },
                  ),
                  Text(
                    GenderEnum.male.displayValue,
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: AppColor.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: GenderEnum.female.value,
                    groupValue: selectedGender.value,
                    onChanged: (value) {
                      // selectedGender.value = value!;
                      // genderController?.text = value;
                    },
                  ),
                  Text(
                    GenderEnum.female.displayValue,
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: AppColor.grey,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio<String>(
                    value: GenderEnum.others.value,
                    groupValue: selectedGender.value,
                    onChanged: (value) {
                      // selectedGender.value = value!;
                      // genderController?.text = value;
                    },
                  ),
                  Text(
                    GenderEnum.others.displayValue,
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: AppColor.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
