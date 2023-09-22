import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/presentation/pages/patient_triage_questionnaire_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TriageAddMemberPage extends HookWidget {
  const TriageAddMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedValue = useState<int>(-1);
    final nameFocusNode = useFocusNode();
    final contactFocusNode = useFocusNode();
    final nameFocus = useState(false);
    final contactFocus = useState(false);
    nameFocusNode.addListener(() {
      nameFocus.value = nameFocusNode.hasFocus;
    });
    contactFocusNode.addListener(() {
      contactFocus.value = contactFocusNode.hasFocus;
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Member"),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width(context) * AppSize.knavbarwidth,
          vertical: AppSize.height(context) * 0.05,
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PatientTriageQuestionnairePage(),
                fullscreenDialog: true,
              ),
            );
          },
          child: const Text('Save & Proceed to Questions'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            children: [
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(AppSize.kmpadding),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Necessary Details",
                        style: applyFiraSansFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: AppSize.width(context) * 0.8,
                        child: TextField(
                          focusNode: nameFocusNode,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.0,
                                color: AppColor.primary,
                              ),
                            ),
                            labelText: "Name",
                            labelStyle: applyRobotoFont(
                              fontSize: 14,
                              color: nameFocus.value
                                  ? AppColor.primary
                                  : AppColor.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text("Gender"),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: 100,
                              child: RadioListTile<int>(
                                visualDensity: VisualDensity.compact,
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  "Male",
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    color: AppColor.grey,
                                  ),
                                ),
                                value: 1,
                                groupValue: selectedValue.value,
                                onChanged: (value) {
                                  selectedValue.value = value!;
                                },
                              ),
                            ),
                          ),
                          Flexible(
                            child: RadioListTile<int>(
                              visualDensity: VisualDensity.compact,
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                "Female",
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.grey,
                                ),
                              ),
                              value: 2,
                              groupValue: selectedValue.value,
                              onChanged: (value) {
                                selectedValue.value = value!;
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: AppSize.width(context) * 0.8,
                        child: TextField(
                          focusNode: contactFocusNode,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.0,
                                color: AppColor.primary,
                              ),
                            ),
                            labelText: "Contact Number",
                            labelStyle: applyRobotoFont(
                              fontSize: 14,
                              color: contactFocus.value
                                  ? AppColor.primary
                                  : AppColor.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Text(
                      'Additional Details',
                      style: applyFiraSansFont(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
