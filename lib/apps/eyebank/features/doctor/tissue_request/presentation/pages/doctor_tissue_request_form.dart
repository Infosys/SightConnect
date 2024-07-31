import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_checkbox_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class DoctorTissueRequestForm extends StatelessWidget {
  const DoctorTissueRequestForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: AppBar(
        title: Text(
          'Tissue Request Form',
          style: applyFiraSansFont(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Sugery Details',
                style: applyFiraSansFont(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 16),
              AppCard(
                  margin: null,
                  child: Wrap(
                    spacing: 62,
                    runSpacing: 16,
                    runAlignment: WrapAlignment.start,
                    alignment: WrapAlignment.start,
                    children: [
                      const AppTextField(
                        decoration: InputDecoration(
                          labelText: 'Surgery Location (Hospital)',
                          suffixIcon: Icon(
                            Icons.search,
                            size: 24,
                            color: Colors.grey,
                          ),
                          // counterText: "From Specular Evaluation",
                        ),
                      ),
                      AppTextField.date(
                        context: context,
                        decoration: const InputDecoration(
                          labelText: "Surgery Date",
                        ),
                      ),
                      AppTextField.time(
                        context: context,
                        decoration: const InputDecoration(
                          labelText: "Surgery Time",
                        ),
                      ),
                    ],
                  )),
              const SizedBox(height: 16),
              AppCard(
                margin: null,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Eye involved or eye to be transplanted',
                      style: applyFiraSansFont(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    AppCheckboxList(
                      items: const [
                        'Left Eye',
                        'Right Eye',
                      ],
                      displayItems: const [
                        'Left Eye',
                        'Right Eye',
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Tissue Type',
                      style: applyFiraSansFont(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    AppCheckboxList(
                      items: const [
                        'Cornea (Whole)',
                        'Pre-cut Cornea',
                        'Sclera',
                      ],
                      displayItems: const [
                        'Cornea (Whole)',
                        'Pre-cut Cornea',
                        'Sclera',
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Transplant Procedure',
                      style: applyFiraSansFont(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    AppCheckboxList(
                      items: const [
                        'PKP',
                        'Therapeutic',
                        'EK (DSEK/DSAEK?DMEK',
                        'ALK (DALK)',
                        'Other (KLAI, K-Pro, Other)',
                      ],
                      displayItems: const [
                        'PKP',
                        'Therapeutic',
                        'EK (DSEK/DSAEK?DMEK',
                        'ALK (DALK)',
                        'Other (KLAI, K-Pro, Other)',
                      ],
                    ),
                    const SizedBox(height: 16),
                    const AppTextField(
                      decoration: InputDecoration(
                        labelText: 'Other',
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Save & Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
