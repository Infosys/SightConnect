import 'package:eye_care_for_all/apps/eyebank/backlog/doctor/surgery/presentation/widgets/surgery_form_sections.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_radio_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class RecipientDetailsCard extends StatelessWidget {
  const RecipientDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SurgeryFormSections(
      title: 'Recipient Details',
      children: [
        const Row(
          children: [
            Expanded(
              child: AppTextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSize.ks),
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
        const SizedBox(height: AppSize.km),
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
            labelText: 'Mobile Number',
          ),
        ),
        const SizedBox(height: AppSize.ks),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Email ID (Optional)',
          ),
        ),
        const SizedBox(height: AppSize.ks),
      ],
    );
  }
}
