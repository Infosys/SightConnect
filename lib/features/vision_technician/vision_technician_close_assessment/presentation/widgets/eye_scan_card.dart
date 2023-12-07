import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EyeScanCard extends StatelessWidget {
  const EyeScanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.width(context),
      margin: const EdgeInsets.symmetric(vertical: AppSize.kmpadding),
      padding: const EdgeInsets.all(AppSize.kmpadding),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: BorderRadius.circular(AppSize.kmradius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Eye Scan",
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.kmheight),
          TextButton(
            onPressed: () {
              
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  horizontal: AppSize.kmpadding,
                  vertical: AppSize.kspadding,
                ),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.klradius * 2),
                  side: const BorderSide(color: AppColor.primary),
                ),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  CupertinoIcons.camera_viewfinder,
                  color: AppColor.primary,
                ),
                const SizedBox(width: AppSize.kswidth),
                Text(
                  "Take Picture",
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.primary,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: AppSize.ksheight),
        ],
      ),
    );
  }
}
