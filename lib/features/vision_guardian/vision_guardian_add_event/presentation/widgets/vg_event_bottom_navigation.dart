import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VisionGuardianEventBottomNavigationBar extends StatelessWidget {
  const VisionGuardianEventBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          children: [
            SizedBox(width: AppSize.width(context) * 0.05),
            Expanded(
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  // backgroundColor: MaterialStateProperty.all(AppColor.primary),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      side: const BorderSide(color: AppColor.primary),
                      borderRadius: BorderRadius.circular(AppSize.klradius),
                    ),
                  ),
                ),
                child: Text(
                  "Cancel",
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.primary,
                  ),
                ),
              ),
            ),
            SizedBox(width: AppSize.width(context) * 0.05),
            Expanded(
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColor.primary),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      side: const BorderSide(color: AppColor.primary),
                      borderRadius: BorderRadius.circular(AppSize.klradius),
                    ),
                  ),
                ),
                child: Text(
                  "Save",
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.white,
                  ),
                ),
              ),
            ),
            SizedBox(width: AppSize.width(context) * 0.05),
          ],
        ),
      );
  }
}