import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_steps/presentation/pages/triage_eye_assessment_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_steps/presentation/pages/triage_member_selection_page.dart';
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
          style: const ButtonStyle(
            visualDensity: VisualDensity.comfortable,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TriageEyeAssessmentPage(),
                fullscreenDialog: true,
              ),
            );
          },
          child: const Text('Save & Proceed to Questions'),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text(
                          "Necessary Details",
                          style: applyFiraSansFont(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              focusNode: nameFocusNode,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.0, color: AppColor.kPrimary),
                                ),
                                labelText: "Name",
                                labelStyle: applyRobotoFont(
                                    fontSize: 14,
                                    color: nameFocus.value
                                        ? AppColor.kPrimary
                                        : AppColor.kBlack),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Gender"),
                    const SizedBox(
                      height: 15,
                    ),
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
                                  color: AppColor.kGrey,
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
                                color: AppColor.kGrey,
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
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        bottom: 25,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              focusNode: contactFocusNode,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.0, color: AppColor.kPrimary),
                                ),
                                labelText: "Contact Number",
                                labelStyle: applyRobotoFont(
                                    fontSize: 14,
                                    color: contactFocus.value
                                        ? AppColor.kPrimary
                                        : AppColor.kBlack),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                color: AppColor.kWhite,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(children: [
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
                    ))
              ]),
            ),
          )
        ],
      ),
    );
  }
}
