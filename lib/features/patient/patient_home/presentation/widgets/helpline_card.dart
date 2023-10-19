import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HelplineCard extends StatelessWidget {
  const HelplineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
                boxShadow: appShadow(), color: AppColor.white.withOpacity(0.3)),
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
                    "Toll Free Number",
                    style: applyRobotoFont(fontSize: 14),
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    "1800 1800 1800",
                    style: TextStyle(
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
          Container(
            decoration: BoxDecoration(
              boxShadow: appShadow(),
            ),
            child: CircleAvatar(
              backgroundColor: AppColor.white,
              child: SvgPicture.asset(
                AppIcon.call,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
