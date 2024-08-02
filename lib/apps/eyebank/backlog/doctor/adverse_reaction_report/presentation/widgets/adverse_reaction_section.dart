import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_radio_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class AdverseReactionSection extends StatelessWidget {
  const AdverseReactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppFormSection(
      title: 'Adverse Reaction ',
      children: [
        AppTextField.date(
          context: context,
          decoration: const InputDecoration(
            labelText: 'Date of Diagnosis',
          ),
        ),
        AppRadioButton(
          minWidth: 500,
          maxWidth: 500,
          title: 'Adverse Reaction :',
          direction: "VERTICAL",
          items: const [
            'Primary Graft Failure',
            'Intraocular Infection (microbial endophthalmitis)',
            'Corneal Infection (microbial or viral keratitis)',
            'Transmission of Systemic or Viral Disease',
            'Evidence Suggestive of Prior Refractive Surgery',
            'Other'
          ],
          displayItems: const [
            'Primary Graft Failure',
            'Intraocular Infection (microbial endophthalmitis)',
            'Corneal Infection (microbial or viral keratitis)',
            'Transmission of Systemic or Viral Disease',
            'Evidence Suggestive of Prior Refractive Surgery',
            'Other'
          ],
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Other, please specify.',
          ),
        ),
        AppRadioButton(
          title: 'Probable Cause :',
          direction: "VERTICAL",
          items: const [
            'Due to Donor Tissue',
            'Not due to Donor Tissue',
          ],
          displayItems: const [
            'Due to Donor Tissue',
            'Not due to Donor Tissue',
          ],
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Reaction Description Including Treatment & Outcome.',
          ),
        ),
      ],
    );
  }
}
