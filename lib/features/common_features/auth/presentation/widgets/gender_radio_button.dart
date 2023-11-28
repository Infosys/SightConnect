import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class GenderRadioButton extends StatelessWidget {
  const GenderRadioButton({
    super.key,
    required this.label,
    required this.value,
    required this.groupValue,
    this.onChanged,
  });

  final String label;
  final String value;
  final String groupValue;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        const SizedBox(width: AppSize.kswidth),
        Text(
          label,
          style: applyRobotoFont(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
