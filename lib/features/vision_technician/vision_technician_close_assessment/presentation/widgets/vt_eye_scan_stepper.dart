import 'package:easy_stepper/easy_stepper.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vision_technician_eye_scan_page_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/custom_step_vt.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTEyeScanStepper extends ConsumerWidget {
  const VTEyeScanStepper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isImageCaptured =
        ref.watch(visionTechnicianEyeScanProvider).isImageCaptured;
    int currentStep = ref.watch(visionTechnicianEyeScanProvider).currentStep;

    return EasyStepper(
      activeStep: currentStep,
      lineStyle: const LineStyle(
        lineLength: 140,
        lineSpace: 0,
        lineType: LineType.normal,
        defaultLineColor: AppColor.grey,
      ),
      internalPadding: 0,
      showLoadingAnimation: false,
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
