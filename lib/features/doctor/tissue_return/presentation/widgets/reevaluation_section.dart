import 'package:eye_care_for_all/features/doctor/tissue_return/presentation/widgets/tissue_return_form_section.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class ReevaluationSection extends StatelessWidget {
  const ReevaluationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return TissueReturnFormSection(
      title: 'Re-Evaluation',
      children: [
        Column(
          children: [
            AppCard(
              padding: 0,
              title: 'Slit Lamp',
              child: Column(
                children: [
                 AppTextField(
              decoration: const InputDecoration(
                hintText: 'Test Done By',
                suffixIcon: Icon(Icons.search),
              ),
            ),
             Row(
              children: [
                Expanded(
                  child:  AppTextField.date(
                          context: context,
                         
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                           
                            hintText: "Date",
                          ),
                        ),
                ),
                 SizedBox(width: 10),
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
                ],
              ),
            ),

             AppCard(
              padding: 0,
              title: 'Specular Microscopy',
              child: Column(
                children: [
                 AppTextField(
              decoration: const InputDecoration(
                hintText: 'Test Done By',
                suffixIcon: Icon(Icons.search),
              ),
            ),
             Row(
              children: [
                Expanded(
                  child:  AppTextField.date(
                          context: context,
                         
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                           
                            hintText: "Date",
                          ),
                        ),
                ),
                 SizedBox(width: 10),
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
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}