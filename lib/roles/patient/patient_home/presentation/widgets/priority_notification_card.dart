import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PriorityNotificationCard extends StatelessWidget {
  const PriorityNotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
        right: 10,
      ),
      color: AppColor.kPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.ksradius),
      ),
      child: Container(
        padding: const EdgeInsets.all(AppSize.kspadding),
        width: AppSize.width * 0.8,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  maxRadius: 20,
                  minRadius: 18,
                  backgroundImage: AssetImage(
                    "assets/images/doctor.png",
                  ),
                ),
                const SizedBox(width: AppSize.kmwidth),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Jagadish Rana",
                        style: applyRobotoFont(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.kWhite,
                        ),
                      ),
                      Text(
                        "Eye Surgeon",
                        style: applyRobotoFont(
                          fontSize: 10,
                          color: AppColor.kWhite.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "1 min ago",
                  style: applyRobotoFont(
                    fontSize: 11,
                    color: AppColor.kWhite.withOpacity(0.5),
                  ),
                )
              ],
            ),
            const SizedBox(height: AppSize.ksheight),
            Container(
              padding: const EdgeInsets.all(AppSize.kspadding / 2),
              decoration: BoxDecoration(
                color: AppColor.kWhite.withOpacity(0.4),
                borderRadius: BorderRadius.circular(
                  AppSize.ksradius / 2,
                ),
              ),
              child: Text(
                "Raghvan Kumar is recommended for Cataract surgery…",
                maxLines: 1,
                style: applyRobotoFont(fontSize: 11, color: AppColor.kWhite),
              ),
            )
          ],
        ),
      ),
    );
  }
}
