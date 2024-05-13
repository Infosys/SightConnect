import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
    final isMobile = Responsive.isMobile(context);
    return Container(
      constraints: BoxConstraints(
        minWidth: isMobile ? AppSize.width(context) * 0.8 : 300,
        maxWidth: isMobile ? AppSize.width(context) * 0.8 : 300,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: Text(
              "Gender",
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.darkGrey,
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
                      selectedGender.value = value!;
                      genderController?.text = value;
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
                      selectedGender.value = value!;
                      genderController?.text = value;
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
                      selectedGender.value = value!;
                      genderController?.text = value;
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

enum GenderEnum {
  male(
    value: "MALE",
    displayValue: "Male",
  ),
  female(
    value: "FEMALE",
    displayValue: "Female",
  ),
  others(
    value: "OTHERS",
    displayValue: "Others",
  );

  final String value;
  final String displayValue;

  const GenderEnum({
    required this.value,
    required this.displayValue,
  });
}
