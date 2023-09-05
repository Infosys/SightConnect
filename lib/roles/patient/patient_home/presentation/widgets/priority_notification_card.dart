import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PriorityNotificationCard extends StatelessWidget {
  const PriorityNotificationCard({Key? key, required this.data})
      : super(key: key);
  final Map<String, dynamic> data;
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.ksradius),
        child: Container(
          padding: const EdgeInsets.all(AppSize.kspadding),
          width: Responsive.isMobile(context)
              ? AppSize.width(context) * 0.8
              : AppSize.width(context) * 0.4,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.profileBg),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    maxRadius: 20,
                    minRadius: 18,
                    backgroundColor: AppColor.kGrey.withOpacity(0.8),
                    child: Text(
                      data["prefix"] ?? "",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.kWhite,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSize.kmwidth),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data["name"],
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.kWhite,
                          ),
                        ),
                        const SizedBox(height: AppSize.ksheight / 2),
                        Text(
                          data["profession"],
                          style: applyRobotoFont(
                            fontSize: 12,
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
                padding: const EdgeInsets.all(AppSize.kspadding),
                decoration: BoxDecoration(
                  color: AppColor.kWhite.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(
                    AppSize.ksradius / 2,
                  ),
                ),
                child: Text(
                  data["recommendation"],
                  maxLines: 1,
                  style: applyRobotoFont(fontSize: 11, color: AppColor.kWhite),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
