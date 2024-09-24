import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class DonorInformationSection extends StatelessWidget {
  const DonorInformationSection({super.key});
  @override
  Widget build(BuildContext context) {
    return AppFormSection(
      title: 'Donor Information',
      children: [
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Distributing Eye Bank',
            suffixIcon: Icon(
              Icons.search,
              color: AppColor.grey,
            ),
          ),
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Tissue ID',
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
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Cause of Death',
            suffixIcon: Icon(
              Icons.arrow_drop_down,
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
                  labelText: 'Preservation Date',
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
                  labelText: 'Preservation Time',
                ),
              ),
            ),
          ],
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Death-Preservation Interval (hours)',
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AppTextField.date(
                context: context,
                decoration: const InputDecoration(
                  labelText: 'Surgery Date',
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
                  labelText: 'Surgery Time',
                ),
              ),
            ),
          ],
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Death-Surgery Interval (hours)',
          ),
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Preservation Method',
            suffixIcon: Icon(
              Icons.arrow_drop_down,
              color: AppColor.grey,
            ),
          ),
        ),
        const AppTextField(
          decoration: InputDecoration(
            labelText: 'Media Lot Number',
          ),
        ),
      ],
    );
  }
}
