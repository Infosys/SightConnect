import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_steps/presentation/widgets/eye_assessment_ques_three.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EyeAssessementQuesTwo extends HookWidget {
  const EyeAssessementQuesTwo({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> symptoms = [
      {'one': 'Coloured Haloes', 'two': ''},
      {'one': 'Curtain like appearances', 'two': ''},
      {'one': 'Decreased vision', 'two': ''},
      {'one': 'Double vision', 'two': 'Chronic condition'},
      {'one': 'Difficulty looking at light', 'two': ''},
      {'one': 'Waviness of vision', 'two': ''},
      {'one': 'Flashes of light', 'two': ''},
      {'one': 'Floaters', 'two': 'seeing dark spots'},
      {'one': 'Loss of field of vision', 'two': ''},
    ];
    final containerStates =
        useState<List<bool>>(List.generate(symptoms.length, (index) => false));
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColor.kBlue,
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.kmpadding,
                    vertical: AppSize.kmpadding,
                  ),
                ),
                onPressed: () {},
                child: const Text("Step 1 of 3"),
              ),
              const SizedBox(width: AppSize.kmwidth),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Eye Assessment"),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("1. Are you facing sudden loss of vision?"),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    children: [
                      ...symptoms.asMap().entries.map(
                        (entry) {
                          final index = entry.key;

                          return HookBuilder(
                            builder: (BuildContext context) {
                              return GestureDetector(
                                onTap: () {
                                  containerStates.value[index] =
                                      !containerStates.value[index];
                                  print(containerStates.value[index]);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: containerStates.value[index]
                                              ? AppColor.kPrimary
                                              : AppColor.kGrey,
                                          width: 2),
                                      borderRadius: BorderRadius.circular(10)),
                                  width: AppSize.width(context) * 0.4,
                                  height: AppSize.height(context) * 0.08,
                                  child: Center(
                                      child: Wrap(
                                    direction: Axis.vertical,
                                    runAlignment: WrapAlignment.center,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    children: [
                                      Text(symptoms[index]['one']),
                                      if (symptoms[index]['two'] != '')
                                        Text(symptoms[index]['two'])
                                    ],
                                  )),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      visualDensity: VisualDensity.comfortable,
                      padding:
                          const MaterialStatePropertyAll(EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 10,
                      ))),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const EyeAssessementQuesThree(),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  child: Text(
                    "Next",
                    style:
                        applyRobotoFont(fontSize: 12, color: AppColor.kWhite),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
