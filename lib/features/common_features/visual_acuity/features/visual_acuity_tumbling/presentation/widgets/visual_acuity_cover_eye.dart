import 'dart:math' as math;

import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class VisualAcuityCoverEye extends StatelessWidget {
  final bool isRightEyeCovered;
  final bool isLeftEyeCovered;
  final double height;
  const VisualAcuityCoverEye({
    super.key,
    this.isRightEyeCovered = false,
    this.isLeftEyeCovered = false,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          height: height,
          AppImages.eyes,
        ),
        isLeftEyeCovered
            ? Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  height: height,
                  AppImages.handClose,
                ),
              )
            : const SizedBox(),
        isRightEyeCovered
            ? Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: Positioned(
                  left: 20,
                  child: SvgPicture.asset(
                    height: height,
                    AppImages.handClose,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
