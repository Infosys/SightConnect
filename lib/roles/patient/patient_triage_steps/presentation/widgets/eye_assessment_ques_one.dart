import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_steps/presentation/widgets/eye_assessment_ques_two.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EyeAssessementQuesOne extends HookWidget {
  const EyeAssessementQuesOne({super.key});

  @override
  Widget build(BuildContext context) {
    final colorState = useState<int>(-1);
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("1. Are you facing sudden loss of vision?"),
              const SizedBox(
                height: 40,
              ),
              Wrap(
                spacing: 15,
                runSpacing: 15,
                children: [
                  GestureDetector(
                    onTap: () {
                      colorState.value = 0;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: colorState.value == 0
                                  ? AppColor.kPrimary
                                  : AppColor.kGrey,
                              width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      width: AppSize.width(context) * 0.4,
                      height: AppSize.height(context) * 0.08,
                      child: const Center(child: Text("No")),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      colorState.value = 1;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: colorState.value == 1
                                  ? AppColor.kPrimary
                                  : AppColor.kGrey,
                              width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      width: AppSize.width(context) * 0.4,
                      height: AppSize.height(context) * 0.08,
                      child: const Center(child: Text("Yes")),
                    ),
                  ),
                ],
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
                      builder: (context) => const EyeAssessementQuesTwo(),
                      fullscreenDialog: true,
                    ),
                  );
                },
                child: Text(
                  "Next",
                  style: applyRobotoFont(fontSize: 12, color: AppColor.kWhite),
                ),
              ),
            ],
          ),
        ));
  }
}
