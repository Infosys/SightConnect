import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_drop_down.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_radio_button.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DeathNotificationPage extends HookWidget {
  const DeathNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useState<GlobalKey<FormState>>(GlobalKey<FormState>());
    final isMobile = Responsive.isMobile(context);
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Death Notification"),
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
                    AppDropDown<String>(
                      intialValue: "Referral Method",
                      items: const [
                        "Hospital",
                        "Eye Donation Center",
                        "NGO",
                        "Police",
                        "Others",
                        "Referral Method"
                      ],
                      onChanged: (value) {
                        logger.d(value);
                      },
                    ),
                    AppTextField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        labelText: 'Phone',
                        hintText: 'Enter Phone',
                      ),
                    ),
                    AppTextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        labelText: 'Caller Full Name',
                        hintText: 'Enter Caller Full Name',
                      ),
                    ),
                    AppDropDown<String>(
                      intialValue: "Relationship",
                      items: const [
                        "Father",
                        "Mother",
                        "Brother",
                        "Sister",
                        "Son",
                        "Daughter",
                        "Husband",
                        "Wife",
                        "Relationship"
                      ],
                      onChanged: (value) {
                        logger.d(value);
                      },
                    ),
                    AppTextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        labelText: 'Name of Hospital or Eye Donation Center',
                        hintText:
                            'Enter Name of Hospital or Eye Donation Center',
                      ),
                    ),
                    AppTextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        labelText: 'Location',
                        hintText: 'Enter Location',
                      ),
                    ),
                  ],
                ),
              ),
              AppCard(
                title: 'Donar Information',
                child: Wrap(
                  runSpacing: isMobile ? 16 : 32,
                  spacing: isMobile ? 16 : 32,
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.start,
                  children: [
                    AppTextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        hintText: 'Enter Name',
                      ),
                    ),
                    AppTextField.dob(
                      onDateSelected: () {},
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        labelText: 'Date of Birth',
                        hintText: "DD-MM-YYYY",
                      ),
                    ),
                    AppRadioButton<String>(
                      title: "Gender",
                      items: const ["MALE", "FEMALE", "OTHER"],
                      displayItems: const ["Male", "Female", "Other"],
                      onChanged: (value) {
                        logger.d(value);
                      },
                    ),
                    const AppTextField(
                      decoration: InputDecoration(
                        labelText: 'Religion',
                        hintText: 'Enter Religion',
                      ),
                    ),
                    const AppTextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Height',
                        hintText: 'Enter Height',
                      ),
                    ),
                    const AppTextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Weight',
                        hintText: 'Enter Weight',
                      ),
                    ),
                    const AppTextField(
                      decoration: InputDecoration(
                        labelText: 'Cause of Death',
                        hintText: 'Enter Cause of Death',
                      ),
                    ),
                    AppTextField.dob(
                      onDateSelected: () {},
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        labelText: 'Admission Date',
                        hintText: "DD-MM-YYYY",
                      ),
                    ),
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
