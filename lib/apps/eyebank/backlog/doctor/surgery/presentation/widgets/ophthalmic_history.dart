import 'package:eye_care_for_all/apps/eyebank/backlog/doctor/surgery/presentation/widgets/surgery_form_sections.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class OphthalmicHistory extends StatelessWidget {
  const OphthalmicHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const SurgeryFormSections(
      title: 'Ophthalmic History',
      children: [
        AppTextField(
          decoration: InputDecoration(
            labelText: 'Pre-Operative Diagnosis',
          ),
        ),
        SizedBox(height: AppSize.ks),
        AppTextField(
          decoration: InputDecoration(
            labelText: 'Previous Ocular Surgeries',
          ),
        ),
        SizedBox(height: AppSize.ks),
        AppTextField(
          decoration: InputDecoration(
            labelText: 'Special Concerns',
          ),
        ),
        SizedBox(height: AppSize.ks),
        AppTextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.arrow_drop_down),
            labelText: 'Eye Grafted',
          ),
        ),
        SizedBox(height: AppSize.ks),
        AppTextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.arrow_drop_down),
            labelText: 'Surgery Type',
          ),
        ),
        SizedBox(height: AppSize.ks),
        AppTextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.arrow_drop_down),
            labelText: 'Surgery Sub-Type',
          ),
        ),
        SizedBox(height: AppSize.ks),
      ],
    );
  }
}
