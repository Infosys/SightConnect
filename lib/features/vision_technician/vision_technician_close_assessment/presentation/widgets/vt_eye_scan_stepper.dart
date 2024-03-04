import 'package:easy_stepper/easy_stepper.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/custom_step_vt.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTEyeScanStepper extends ConsumerWidget {
  const VTEyeScanStepper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isImageCaptured =
        ref.watch(vtCloseAssessmentHelperProvider).isImageCaptured;
    int currentStep = ref.watch(vtCloseAssessmentHelperProvider).currentStep;

    return EasyStepper(
      activeStep: currentStep,
      lineStyle: LineStyle(
        lineLength: Responsive.isMobile(context)
            ? AppSize.width(context) * 0.2
            : AppSize.width(context) * 0.3,
        lineType: LineType.normal,
        defaultLineColor: AppColor.grey,
      ),
      internalPadding: 16,
      padding: const EdgeInsets.all(24),
      showLoadingAnimation: true,
      stepRadius: 12,
      showStepBorder: false,
      steps: [
        vtCustomStep(
          "Left Eye",
          currentStep,
          0,
          isImageCaptured && currentStep == 0,
        ),
        vtCustomStep(
          "Right Eye",
          currentStep,
          1,
          isImageCaptured && currentStep == 1,
        ),
        vtCustomStep(
          "Both Eye",
          currentStep,
          2,
          isImageCaptured && currentStep == 2,
        ),
      ],
    );
  }
}
