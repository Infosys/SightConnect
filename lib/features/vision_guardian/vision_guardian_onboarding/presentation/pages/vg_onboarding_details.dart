import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/pages/vg_onboarding_organisation.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/pages/vg_onboarding_personal.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/provider/vg_details_stepper_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/widgets/bottom.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:another_stepper/another_stepper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VgOnboardingDetails extends ConsumerWidget {
  const VgOnboardingDetails({super.key});
  @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int currentstep = ref.watch(vgdetailsstepperprovider).currentStep;

    return Scaffold(
      appBar: CustomAppbar(
        centerTitle: false,
        leadingIcon: const Icon(Icons.close),
        title: Text(
          'Onboarding',
          textAlign: TextAlign.left,
          style: applyFiraSansFont(
            color: AppColor.darkGrey,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
      // body: Stepper(
      //   type: StepperType.horizontal,
      //   steps: getSteps(),
      //   currentStep: currentstep,
      //   onStepContinue: () {
      //     setState(() {
      //       if (currentstep > 1) {
      //       } else {
      //         currentstep += 1;
      //       }
      //     });
      //   },
      //   physics: BouncingScrollPhysics(),
      // ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          children: [
            AnotherStepper(
              stepperList: [
                stepWidget(
                  currentstep,
                  0,
                ),
                stepWidget(
                  currentstep,
                  1,
                ),
              ],
              stepperDirection: Axis.horizontal,
              iconWidth: AppSize.ksheight * 2,
              iconHeight: AppSize.kswidth * 2,
              activeBarColor: AppColor.primary,
              verticalGap: AppSize.klheight,
              activeIndex: currentstep,
              barThickness: 1,
              inverted: true,
            ),
            const SizedBox(height: AppSize.klheight),
            if (currentstep == 0) const VgOnboardingPersonal(),
            if (currentstep == 1) const VgOnboardingOrganisation(),
            const Bottom(),
          ],
        ),
      ),
    );
  }

  // List<Step> getSteps() => [
  //       Step(
  //           isActive: currentstep >= 0,
  //           title: Text(""),
  //           content: VgOnboardingPersonal(),
  //           label: Text("Personal")),
  //       Step(
  //           title: Text(""),
  //           content: Container(),
  //           label: Text("Organisation"),
  //           isActive: currentstep >= 1)
  //     ];
  StepperData stepWidget(int currentIndex, int index) {
    return StepperData(
      subtitle:
          index == 0 ? StepperText("Personal") : StepperText("Organisation"),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: currentIndex == index
              ? AppColor.primary
              : (currentIndex < index ? AppColor.grey : AppColor.green),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            "",
            style: applyRobotoFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
