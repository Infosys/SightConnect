import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_drop_down.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_radio_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_segment_button.dart';
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
    var isInfusion = useState<bool>(true);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screening"),
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
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 16,
                  ),
                  child: Text(
                    'Hemodilution Test',
                    style: applyFiraSansFont(fontSize: 18),
                  ),
                ),
                AppCard(
                  title:
                      "Did the donor receive an infusion or transfusion prior to providing the sample for collection?",
                  titleBottomSize: 16,
                  child: Column(
                    children: [
                      AppSegmentButton(
                        items: const ["Yes", "No"],
                        onSelected: (value) {
                          if (value == "Yes") {
                            isInfusion.value = true;
                          } else {
                            isInfusion.value = false;
                          }
                        },
                      ),
                    ],
                  ),
                ),
                isInfusion.value
                    ? Container()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppCard(
                              enableBorder: true,
                              color: AppColor.green,
                              title: 'System Recommendation',
                              child: Text(
                                  'Since there was no infusion or transfusion prior to sample collection, the sample is fit for testing.')),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              top: 16,
                            ),
                            child: Text(
                              'Final Review',
                              style: applyFiraSansFont(fontSize: 18),
                            ),
                          ),
                          AppCard(
                            title:
                                "Hemodilution test has been reviewed and determined acceptable.",
                            titleBottomSize: 16,
                            child: Column(
                              children: [
                                AppSegmentButton(
                                  items: const ["Accept", "Reject"],
                                  onSelected: (value) {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: Responsive.isMobile(context)
              ? const EdgeInsets.all(AppSize.km)
              : EdgeInsets.fromLTRB(AppSize.km, AppSize.km,
                  AppSize.width(context) / 1.1, AppSize.km),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Submit'),
          ),
        ));
  }
}
