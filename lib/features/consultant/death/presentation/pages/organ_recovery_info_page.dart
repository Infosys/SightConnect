import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_action_chip.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_drop_down.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_segment_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OrganRecoveryInfoPage extends HookWidget {
  const OrganRecoveryInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useState<GlobalKey<FormState>>(GlobalKey<FormState>());
    final isMobile = Responsive.isMobile(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Organ Recovery Information"),
        ),
        body: Form(
          key: formKey.value,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppCard(
                  title: "Recovery Method",
                  child: AppActionChip(
                    maxWidth: AppSize.width(context) * 0.8,
                    minWidth: AppSize.width(context) * 0.8,
                    items: const ["Enucleation", "In-Situ"],
                    onSelected: (value) {},
                  ),
                ),
                AppCard(
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.start,
                    runSpacing: isMobile ? 16 : 32,
                    spacing: isMobile ? 16 : 32,
                    children: [
                      AppTextField.date(
                        context: context,
                        decoration: const InputDecoration(
                          labelText: 'Recovery Date',
                          hintText: "DD-MM-YYYY",
                        ),
                      ),
                      AppTextField.time(
                        context: context,
                        decoration: const InputDecoration(
                          labelText: 'Recovery Time',
                          hintText: "HH:MM",
                        ),
                      ),
                      AppDropDown<String>(
                        intialValue: "Recovery done by",
                        items: const [
                          "Doctor",
                          "Nurse",
                          "Technician",
                          "Recovery done by"
                        ],
                        onChanged: (value) {
                          logger.d(value);
                        },
                      ),
                      AppDropDown<String>(
                        intialValue: "Assisted by",
                        items: const [
                          "Doctor",
                          "Nurse",
                          "Technician",
                          "Assisted by"
                        ],
                        onChanged: (value) {
                          logger.d(value);
                        },
                      ),
                      AppTextField(
                        maxWidth: AppSize.width(context) * 0.8,
                        minWidth: AppSize.width(context) * 0.8,
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          labelText: 'Comments',
                          hintText: 'Enter Comments',
                        ),
                      ),
                    ],
                  ),
                ),
                AppCard(
                  title: "Recovery Intent",
                  child: AppActionChip(
                    maxWidth: AppSize.width(context) * 0.8,
                    minWidth: AppSize.width(context) * 0.8,
                    items: const [
                      "Transplant",
                      "Research",
                      "Training",
                      "Others"
                    ],
                    onSelected: (value) {},
                  ),
                ),
                AppCard(
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.start,
                    runSpacing: isMobile ? 16 : 32,
                    spacing: isMobile ? 16 : 32,
                    children: [
                      AppTextField(
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          labelText: 'Storage Medium',
                          hintText: 'Enter Storage Medium',
                        ),
                      ),
                      AppTextField(
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          labelText: 'Lot Number',
                          hintText: 'Enter Lot Number',
                        ),
                      ),
                      AppTextField.date(
                        context: context,
                        decoration: const InputDecoration(
                          labelText: 'Expiry Date',
                          hintText: "DD-MM-YYYY",
                        ),
                      ),
                    ],
                  ),
                ),
                AppCard(
                  title: "Sclera Recovered?",
                  child: AppSegmentButton(
                    items: const ["Yes", "No"],
                    onSelected: (value) {
                      logger.d(value);
                    },
                  ),
                ),
                AppCard(
                  title: "Upload Consent Documents",
                  child: Column(
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.upload),
                        label: const Text("Upload"),
                      )
                    ],
                  ),
                ),
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
