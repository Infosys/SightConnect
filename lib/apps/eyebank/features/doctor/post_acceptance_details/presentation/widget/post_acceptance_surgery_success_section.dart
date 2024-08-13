import 'package:eye_care_for_all/apps/eyebank/features/doctor/surgery/presentation/widgets/surgery_form_sections.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_segment_button.dart';
import 'package:flutter/material.dart';

class PostAcceptanceSurgerySuccessSection extends StatelessWidget {
  const PostAcceptanceSurgerySuccessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SurgeryFormSections(
      title: 'Pre-Operative Checklist',
      children: [
        _questionWidget('1. Is cornea suitable for transplantation?'),
        _questionWidget('2. Is the surgery successful?'),
      ],
    );
  }

  _questionWidget(String question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: applyRobotoFont(
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: AppSize.km,
        ),
        AppSegmentButton(
          items: const ["No", "Yes"],
          onSelected: (index) {},
        ),
        const SizedBox(
          height: AppSize.ks,
        ),
      ],
    );
  }
}
