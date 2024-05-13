import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_drop_down.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_radio_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_switch_field.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ScreeningPage extends HookWidget {
  const ScreeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useState<GlobalKey<FormState>>(GlobalKey<FormState>());
    final isMobile = Responsive.isMobile(context);
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Screening"),
      ),
      body: Form(
        key: formKey.value,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppCard(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.start,
                  runSpacing: isMobile ? 16 : 32,
                  spacing: isMobile ? 16 : 32,
                  children: [
                    AppTextField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        labelText: 'Donar Name',
                        hintText: 'Enter Donar Name',
                      ),
                    ),
                    AppTextField.date(
                      context: context,
                      onDateSelected: (date) {
                        logger.d(date);
                      },
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        labelText: 'Death Date',
                        hintText: "DD-MM-YYYY",
                      ),
                    ),
                    AppDropDown<String>(
                      intialValue: "Death Verified By",
                      items: const [
                        "Doctor",
                        "Nurse",
                        "Family Member",
                        "Others",
                        "Death Verified By"
                      ],
                      onChanged: (value) {
                        logger.d(value);
                      },
                    ),
                    AppTextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        labelText: 'Technician Name',
                        hintText:
                            'Enter Technician Name who verified the death',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                ),
                child: Text(
                  'Donar Information',
                  style: applyFiraSansFont(fontSize: 18),
                ),
              ),
              AppCard(
                child: AppTextField(
                  minWidth: AppSize.width(context) * 0.8,
                  maxWidth: AppSize.width(context) * 0.8,
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: 'Physical Examination Findings',
                    hintText: 'Enter Physical Examination Findings',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                ),
                child: Text(
                  'Medico-Legal Information',
                  style: applyFiraSansFont(fontSize: 18),
                ),
              ),
              AppCard(
                child: AppSwitchField(
                  "Medico-Legal Case",
                  isSelected: (value) {
                    logger.d(value);
                  },
                ),
              ),
              AppCard(
                child: AppSwitchField(
                  "Autopsy Performed?",
                  isSelected: (value) {
                    logger.d(value);
                  },
                ),
              ),
              AppCard(
                child: AppRadioButton<String>(
                  title: "Outcome",
                  direction: "VERTICAL",
                  items: const [
                    "Screened and suitable for harvest",
                    "Not Screened",
                    "Screened - Not Suitable due to reasons:"
                  ],
                  displayItems: const [
                    "Screened and suitable for harvest",
                    "Not Screened",
                    "Screened - Not Suitable due to reasons:"
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            if (formKey.value.currentState!.validate()) {
              logger.d("Form is valid");
            }
          },
          child: const Text("Submit"),
        ),
      ),
    );
  }
}
