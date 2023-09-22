import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class NearbyVisionCentersCard extends StatelessWidget {
  const NearbyVisionCentersCard({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: Responsive.isMobile(context)
            ? AppSize.width(context) * 0.86
            : AppSize.width(context) * 0.35,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(AppSize.kmpadding),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(AppSize.ksradius),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data['hospitalName'],
              style: applyRobotoFont(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: AppSize.ksheight),
            Row(
              children: [
                const Icon(
                  Icons.pin_drop_outlined,
                  color: AppColor.blue,
                ),
                const SizedBox(width: AppSize.kswidth),
                Flexible(
                    child: Text(
                  data['location'],
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.grey,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )),
              ],
            ),
            const SizedBox(height: AppSize.kmheight),
            Row(
              children: [
                const Icon(
                  Icons.phone,
                  color: AppColor.blue,
                ),
                const SizedBox(width: AppSize.kswidth),
                Text(
                  data['mobileNumber'],
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
