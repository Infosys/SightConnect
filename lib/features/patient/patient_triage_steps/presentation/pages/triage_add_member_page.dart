import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/presentation/pages/patient_triage_questionnaire_page.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/presentation/providers/patient_member_details_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/presentation/widget/member_details_form.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TriageAddMemberPage extends HookConsumerWidget {
  const TriageAddMemberPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedValue = useState<int>(-1);
    var provider = ref.watch(patientMemberDetailsProvider);
    return Scaffold(
      backgroundColor: AppColor.scaffold,
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
            provider.setresponse();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PatientTriageQuestionnairePage(),
                fullscreenDialog: true,
              ),
            );
          },
          child: const Text('Save & Proceed'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                      Text(
                        "Necessary Details",
                        style: applyFiraSansFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: MemberDetailsForm(
                              text: 'Name',
                            ))
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 5,
                          bottom: 25,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: MemberDetailsForm(
                              text: 'Date of Birth',
                              isDate: true,
                              numberKeyboard: true,
                            ))
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
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 5,
                          bottom: 25,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: MemberDetailsForm(
                              text: 'Mobile Number',
                              numberKeyboard: true,
                            ))
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 5,
                          bottom: 25,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: MemberDetailsForm(
                              text: 'Address (Pincode)',
                              numberKeyboard: true,
                            ))
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
