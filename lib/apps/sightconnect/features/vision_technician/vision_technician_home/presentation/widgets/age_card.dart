/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/presentation/widgets/color_dot.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AgeCard extends StatelessWidget {
  const AgeCard(this.color, this.data, {super.key});
  final Color color;
  final String data;
  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ColorDot(color: color),
        AutoSizeText(
          maxLines: 1,
          data,
          style: applyRobotoFont(
            fontSize: isMobile ? 12 : 16,
          ),
        ),
      ],
    );
  }
}
