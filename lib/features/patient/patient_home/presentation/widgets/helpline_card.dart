import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: applyLightShadow(),
              color: AppColor.white.withOpacity(0.3),
            ),
            child: SizedBox(
              width: AppSize.width(context) * 0.75,
              child: ListTile(
                horizontalTitleGap: 10,
                contentPadding: EdgeInsets.zero,
                visualDensity: const VisualDensity(vertical: -3),
                tileColor: AppColor.white,
                onTap: () async {},
                leading: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    backgroundColor: AppColor.blue.withOpacity(0.1),
                    child: SvgPicture.asset(
                      AppIcon.tollFree,
                    ),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 4.0),
                  child: Text(
                    context.loc!.tollFreeNumber,
                    style: applyRobotoFont(fontSize: 14),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    helpLine,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColor.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () async {
              Uri phoneno = Uri.parse("tel:$helpLine");
              await launchUrl(phoneno);
            },
            child: Container(
              decoration: BoxDecoration(
                boxShadow: applyLightShadow(),
              ),
              child: CircleAvatar(
                backgroundColor: AppColor.white,
                child: SvgPicture.asset(
                  AppIcon.call,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
