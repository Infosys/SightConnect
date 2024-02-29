import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/model/vt_profile_model.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

class VTProfileNameCard extends StatelessWidget {
  const VTProfileNameCard({super.key, required this.profileData});
  final VtProfileModel profileData;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Container(
      padding: const EdgeInsets.all(AppSize.kmpadding),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.kmradius - 5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: AppSize.kmpadding),
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
                    "${profileData.personalInformation?.firstName ?? ""} ${profileData.personalInformation?.lastName ?? ""}",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    "${profileData.id ?? ""}",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: AppSize.kmheight),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.vtGender,
                            style: applyRobotoFont(
                              fontSize: 14,
                              color: AppColor.darkGrey,
                            ),
                          ),
                          const SizedBox(
                            height: AppSize.ksheight / 2,
                          ),
                          Text(
                            "-",
                            style: applyRobotoFont(fontSize: 14),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: AppSize.klwidth,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.vtMobile,
                            style: applyRobotoFont(
                              fontSize: 14,
                              color: AppColor.darkGrey,
                            ),
                          ),
                          const SizedBox(
                            height: AppSize.ksheight / 2,
                          ),
                          Text(
                            profileData.officialMobile ?? "",
                            style: applyRobotoFont(),
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
