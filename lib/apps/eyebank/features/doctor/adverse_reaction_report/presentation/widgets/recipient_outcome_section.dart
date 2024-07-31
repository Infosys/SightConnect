import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_checkbox_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class RecipientOutcomeSection extends StatelessWidget {
  const RecipientOutcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppFormSection(
      title: 'Recipient Outcome Information',
      children: [
        AppCheckboxList(
          title: 'Donor Cultures',
          items: const [
            'Regraft',
            'Enucleation',
            'Other',
            'None',
          ],
          displayItems: const [
            'Regraft',
            'Enucleation',
            'Other',
            'None',
          ],
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Other, please specify.',
          ),
        ),
        AppCheckboxList(
          title: 'Recent Vision',
          direction: 'VERTICAL',
          items: const [
            'No Light Perception',
            'Light Perception - Counting Fingers',
            '6/60 or better',
          ],
          displayItems: const [
            'No Light Perception',
            'Light Perception - Counting Fingers',
            '6/60 or better',
          ],
        ),
      ],
    );
  }
}
