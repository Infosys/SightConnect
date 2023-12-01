import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GenderInput extends HookWidget {
  const GenderInput({super.key});

  // SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    var gender = useState<int>(-1);

    return FormField(
        validator: (value) {
          if (value == null ) {
          return 'Please Select Gender Date';
        }
        return null;
      },
      builder: (FormFieldState<dynamic> field) { 
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                  groupValue: gender.value,
                  onChanged: (value) {
                    gender.value = value!;
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
                  groupValue: gender.value,
                  onChanged: (value) {
                    gender.value = value!;
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
                  groupValue: gender.value,
                  onChanged: (value) {
                    gender.value = value!;
                  },
                ),
              ),
            ],
          )]);
  });}
}
