import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/fake_data_source.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/provider/patient_assessments_and_test_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/assements_cards.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentsAndTestsPage extends HookConsumerWidget {
  const AssessmentsAndTestsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(assessmentsAndTestProvider);
    var selectedName = useState<String>(people[0]['name']);
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Assessments and Tests"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Here is a quick view of the assessments done so far.",
              style: applyRobotoFont(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: AppSize.kmheight),
            Row(
              children: [
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: InkWell(
                      onTap: () {
                        state.setSelectedOption = 1;
                      },
                      child: Text(
                        "All",
                        style: applyRobotoFont(
                          color: AppColor.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: AppSize.kswidth,
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: AppColor.black.withOpacity(0.6),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5.0,
                      vertical: 0,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedName.value,
                        onChanged: (newValue) {
                          selectedName.value = newValue!;
                          state.setSelectedOption = 2;
                          state.setSelectedName = newValue;
                        },
                        icon: const Icon(
                          CupertinoIcons.chevron_down,
                          color: AppColor.black,
                        ),
                        iconSize: 18,
                        elevation: 0,
                        dropdownColor: AppColor.white,
                        items: people.map((person) {
                          return DropdownMenuItem<String>(
                            enabled: true,
                            value: person['name'],
                            child: Row(
                              children: [
                                Image.asset(
                                  person['image'],
                                  width: 25,
                                  height: 25,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  person['name'],
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.kmheight),
            Consumer(
              builder: (context, ref, child) {
                return ref.watch(getEyeAssessmentReport).when(
                  data: (data) {
                    return Expanded(
                      child: AssessmentCards(
                        data: data,
                      ),
                    );
                  },
                  error: (error, _) {
                    return Text("No Data Found");
                  },
                  loading: () {
                    return CircularProgressIndicator();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
