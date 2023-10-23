import 'package:dotted_border/dotted_border.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/presentation/widgets/visual_acuity_dialog.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/data/models/tumbling_models.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return VisualAcuityDialog.showTestCompleteDialog(context);
            });
        next.startGame(Eye.right);
      } else if (next.currentEye == Eye.right && next.isGameOver!) {
        logger.d("Game Over for both eyes");

        logger.d(next.eyesFinalReport);

        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const TumblingResultReportPage(),
        //   ),
        // );
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return VisualAcuityDialog.showSuccessTemp(context);
            });
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
}
