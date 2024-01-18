import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/domain/models/enums/tumbling_enums.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/visual_acuity_dialog.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../core/constants/app_size.dart';
import '../../domain/models/tumbling_models.dart';
import '../providers/visual_acuity_test_provider.dart';
import 'dart:math';

class SwipeGestureCard extends HookConsumerWidget {
  const SwipeGestureCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var startPoint = useState<Offset>(const Offset(0, 0));
    var endPoint = useState<Offset>(const Offset(0, 0));
    var dragDirection = useState<QuestionDirection>(QuestionDirection.up);
    var model = ref.watch(tumblingTestProvider);
    final loc = context.loc!;

    ref.listen(tumblingTestProvider, (previous, next) async {
      if (next.currentEye == Eye.right && next.isGameOver!) {
        logger.d("Game Over for right eye");
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return VisualAcuityDialog.showEyeInstructionDialog(
                context, next.currentEye!);
          },
        );
        next.startGame(Eye.left);
      } else if (next.currentEye == Eye.left && next.isGameOver!) {
        logger.d("Game Over for right eye");
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return VisualAcuityDialog.showEyeInstructionDialog(
                context,
                next.currentEye!,
              );
            });
        next.startGame(Eye.both);
      } else if (next.currentEye == Eye.both && next.isGameOver!) {
        logger.d("Game Over for both eye");
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return const VisualAcuitySuccessDialog();
            });
      }
    });

    return GestureDetector(
      onPanStart: (details) {
        startPoint.value = details.localPosition;
      },
      onPanUpdate: (details) {
        endPoint.value = details.localPosition;
      },
      onPanEnd: (details) {
        double angleDegrees =
            _getAngleOfSwipe(startPoint.value, endPoint.value);

        if (angleDegrees >= 60 && angleDegrees <= 120) {
          dragDirection.value = QuestionDirection.down;
        } else if (angleDegrees >= 150 && angleDegrees <= 210) {
          dragDirection.value = QuestionDirection.left;
        } else if (angleDegrees >= 240 && angleDegrees <= 300) {
          dragDirection.value = QuestionDirection.up;
        } else if (angleDegrees >= 330 || angleDegrees <= 30) {
          dragDirection.value = QuestionDirection.right;
        } else {
          //Interactive toast, set [isIgnoring] false.
          AppToast.showToast(
            context,
            loc.swipeGestureError,
          );
          return;
        }

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
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(35)),
          color: AppColor.scaffold,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.1), // Shadow color at the top
              Colors.white.withOpacity(0.05),
              Colors.transparent, // Shadow color with less opacity
              AppColor.scaffold,
              AppColor.scaffold, // Original color of the container
            ],
            stops: const [
              0.0, // Shadow starts at the top of the container
              0.1,
              1, // Less opaque shadow starts at 20% of the container
              1,
              0.1, // Original color starts from 10% of the container
            ],
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35)),
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.none,
            children: [
              SvgPicture.asset(
                "assets/images/app_bg.svg",
                fit: BoxFit.fill,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: AppSize.height(context) * 0.3),
                  child: Text(
                    loc.swipeGestureCardText,
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: AppColor.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _getAngleOfSwipe(Offset startPoint, Offset endPoint) {
    double dx = endPoint.dx - startPoint.dx;
    double dy = endPoint.dy - startPoint.dy;

    double angleRadians = atan2(dy, dx);

    double angleDegrees = angleRadians * 180 / pi;
    if (angleDegrees < 0) {
      angleDegrees += 360;
    }
    return angleDegrees;
  }
}
