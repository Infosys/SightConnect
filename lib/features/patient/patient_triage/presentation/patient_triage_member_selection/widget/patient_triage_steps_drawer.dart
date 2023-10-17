import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_result/provider/patient_triage_result_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/providers/patient_triage_stepper_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientTriageStepsDrawer extends ConsumerWidget {
  const PatientTriageStepsDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(patientTriageStepperProvider);
    return Drawer(
      width: AppSize.width(context),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/drawer_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSize.klheight),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                ),
                Text("Steps",
                    style: applyFiraSansFont(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
            Stepper(
              currentStep: model.currentStep > 3 ? 3 : model.currentStep,
              stepIconBuilder: (context, index) {
                if (index == StepState.complete) {
                  return Container(
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 20,
                      ));
                } else {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: const Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
                  );
                }
              },
              controlsBuilder: (context, controller) {
                return Container();
              },
              steps: [
                Step(
                  state: model.currentStep > 0
                      ? StepState.complete
                      : StepState.editing,
                  title: const Text("Step 1 - Eye Assessment Questions"),
                  subtitle: const Text("On Going"),
                  content: const Text(""),
                ),
                Step(
                  state: model.currentStep > 1
                      ? StepState.complete
                      : StepState.editing,
                  title: const Text("Step 2 - Visual Acuity Test"),
                  subtitle: const Text("Next Step"),
                  content: const Text(""),
                ),
                Step(
                  state: model.currentStep > 2
                      ? StepState.complete
                      : StepState.editing,
                  title: const Text("Step 3 - Eye Scan"),
                  subtitle: const Text("Pending"),
                  content: const Text(""),
                ),
                Step(
                  state: model.currentStep > 3
                      ? StepState.complete
                      : StepState.editing,
                  title: const Text("Step 4 - Assessment Results"),
                  subtitle: const Text("Complete all steps to view results"),
                  content: const Text(""),
                ),
              ],
            ),
            const SizedBox(height: AppSize.klheight),
            Row(
              children: [
                const SizedBox(
                  width: AppSize.kmwidth,
                ),
                OutlinedButton(
                  onPressed: () {
                    model.reset();
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    ref.read(patientDashboardProvider).changeIndex(0);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSize.width(context) * 0.2,
                    ),
                    child: Text(
                      "Exit",
                      style: applyRobotoFont(
                        fontWeight: FontWeight.w500,
                        color: AppColor.primary,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
