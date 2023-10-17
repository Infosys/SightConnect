import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NearbyVisionCentersCard extends StatelessWidget {
  const NearbyVisionCentersCard({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        // width: Responsive.isMobile(context)
        //     ? AppSize.width(context) * 0.96
        //     : AppSize.width(context) * 0.35,
        margin: const EdgeInsets.only(left: 16, right: 5),
        padding: const EdgeInsets.only(
            left: AppSize.kmpadding,
            top: AppSize.kmpadding,
            bottom: AppSize.kmpadding,
            right: AppSize.kmpadding),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(AppSize.ksradius),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data["name"],
              style: applyRobotoFont(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: AppSize.klheight,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(AppIcon.location,
                    height: 16,
                    colorFilter: const ColorFilter.mode(
                      AppColor.primary,
                      BlendMode.srcIn,
                    )),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  data["location"],
                  style: applyRobotoFont(
                    fontSize: 14,
                    color: const Color(0xff333333),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.ksheight,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  AppIcon.call,
                  height: 16,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  data["phone"],
                  style: applyRobotoFont(
                    fontSize: 14,
                    color: const Color(0xff333333),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.ksheight,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  AppIcon.location,
                  height: 16,
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  width: AppSize.width(context) * 0.7,
                  child: Text(
                    data["speciality"],
                    softWrap: true,
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: const Color(0xff333333),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
