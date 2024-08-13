import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_checkbox_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class FinalSignOffSection extends StatelessWidget {
  const FinalSignOffSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppFormSection(
      title: 'Final Sign Off',
      children: [
        const Text('Received at Eye Bank'),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Received by',
            suffixIcon: Icon(
              Icons.search,
              color: AppColor.grey,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AppTextField.date(
                context: context,
                decoration: const InputDecoration(
                  labelText: 'Date',
                ),
              ),
            ),
            const SizedBox(
              width: AppSize.kl,
            ),
            Expanded(
              child: AppTextField.time(
                context: context,
                decoration: const InputDecoration(
                  labelText: 'Time',
                ),
              ),
            ),
          ],
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Mate Cornea Tissue Number',
          ),
        ),
        AppCheckboxList(
          direction: 'VERTICAL',
          title: 'Mate Cornea Status',
          items: const [
            'No Adverse Reaction',
            'Adverse Reaction',
            'Tissue not used',
          ],
          displayItems: const [
            'No Adverse Reaction',
            'Adverse Reaction',
            'Tissue not used',
          ],
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Reason',
          ),
        ),
        AppCheckboxList(
            items: const ['Mate Culture results'],
            displayItems: const ['Mate Culture results']),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Results',
          ),
        ),
        AppCheckboxList(
            items: const ['Mate Culture not done'],
            displayItems: const ['Mate Culture not done']),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Form Completed by',
            suffixIcon: Icon(
              Icons.search,
              color: AppColor.grey,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AppTextField.date(
                context: context,
                decoration: const InputDecoration(
                  labelText: 'Date',
                ),
              ),
            ),
            const SizedBox(
              width: AppSize.kl,
            ),
            Expanded(
              child: AppTextField.time(
                context: context,
                decoration: const InputDecoration(
                  labelText: 'Time',
                ),
              ),
            ),
          ],
        ),
        AppCheckboxList(items: const [
          'Medical Directo’s Adverse Reaction Investigation Form Attached'
        ], displayItems: const [
          'Medical Directo’s Adverse Reaction Investigation Form Attached'
        ]),
      ],
    );
  }
}
