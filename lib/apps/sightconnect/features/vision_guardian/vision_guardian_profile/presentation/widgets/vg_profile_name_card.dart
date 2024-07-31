import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_profile/data/models/vg_profile_model.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

class VgProfileNameCard extends StatelessWidget {
  const VgProfileNameCard({super.key, required this.profileData});
  final VgProfileModel profileData;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Container(
      padding: const EdgeInsets.all(AppSize.km),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.km - 5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: AppSize.km),
        child: Row(
          children: [
            SizedBox(
              child: (profileData.profilePhoto != null &&
                      profileData.profilePhoto!.isNotEmpty &&
                      profileData.profilePhoto != "string")
                  ? AppNetworkImage(
                      radius: 30,
                      imageUrl: profileData.profilePhoto!,
                    )
                  : AppNameAvatar(
                      name: profileData.personalInformation?.firstName ?? "",
                      color: const Color(0xffD4C1FF),
                      radius: 45,
                      fontSize: 30,
                    ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${profileData.personalInformation?.firstName!.capitalize() ?? ""} ${profileData.personalInformation?.lastName!.capitalize() ?? ""}",
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: AppSize.km),
                  Text(
                    "${profileData.id ?? ""}",
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: AppSize.km),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.profilePageGender,
                            style: applyRobotoFont(
                                fontSize: 10, color: AppColor.darkGrey),
                          ),
                          const SizedBox(
                            height: AppSize.ks / 2,
                          ),
                          Text(
                            "-",
                            style: applyRobotoFont(fontSize: 14),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: AppSize.km,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.profilePageMobile,
                            style: applyRobotoFont(
                                fontSize: 10, color: AppColor.darkGrey),
                          ),
                          const SizedBox(
                            height: AppSize.ks / 2,
                          ),
                          Text(
                            profileData.officialMobile ?? "",
                            style: applyRobotoFont(fontSize: 14),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
