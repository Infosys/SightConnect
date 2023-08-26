import 'package:dotted_border/dotted_border.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/local/fake_data_source.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumling_result_report_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_test_initiate_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ignore: must_be_immutable
class SwipeGestureCard extends ConsumerWidget {
  SwipeGestureCard({super.key});

  TumblistTestEDirection? dragDirection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(tumblingTestProvider);
    return GestureDetector(
      onVerticalDragEnd: (dragEndDetails) {
        model.evaluteResponse(dragDirection ?? TumblistTestEDirection.up);

        if (model.gameOver) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const TumblingResultReportPage(),
            ),
            (route) => route.isFirst,
          );
        }
      },
      onHorizontalDragEnd: (dragEndDetails) {
        model.evaluteResponse(dragDirection ?? TumblistTestEDirection.right);
      },
      onVerticalDragUpdate: (dragUpdateDetais) {
        if (dragUpdateDetais.delta.dy > 0) {
          //Swapped Down
          dragDirection = TumblistTestEDirection.down;
        } else {
          //Swapped Up
          dragDirection = TumblistTestEDirection.up;
        }
      },
      onHorizontalDragUpdate: (drageUpdateDetails) {
        if (drageUpdateDetails.delta.dx > 0) {
          //Swapped Right
          dragDirection = TumblistTestEDirection.right;
        } else {
          //Swapped Left
          dragDirection = TumblistTestEDirection.left;
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(AppSize.klpadding),
        child: DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(AppSize.klradius),
          padding: const EdgeInsets.all(AppSize.kspadding),
          color: AppColor.kGrey,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Container(
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
      ),
    );
  }
}
