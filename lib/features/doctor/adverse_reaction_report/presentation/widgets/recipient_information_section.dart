import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_radio_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class RecipientInformationSection extends StatelessWidget {
  const RecipientInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppFormSection(
      title: 'Recipient Information',
      children: [
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Patient Name',
            suffixIcon: Icon(
              Icons.search,
              color: AppColor.grey,
            ),
          ),
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Patient ID',
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AppTextField.date(
                  context: context,
                  decoration:
                      const InputDecoration(labelText: 'Date of Birth')),
            ),
            const SizedBox(
              width: AppSize.kl,
            ),
            const AppTextField(
              maxWidth: 120,
              minWidth: 120,
              decoration: InputDecoration(labelText: 'Age'),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Gender'),
            const SizedBox(height: AppSize.ks),
            AppRadioButton(
                maxWidth: double.infinity,
                minWidth: 300,
                items: const ['Male', 'Female', 'Others'],
                displayItems: const ['Male', 'Female', 'Others']),
          ],
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Pre-Operative Diagnosis',
          ),
        ),
      ],
    );
  }
}
