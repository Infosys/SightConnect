import 'package:flutter/material.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/responsive/responsive.dart';
import '../../../../../shared/theme/text_theme.dart';

Widget vgEventDataCards(BuildContext context) { 
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSize.ksradius),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(AppSize.ksradius),
      child: Container(
        padding: const EdgeInsets.all(AppSize.kspadding),
        width: Responsive.isMobile(context)
            ? AppSize.width(context) * 0.9
            : AppSize.width(context) * 0.5,
        color: AppColor.white,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: Responsive.isMobile(context)
                    ? AppSize.width(context) * 0.2
                    : AppSize.width(context) * 0.1,
              ),
              child: Image.asset(
                AppImages.aboutUs,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: AppSize.kswidth),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Responsive.isMobile(context)
                      ? AppSize.width(context) * 0.60
                      : AppSize.width(context) * 0.38,
                  child: Row(
                    children: [
                      Text(
                        "Eye Camp Gachibowli",
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.black,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppSize.klradius,
                          ),
                          color: AppColor.orange,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppSize.kspadding, vertical: 2),
                        child: Text(
                          "Upcoming",
                          style: applyRobotoFont(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text(
                  "ID V678798",
                  style: applyRobotoFont(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColor.grey,
                  ),
                ),
                const SizedBox(height: AppSize.ksheight),
                SizedBox(
                  width: Responsive.isMobile(context)
                      ? AppSize.width(context) * 0.60
                      : AppSize.width(context) * 0.38,
                  child: Row(
                    children: [
                      Text(
                        "17 Dec - 18 Dec 23",
                        style: applyRobotoFont(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "9 AM - 4 PM",
                        style: applyRobotoFont(
                          fontSize: 12,
                          color: AppColor.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: AppSize.ksheight / 3),
                    ],
                  ),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text(
                  "KV School, Gachibowli, Hyderabad",
                  style: applyRobotoFont(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColor.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
