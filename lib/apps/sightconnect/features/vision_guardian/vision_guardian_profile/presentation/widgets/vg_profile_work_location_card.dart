/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_profile/data/model/vt_profile_model.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            Row(
              children: [
                Text(
                  "Work Location",
                  style: applyFiraSansFont(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Visibility(
                  visible:
                      profileData.currentWorkDetails?.chooseWorkStatus != null,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: AppSize.ks),
                    margin: const EdgeInsets.only(left: AppSize.ks),
                    decoration: BoxDecoration(
                      color: AppColor.lightGrey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      profileData.currentWorkDetails?.chooseWorkStatus ?? "",
                      style: applyRobotoFont(
                        fontSize: 16,
                        color: AppColor.darkGrey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.km,
            ),
            Wrap(
              spacing: AppSize.width(context) / 7,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Facility Name",
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
                    "Facility Code",
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
