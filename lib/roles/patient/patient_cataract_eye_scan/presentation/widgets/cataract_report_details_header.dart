import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PatientDetailHeader extends StatelessWidget {
  const PatientDetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSize.kspadding + 2, vertical: AppSize.kspadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.kspadding),
          color: AppColor.lightBlue,
        ),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(AppImages.familyPerson1),
            ),
            const SizedBox(
              width: AppSize.kspadding,
            ),
            Text(
              "Ragavan Kumar",
              style:
                  applyFiraSansFont(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Text(
              "Male, 68",
              style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.grey),
            )
          ],
        ),
      ),
    );
  }
}
