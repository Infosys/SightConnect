import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class TissueSourceInformationSection extends StatelessWidget {
  const TissueSourceInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppFormSection(
      title: 'Tissue Source Information',
      children: [
        AppTextField(
          decoration: InputDecoration(
            labelText: 'Tissue Obtained From',
            suffixIcon: Icon(
              Icons.search,
              color: AppColor.grey,
            ),
          ),
        ),
        AppTextField(
          decoration: InputDecoration(
            labelText: 'Recipient ID',
          ),
        ),
        AppTextField(
          decoration: InputDecoration(
            labelText: 'Tissue Distributed',
            suffixIcon: Icon(
              Icons.arrow_drop_down,
              color: AppColor.grey,
            ),
          ),
        ),
        AppTextField(
          decoration: InputDecoration(
            labelText: 'Imported Tissue Origin Eye Bank',
            suffixIcon: Icon(
              Icons.search,
              color: AppColor.grey,
            ),
          ),
        ),
        AppTextField(
          decoration: InputDecoration(
            labelText: 'Imported Tissue Origin Eye Bank ID No.',
          ),
        ),
      ],
    );
  }
}
