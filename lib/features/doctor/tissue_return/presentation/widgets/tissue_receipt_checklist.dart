import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/doctor/tissue_return/presentation/widgets/tissue_return_form_section.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_segment_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class TissueReceiptChecklist extends StatelessWidget {
  const TissueReceiptChecklist({super.key});

  @override
  Widget build(BuildContext context) {
    return TissueReturnFormSection(
      title: 'Tissue Receipt Checklist',
      children: [
        AppCard(
          padding:0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _questionWidget(
                '1. Tamper evident seal(s) are intact and do not appear to have been tampered?'),
            _questionWidget(
                '2. Tissue is cold and appears to have been refrigerated?'),
            _questionWidget(
                '3. The vial or viewing chamber is not broken or damaged?'),
            _questionWidget(
                '4. The accompanying paperwork matches the donor number?'),
            _questionWidget(
                '5. Media checked visually for consistency of color?'),
          ],
        )),
        AppCard(
          padding: 0,
          child: Column(
            children: [
              AppTextField(
                decoration: const InputDecoration(
                 
                  hintText: 'Completed by',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
             AppTextField.date(
                      context: context,
                     
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                       
                        hintText: "Date returned to Eye Bank",
                      ),
                    ),
              AppTextField.time(
                      context: context,
                     
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                      
                        hintText: "Time returned to Eye Bank",
                      ),
                    ),
            ],
          ),
        ),
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
