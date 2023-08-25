import 'package:dotted_border/dotted_border.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class SwipeGestureCard extends StatelessWidget {
  const SwipeGestureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (dragUpdateDetais) {
        if (dragUpdateDetais.delta.dy > 0) {
          print("Downward");
        } else {
          print("Upward");
        }
      },
      onHorizontalDragUpdate: (drageUpdateDetails) {
        if (drageUpdateDetails.delta.dx > 0) {
          print("Right");
        } else {
          print("Left");
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
