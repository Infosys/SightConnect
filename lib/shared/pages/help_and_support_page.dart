import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpAndSupportPage extends StatelessWidget {
  final String helpLine;
  const HelpAndSupportPage({
    super.key,
    required this.helpLine,
  });

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(loc.appDrawerHelpAndSupport),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            Center(
              child: SvgPicture.asset(
                AppImages.helpAndSupport,
              ),
            ),
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.primary,
              ),
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Reach out to us',
                    style: applyFiraSansFont(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: AppColor.white),
                    textAlign: TextAlign.left,
                    softWrap: true,
                  ),
                  ListTile(
                    onTap: () async {
                      Uri phoneno = Uri.parse("tel:$helpLine");
                      await launchUrl(phoneno);
                    },
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.white.withOpacity(0.2),
                      ),
                      child: SvgPicture.asset(
                        AppIcon.tollFree,
                        colorFilter: const ColorFilter.mode(
                          AppColor.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    title: Text(
                      '1800 1211 00411',
                      style: applyFiraSansFont(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: AppColor.white),
                    ),
                    subtitle: Text(
                      loc.tollFreeNumber,
                      style: applyRobotoFont(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: AppColor.white),
                    ),
                    trailing: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColor.white),
                      ),
                      child: SvgPicture.asset(
                        AppIcon.call,
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
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
