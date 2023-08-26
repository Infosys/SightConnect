import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: AppSize.width * 0.9,
      child: Stack(
        children: [
          data["image"] != null
              ? ClipRRect(
                  child: Image.asset(
                    data["image"]!,
                    fit: BoxFit.cover,
                    height: 180,
                  ),
                )
              : const SizedBox(),
          Container(
            height: 180,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: AppColor.kBlack.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppSize.kmradius),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSize.klpadding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data["name"] ?? "",
                  softWrap: true,
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w500,
                    color: AppColor.kWhite,
                  ),
                ),
                const SizedBox(height: AppSize.ksheight),
                Container(
                  padding: const EdgeInsets.all(AppSize.kspadding),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColor.kWhite,
                    ),
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: AppColor.kWhite,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
