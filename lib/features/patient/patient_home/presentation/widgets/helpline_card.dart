import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class HelplineCard extends StatelessWidget {
  const HelplineCard({super.key, required this.helpLine});

  final String helpLine;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.kmpadding,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.kmpadding,
          vertical: AppSize.kspadding + 2,
        ),
        decoration: const BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.all(
            Radius.circular(AppSize.kmradius * 3),
          ),
        ),
        child: Row(
          children: [
            Flexible(
              child: Text(
                "${loc.homeHelplineCardDescrition} ${AppText.tollFreeNumber}",
                style: applyRobotoFont(
                  fontSize: 12,
                  color: AppColor.white,
                ),
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () async {
                Uri phoneno = Uri.parse("tel:$helpLine");
                await launchUrl(phoneno);
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: AppColor.white,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  AppIcon.call,
                  height: 20,
                  width: 20,
                  colorFilter: const ColorFilter.mode(
                    AppColor.primary,
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
