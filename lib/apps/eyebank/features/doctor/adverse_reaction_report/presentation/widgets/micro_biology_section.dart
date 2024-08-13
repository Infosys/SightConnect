import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_checkbox_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class MicroBiologySection extends StatelessWidget {
  const MicroBiologySection({super.key});
  @override
  Widget build(BuildContext context) {
    return AppFormSection(
      title: 'Microbiology',
      children: [
        AppCheckboxList(
          title: 'Donor Cultures',
          items: const [
            'Preservation Medium',
            'Corneoscleral',
            'Other',
            'Not Done',
          ],
          displayItems: const [
            'Preservation Medium',
            'Corneoscleral',
            'Other',
            'Not Done',
          ],
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Other, please specify.',
          ),
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Results',
          ),
        ),
        AppCheckboxList(
          title: 'Donor Cultures',
          items: const [
            'Aqueous',
            'Cornea',
            'Vitreous',
            'Other',
            'Not Done',
          ],
          displayItems: const [
            'Aqueous',
            'Cornea',
            'Vitreous',
            'Other',
            'Not Done',
          ],
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Other, please specify.',
          ),
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Results',
          ),
        ),
      ],
    );
  }
}
