import 'package:dotted_border/dotted_border.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/providers/patient_triage_stepper_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/enums/tumbling_enums.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/tumbling_models.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../patient_triage_eye_scan/pages/patient_triage_eye_scan_page.dart';
import '../providers/patient_visual_acuity_test_provider.dart';

class SwipeGestureCard extends HookConsumerWidget {
  const SwipeGestureCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var dragDirection = useState<QuestionDirection>(QuestionDirection.up);
    var model = ref.watch(tumblingTestProvider);

    ref.listen(tumblingTestProvider, (previous, next) {
      if (next.currentEye == Eye.left && next.isGameOver!) {
        logger.d("Game Over for left eye");
        showTestCompleteDialog(context);
        next.startGame(Eye.right);
      } else if (next.currentEye == Eye.right && next.isGameOver!) {
        logger.d("Game Over for both eyes");

        logger.d(next.eyesFinalReport);

        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const TumblingResultReportPage(),
        //   ),
        // );
        _showSuccessTemp(context, ref);
      }
    });

    return GestureDetector(
      onVerticalDragEnd: (dragEndDetails) {
        model.handUserResponse(
          UserResponse(
            levelNumber: model.currentLevel!,
            swipeDirection: dragDirection.value,
            mode: model.gameMode!,
            questionIndex: model.currentIndex!,
            isUserResponseCorrect: false,
          ),
        );
      },
      onHorizontalDragEnd: (dragEndDetails) {
        model.handUserResponse(
          UserResponse(
            levelNumber: model.currentLevel!,
            swipeDirection: dragDirection.value,
            mode: model.gameMode!,
            questionIndex: model.currentIndex!,
            isUserResponseCorrect: false,
          ),
        );
      },
      onVerticalDragUpdate: (dragUpdateDetais) {
        if (dragUpdateDetais.delta.dy > 0) {
          //Swapped Down
          dragDirection.value = QuestionDirection.down;
        } else {
          //Swapped Up
          dragDirection.value = QuestionDirection.up;
        }
      },
      onHorizontalDragUpdate: (drageUpdateDetails) {
        if (drageUpdateDetails.delta.dx > 0) {
          //Swapped Right
          dragDirection.value = QuestionDirection.right;
        } else {
          //Swapped Left
          dragDirection.value = QuestionDirection.left;
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSize.kmpadding),
        child: DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(AppSize.klradius),
          padding: const EdgeInsets.all(AppSize.kspadding),
          color: AppColor.grey,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Center(
              child: Text(
                "Swipe in the direction of the symbol",
                style: applyRobotoFont(
                  fontSize: 14,
                  color: AppColor.grey,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showSuccessTemp(BuildContext context, WidgetRef ref) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return BlurDialogBox(
          title: Column(
            children: [
              Center(
                child: Image.asset(
                  AppImages.checkMark,
                  height: 40,
                  width: 40,
                  color: AppColor.green,
                ),
              ),
              const SizedBox(height: AppSize.kmpadding),
              Text(
                "Done! Visual acuity test is completed for the right eye.",
                style: applyRobotoFont(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          content: Text(
            "You need to capture your eye photos next.",
            style: applyFiraSansFont(
              fontSize: 14,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PatientTriageEyeScanPage(),
                    fullscreenDialog: true,
                  ),
                );
                ref.read(patientTriageStepperProvider).nextStep(2);
              },
              child: const Text("Proceed"),
            )
          ],
        );
      },
    );
  }

  showTestCompleteDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return BlurDialogBox(
          title: Column(
            children: [
              Center(
                child: Image.asset(
                  AppImages.checkMark,
                  height: 40,
                  width: 40,
                  color: AppColor.green,
                ),
              ),
              const SizedBox(height: AppSize.kmpadding),
              Text(
                "Done! Visual acuity test is completed for the left eye.",
                style: applyRobotoFont(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          content: Text(
            "Now, let's test your right eye.",
            style: applyFiraSansFont(
              fontSize: 14,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("I'm Ready"),
            )
          ],
        );
      },
    );
  }
}
