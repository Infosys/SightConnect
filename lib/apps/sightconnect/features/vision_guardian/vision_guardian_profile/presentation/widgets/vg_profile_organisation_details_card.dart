/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_profile/data/models/vg_profile_model.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VgProfileOrganisationDetailsCard extends StatelessWidget {
  const VgProfileOrganisationDetailsCard(
      {super.key, required this.profileData});
  final VgProfileModel profileData;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
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
              loc.vtOrganisationDetails,
              style:
                  applyFiraSansFont(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: AppSize.km,
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
              height: AppSize.km,
            ),
            Wrap(
              spacing: AppSize.width(context) / 7,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    loc.vtOrgId,
                    style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
                  ),
                  Text(
                    "ORG ${profileData.practiceGrants?[0].organization?.id}",
                    style:
                        applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
                  ),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    loc.vtFacilityType,
                    style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
                  ),
                  Text(
                    " ${profileData.practiceGrants?[0].organization?.facilityType}",
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
