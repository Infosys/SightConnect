/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_onboarding/presentation/provider/vg_organisation_details_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VgProfileEditOrganisationTab extends ConsumerWidget {
  const VgProfileEditOrganisationTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(visionGuardianOrganisationDetailsProvider);
    return SingleChildScrollView(
      child: Column(children: [
        Card(
          elevation: 1,
          child: Container(
            padding: const EdgeInsets.all(AppSize.kl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  style: applyFiraSansFont(),
                  enabled: false,
                  initialValue: "Raghuram Kumar",
                  onChanged: (value) {
                    data.orgID.text = value;
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    label: Text(
                      "Escalating Manager",
                      style: applyFiraSansFont(),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.km * 1.5,
                ),
                TextFormField(
                  initialValue: data.orgID.text,
                  onChanged: (value) {
                    data.orgID.text = value;
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    label: Text(
                      "Org ID",
                      style: applyFiraSansFont(),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.km * 1.5,
                ),
                TextFormField(
                  initialValue: data.visionCenterCode.text,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Vision Center Code",
                        style: applyFiraSansFont(),
                      ),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.km * 1.5,
                ),
                TextFormField(
                  initialValue: data.doorNo.text,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Facility Address",
                        style: applyFiraSansFont(),
                      ),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.km * 1.5,
                ),
                TextFormField(
                  initialValue: data.street.text,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Village",
                        style: applyFiraSansFont(),
                      ),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.km * 1.5,
                ),
                TextFormField(
                  initialValue: data.subDistrict.text,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Subdistrict",
                        style: applyFiraSansFont(),
                      ),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.km * 1.5,
                ),
                TextFormField(
                  initialValue: data.district.text,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "District",
                        style: applyFiraSansFont(),
                      ),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.km * 1.5,
                ),
                TextFormField(
                  initialValue: data.city.text,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "City",
                        style: applyFiraSansFont(),
                      ),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.km * 1.5,
                ),
                TextFormField(
                  initialValue: data.state.text,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "State",
                        style: applyFiraSansFont(),
                      ),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.km * 1.5,
                ),
                TextFormField(
                  initialValue: data.pincode.text,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Pincode",
                        style: applyFiraSansFont(),
                      ),
                    ),
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.km,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: applyRobotoFont(
                        fontWeight: FontWeight.w500, color: AppColor.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Cancel",
                    style: applyRobotoFont(
                        fontWeight: FontWeight.w500, color: AppColor.primary),
                  ),
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
