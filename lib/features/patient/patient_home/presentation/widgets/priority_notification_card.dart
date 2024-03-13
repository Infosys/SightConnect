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
        left: 14,
      ),
      color: AppColor.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.ks),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.ks),
        child: Container(
          padding: const EdgeInsets.all(AppSize.ks),
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
                    radius: 16,
                    backgroundColor: AppColor.grey.withOpacity(0.8),
                    child: Text(
                      data["prefix"] ?? "",
                      style: applyRobotoFont(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSize.km),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data["name"],
                          style: applyRobotoFont(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white,
                          ),
                        ),
                        const SizedBox(height: AppSize.ks / 3),
                        Text(
                          data["profession"],
                          style: applyRobotoFont(
                            fontSize: 10,
                            color: AppColor.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "1 min ago",
                    style: applyRobotoFont(
                      fontSize: 11,
                      color: AppColor.white.withOpacity(0.5),
                    ),
                  )
                ],
              ),
              const SizedBox(height: AppSize.ks),
              Container(
                padding: const EdgeInsets.all(AppSize.ks),
                decoration: BoxDecoration(
                  color: AppColor.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(
                    AppSize.ks / 2,
                  ),
                ),
                child: Text(
                  data["recommendation"],
                  maxLines: 2,
                  style: applyRobotoFont(fontSize: 11, color: AppColor.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
