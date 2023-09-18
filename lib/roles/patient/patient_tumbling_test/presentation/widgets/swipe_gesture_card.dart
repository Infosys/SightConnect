import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_eye_scan/presentation/pages/patient_triage_eye_scan_intro_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/models/enums/tumbling_enums.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/models/tumbling_models.dart';

import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/providers/tumbling_test_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
        _showSuccessTemp(context);
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
          color: AppColor.kGrey,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Center(
              child: Text(
                "Swipe in the direction of the symbol",
                style: applyRobotoFont(
                  fontSize: 14,
                  color: AppColor.kGrey,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showSuccessTemp(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: AlertDialog.adaptive(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text(
              'Tumbling E Test is Done',
              style: applyFiraSansFont(
                fontSize: 18,
              ),
            ),
            content: Text(
              "You need to capture your eye photos next.",
              textAlign: TextAlign.justify,
              style: applyRobotoFont(
                fontSize: 14,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const PatientTriageEyeScanIntroPage(),
                      fullscreenDialog: true,
                    ),
                  );
                },
                child: const Text("Proceed"),
              ),
            ],
          ),
        );
      },
    );
  }

  showTestCompleteDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.kmradius),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Congratulations!! You have successfully completed the test for your left eye.",
                style: applyRobotoFont(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: AppSize.kmpadding),
              Text(
                "Now, let's test your right eye.",
                style: applyFiraSansFont(
                  fontSize: 14,
                ),
              ),
            ],
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
