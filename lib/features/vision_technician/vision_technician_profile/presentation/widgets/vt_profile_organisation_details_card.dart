import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/model/vt_profile_model.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VTProfileOrganisationDetailsCard extends StatelessWidget {
  const VTProfileOrganisationDetailsCard({
    super.key,
    required this.profileData,
  });
  
  final VtProfileModel profileData;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.kspadding),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.kmradius - 5),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(),
            Text(
              "Organisation Details",
              style: applyFiraSansFont(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            /*  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Escalating Manager",
                style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
              ),
              Text(
                "Raghuram Kumar",
                style: applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
              ),
            ]), */
            const SizedBox(
              height: AppSize.kmheight,
            ),
            Wrap(
              spacing: AppSize.width(context) / 7,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Org ID",
                    style: applyRobotoFont(fontSize: 14, color: AppColor.grey),
                  ),
                  Text(
                    "ORG ${profileData.practiceGrants?[0].organization?.id}",
                    style: applyRobotoFont(color: AppColor.darkGrey),
                  ),
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "FacilityType",
                      style:
                          applyRobotoFont(fontSize: 14, color: AppColor.grey),
                    ),
                    Text(
                      " ${profileData.practiceGrants?[0].organization?.facilityType}",
                      style: applyRobotoFont(color: AppColor.darkGrey),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
