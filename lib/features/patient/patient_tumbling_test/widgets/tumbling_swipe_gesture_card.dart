import 'package:dotted_border/dotted_border.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_tumbling_test/pages/tumling_test_result_report_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/enums/tumbling_enums.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/tumbling_models.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/tumbling_test_provider.dart';

class TumblingSwipeGestureCard extends HookConsumerWidget {
  const TumblingSwipeGestureCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var dragDirection = useState<QuestionDirection>(QuestionDirection.up);
    var model = ref.watch(tumblingTestProvider);

    ref.listen(tumblingTestProvider, (previous, next) {
      if (next.currentEye == Eye.left && next.isGameOver!) {
        logger.d("Game Over for left eye");
        _showTestCompleteDialog(context);
        next.startGame(Eye.right);
      } else if (next.currentEye == Eye.right && next.isGameOver!) {
        logger.d("Game Over for right eyes");
        next.startGame(Eye.both);
        // logger.d(next.eyesFinalReport);
        _showSuccessTemp(context);
      } else if (next.currentEye == Eye.both && next.isGameOver!) {
        logger.d("Game Over for both eyes");
        logger.d(next.eyesFinalReport);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const TumblingResultReportPage(),
          ),
        );    
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

  void _showSuccessTemp(BuildContext context) {
    showDialog(
      useSafeArea: false,
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return SizedBox(
          width: AppSize.width(context) * 1,
          height: AppSize.height(context) * 1,
          child: Dialog(
            insetPadding: EdgeInsets.zero,
            child: SizedBox(
              width: AppSize.width(context) * 1,
              height: AppSize.height(context) * 1,
              child: Scaffold(
                  appBar: AppBar(
                    title: const Text("Visual Acuity Test"),
                  ),
                  body: SizedBox(
                    width: AppSize.width(context) * 1,
                    height: AppSize.height(context) * 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Test 3 - Both Eyes",
                            style: applyFiraSansFont(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            softWrap: true,
                          ),
                          const SizedBox(
                            height: AppSize.kmheight,
                          ),
                          Text(
                            "Do not cover any of your eyes and view the symbols that appear next with both eyes.",
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            softWrap: true,
                          ),
                          const SizedBox(
                            height: AppSize.kmheight + 2,
                          ),
                          Center(
                            child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColor.primary.withOpacity(0.12),
                                      offset: const Offset(0, 2),
                                      blurRadius: 20,
                                      spreadRadius: 20,
                                    ),
                                  ],
                                ),
                                height: AppSize.height(context) * 0.5,
                                width: AppSize.width(context) * 0.7,
                                child: Image.asset(
                                    "assets/images/Test1LeftEye.png")),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: const ButtonStyle(
                                    visualDensity: VisualDensity(vertical: -1),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                   
                                  },
                                  child: const Text("Start"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ),
        );
      },
    );
  }

  _showTestCompleteDialog(BuildContext context) {
    showDialog(
      useSafeArea: false,
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return SizedBox(
          width: AppSize.width(context) * 1,
          height: AppSize.height(context) * 1,
          child: Dialog(
            insetPadding: EdgeInsets.zero,
            child: SizedBox(
              width: AppSize.width(context) * 1,
              height: AppSize.height(context) * 1,
              child: Scaffold(
                  appBar: AppBar(
                    title: const Text("Visual Acuity Test"),
                  ),
                  body: SizedBox(
                    width: AppSize.width(context) * 1,
                    height: AppSize.height(context) * 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Test 2 - Right Eye",
                            style: applyFiraSansFont(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            softWrap: true,
                          ),
                          const SizedBox(
                            height: AppSize.kmheight,
                          ),
                          Text(
                            "Without pressing on the eyelid, cover the LEFT EYE with your hand. If you are wearing eyeglasses place your hand over the eyeglass.",
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            softWrap: true,
                          ),
                          const SizedBox(
                            height: AppSize.kmheight + 2,
                          ),
                          Center(
                            child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColor.primary.withOpacity(0.12),
                                      offset: const Offset(0, 2),
                                      blurRadius: 20,
                                      spreadRadius: 20,
                                    ),
                                  ],
                                ),
                                height: AppSize.height(context) * 0.5,
                                width: AppSize.width(context) * 0.7,
                                child: Image.asset(
                                    "assets/images/Test1LeftEye.png")),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: const ButtonStyle(
                                    visualDensity: VisualDensity(vertical: -1),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Start"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ),
        );
      },
    );
  }
}
