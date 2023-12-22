import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/responsive/responsive.dart';
import '../../../../../shared/theme/text_theme.dart';

Widget vgEventDataCards(BuildContext context, VisionGuardianEventModel data) {
  return Container(
    padding: EdgeInsets.all(AppSize.kspadding),
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColor.white,
      boxShadow: applyLightShadow(),
      borderRadius: const BorderRadius.all(
        Radius.circular(AppSize.kmradius - 5),
      ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data.event_name!,
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
                          color: data.status != "Completed"
                              ? AppColor.orange
                              : AppColor.green,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppSize.kspadding, vertical: 2),
                        child: Text(
                          data.status!,
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
                  data.event_id!,
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
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_month_outlined,
                            color: AppColor.grey,
                            size: 15,
                          ),
                          const SizedBox(
                            width: AppSize.kswidth - 5,
                          ),
                          Text(
                            data.date!,
                            style: applyRobotoFont(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColor.grey,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Icon(
                            Icons.schedule,
                            color: AppColor.grey,
                            size: 15,
                          ),
                          const SizedBox(
                            width: AppSize.kswidth - 5,
                          ),
                          Text(
                            data.time!,
                            style: applyRobotoFont(
                              fontSize: 12,
                              color: AppColor.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSize.ksheight / 3),
                    ],
                  ),
                ),
                const SizedBox(height: AppSize.ksheight),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: AppColor.grey,
                      size: 15,
                    ),
                    const SizedBox(
                      width: AppSize.kswidth - 5,
                    ),
                    Text(
                      data.address!,
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
          ],
        ),
      ),
    ),
  );
}
