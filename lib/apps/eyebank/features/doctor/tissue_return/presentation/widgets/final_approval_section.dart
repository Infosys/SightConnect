import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_segment_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class FinalApproval extends StatelessWidget {
  const FinalApproval({super.key});

  @override
  Widget build(BuildContext context) {
    return AppFormSection(title: 'Final Approval', children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _questionWidget('Tissue Suitable for re-distribution'),
          const AppTextField(
            decoration: InputDecoration(
              hintText: 'Approved by',
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ],
      )
    ]);
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
