import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/model/vt_profile_model.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VTProfilePersonalDetailsCard extends StatelessWidget {
  const VTProfilePersonalDetailsCard({super.key, required this.profileData});
  final VtProfileModel profileData;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(),
            Text(
              loc.vtPersonalDetails,
              style: applyFiraSansFont(),
            ),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            Text(
              loc.vtHprId,
              style: applyRobotoFont(fontSize: 14, color: AppColor.grey),
            ),
            Text(
              "-",
              style: applyRobotoFont(color: AppColor.darkGrey),
            ),
            const SizedBox(
              height: AppSize.ksheight,
            ),
            Text(
              loc.vtEmailId,
              style: applyRobotoFont(fontSize: 14, color: AppColor.grey),
            ),
            Text(
              profileData.officialEmail ?? "-",
              style: applyRobotoFont(color: AppColor.darkGrey),
            ),
            const SizedBox(
              height: AppSize.ksheight,
            ),
            Text(
              loc.vtEducationalQualification,
              style: applyRobotoFont(fontSize: 14, color: AppColor.grey),
            ),
            Text(
              profileData.registrationAcademic?.registrationData?[0]
                      .qualifications?[0].nameOfDegreeOrDiplomaObtained ??
                  "",
              style: applyRobotoFont(color: AppColor.darkGrey),
            ),
            const Divider(),
            Text(
              loc.vtAddressAndDoorNumber,
              style: applyRobotoFont(fontSize: 14, color: AppColor.grey),
            ),
            Text(
              profileData.communicationAddress?.address ?? "",
              style: applyRobotoFont(color: AppColor.darkGrey),
            ),
            const SizedBox(
              height: AppSize.ksheight,
            ),
            Wrap(
              spacing: AppSize.width(context) / 4,
              runSpacing: 8.0,
              verticalDirection: VerticalDirection.down,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    loc.vtCity,
                    style: applyRobotoFont(fontSize: 14, color: AppColor.grey),
                  ),
                  Text(
                    profileData.communicationAddress?.city ?? "",
                    style: applyRobotoFont(color: AppColor.darkGrey),
                  ),
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    loc.vtState,
                    style: applyRobotoFont(fontSize: 14, color: AppColor.grey),
                  ),
                  Text(
                    profileData.communicationAddress?.state ?? "",
                    style: applyRobotoFont(color: AppColor.darkGrey),
                  ),
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loc.vtPincode,
                      style:
                          applyRobotoFont(fontSize: 14, color: AppColor.grey),
                    ),
                    Text(
                      profileData.communicationAddress?.postalCode ?? "",
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
