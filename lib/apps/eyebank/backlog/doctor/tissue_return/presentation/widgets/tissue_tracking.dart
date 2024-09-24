import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class TissueTrackingSection extends StatelessWidget {
  const TissueTrackingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppFormSection(
      title: 'Tissue Tracking',
      children: [
        const AppTextField(
          maxWidth: double.infinity,
          minWidth: double.infinity,
          decoration: InputDecoration(
            hintText: 'Tissue sent to',
            suffixIcon: Icon(Icons.search),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AppTextField.date(
                context: context,
                onChanged: (value) {},
                decoration: const InputDecoration(
                  hintText: "Date",
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: AppTextField.time(
                context: context,
                onChanged: (value) {},
                decoration: const InputDecoration(
                  hintText: "Time",
                ),
              ),
            ),
          ],
        ),
        const AppTextField(
          decoration: InputDecoration(
            hintText: 'Reason For Return',
            suffixIcon: Icon(Icons.expand_more),
          ),
        ),
        const AppTextField(
          decoration: InputDecoration(
            hintText: 'Method of Transport to Eye Bank',
            suffixIcon: Icon(Icons.expand_more),
          ),
        ),
        const AppTextField(
          decoration: InputDecoration(
            hintText: 'Storage conditions during absence',
            suffixIcon: Icon(Icons.expand_more),
          ),
        ),
      ],
    );
  }
}
