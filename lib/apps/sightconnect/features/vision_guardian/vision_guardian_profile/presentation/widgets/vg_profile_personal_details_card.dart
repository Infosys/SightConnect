import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_profile/data/models/vg_profile_model.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VgProfilePersonalDetailsCard extends StatelessWidget {
  const VgProfilePersonalDetailsCard({super.key, required this.profileData});
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(),
              Text(
                loc.profilePagePersonalDetails,
                style: applyFiraSansFont(),
              ),
              const SizedBox(
                height: AppSize.km,
              ),
              Text(
                loc.vtHprId,
                style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
              ),
              Text(
                "-",
                style: applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
              ),
              const SizedBox(
                height: AppSize.ks,
              ),
              Text(
                loc.vtEmailId,
                style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
              ),
              Text(
                profileData.officialEmail ?? "-",
                style: applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
              ),
              const SizedBox(
                height: AppSize.ks,
              ),
              Text(
                loc.vtEducationalQualification,
                style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
              ),
              Text(
                profileData.registrationAcademic?.registrationData?[0]
                        .qualifications?[0].nameOfDegreeOrDiplomaObtained ??
                    "",
                style: applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
              ),
              const Divider(),
              Text(
                loc.vgAddressAndDoorNumber,
                style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
              ),
              Text(
                profileData.communicationAddress?.address ?? "",
                style: applyRobotoFont(fontSize: 14, color: AppColor.darkGrey),
              ),
              const SizedBox(
                height: AppSize.ks,
              ),
              Wrap(
                spacing: AppSize.width(context) / 4,
                runSpacing: 8.0,
                verticalDirection: VerticalDirection.down,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          loc.myProfileCity,
                          style: applyRobotoFont(
                              fontSize: 12, color: AppColor.grey),
                        ),
                        Text(
                          profileData.communicationAddress?.city ?? "",
                          style: applyRobotoFont(
                              fontSize: 14, color: AppColor.darkGrey),
                        ),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          loc.myProfileState,
                          style: applyRobotoFont(
                              fontSize: 12, color: AppColor.grey),
                        ),
                        Text(
                          profileData.communicationAddress?.state ?? "",
                          style: applyRobotoFont(
                              fontSize: 14, color: AppColor.darkGrey),
                        ),
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          loc.myProfilePinCode,
                          style: applyRobotoFont(
                              fontSize: 12, color: AppColor.grey),
                        ),
                        Text(
                          profileData.communicationAddress?.postalCode ?? "",
                          style: applyRobotoFont(
                              fontSize: 14, color: AppColor.darkGrey),
                        ),
                      ]),
                ],
              )
            ],
          )),
    );
  }
}
