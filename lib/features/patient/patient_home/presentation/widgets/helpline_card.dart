import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/app_info_service.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class HelplineCard extends StatelessWidget {
  const HelplineCard({super.key, required this.helpLine});

  final String helpLine;

  @override
  Widget build(BuildContext context) {
    // final loc = context.loc!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.km,
          vertical: AppSize.km * 0.5,
        ),
        decoration: const BoxDecoration(
          color: AppColor.lightRed,
          borderRadius: BorderRadius.all(
            Radius.circular(AppSize.km * 3),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: AutoSizeText(
                "In case of emergency, please call ${AppInfoService.tollFreeNumber}",
                style: applyRobotoFont(
                  fontSize: 12,
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                Uri phoneno = Uri.parse("tel:$helpLine");
                await launchUrl(phoneno);
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(left: AppSize.ks),
                decoration: const BoxDecoration(
                  color: AppColor.pureRed,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  AppIcon.call,
                  height: 12,
                  width: 12,
                  colorFilter: const ColorFilter.mode(
                    AppColor.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
