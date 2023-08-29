import 'package:eye_care_for_all/core/constants/app_color.dart';
// import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CampaginsCard extends StatelessWidget {
  const CampaginsCard({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      constraints: const BoxConstraints(
        minHeight: 100,
        maxHeight: 100,
      ),
      child: Row(
        children: [
          data["image"] != null
              ? Image.asset(
                  data["image"]!,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                )
              : const SizedBox(),
          const SizedBox(
            width: AppSize.kswidth,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  data["title"] ?? "",
                  style: applyFiraSansFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: AppSize.ksheight,
                ),
                Text(
                  data["description"] ?? "",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: applyRobotoFont(
                    fontSize: 14,
                    color: AppColor.kGrey,
                  ),
                ),
                Flexible(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      "Read More",
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.kPrimary,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
