import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class SurgeryInformationSection extends StatelessWidget {
  const SurgeryInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppFormSection(
      title: 'Surgery Information',
      children: [
        AppTextField(
          decoration: InputDecoration(
            labelText: 'Surgeon Name',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppColor.grey,
              ),
            ),
          ),
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Phone No.',
          ),
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Surgery Procedure',
          ),
        ),
        AppTextField(
          decoration: InputDecoration(
            labelText: 'Surgery Location',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppColor.grey,
              ),
            ),
          ),
        ),
        AppTextField.date(
          context: context,
          decoration: const InputDecoration(
            labelText: 'Date of Surgery',
          ),
        ),
      ],
    );
  }
}
