import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/model/vt_profile_model.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VgProfileWorkLocationCard extends StatelessWidget {
  const VgProfileWorkLocationCard({super.key, required this.profileData});
  final VtProfileModel profileData;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.ks),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.km - 5),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(AppSize.km),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(),
            Text(
              "Work Location",
              style:
                  applyFiraSansFont(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: AppSize.km,
            ),
            Wrap(
              spacing: AppSize.width(context) / 7,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Village Code",
                    style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
                  ),
                  Text(
                    "-",
                    style:
                        applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
                  ),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Village",
                    style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
                  ),
                  Text(
                    "-",
                    style:
                        applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
                  ),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
