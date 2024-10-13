/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PartnerCard extends StatelessWidget {
  const PartnerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Padding(
      padding: const EdgeInsets.all(AppSize.km),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              loc.partnerCardTitle,
              style: applyFiraSansFont(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 16),
          FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset("assets/images/partner_bg.png"),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: SvgPicture.asset(AppImages.lvpeiLogo),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                // context.loc!.poweredByText,
                "Powered by",
                style: applyRobotoFont(
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                // context.loc!.digitalHealthCard,
                "Digital Public Health Stack",
                style: applyFiraSansFont(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
