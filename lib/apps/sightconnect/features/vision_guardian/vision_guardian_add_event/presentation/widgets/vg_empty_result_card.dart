/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VisionGuardianEmptyResultCard extends StatelessWidget {
  final String type;
  const VisionGuardianEmptyResultCard({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image(
            width: AppSize.width(context) * 0.55,
            image: const AssetImage(
              "assets/images/search empty.png",
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.km,
        ),
        Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: AppSize.width(context) * 0.7,
            ),
            child: Text(
              loc.vgEmptyResults(type),
              textAlign: TextAlign.center,
              softWrap: true,
              style: applyRobotoFont(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColor.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
