/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'dart:math' as math;

import 'package:eye_care_for_all/shared/constants/app_images.dart';
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
        SvgPicture.asset(AppImages.eyes),
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
                child: SvgPicture.asset(
                  height: height,
                  AppImages.handClose,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
