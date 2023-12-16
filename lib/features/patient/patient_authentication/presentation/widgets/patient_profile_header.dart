import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/profile_model.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/app_images.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/source/local/fake_data_source.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.patient});
  final PatientResponseModel patient;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.height(context) * 0.31,
      padding: const EdgeInsets.all(AppSize.kspadding),
      decoration: BoxDecoration(
        boxShadow: applyLightShadow(),
        image: const DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(AppImages.profileBg),
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(AppSize.klradius),
          bottomRight: Radius.circular(AppSize.klradius),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: AppSize.height(context) * 0.11),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(130),
              child: Image.asset(
                patient.profile!.patient!.profilePhoto ??
                    "assets/images/user.png",
                fit: BoxFit.cover,
              ),
            ),
            title: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
              child: Text(
                patient.profile!.patient!.name ?? "",
                style: applyFiraSansFont(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white),
              ),
            ),
            subtitle: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
              child: Text(
                profile["id"] ?? "",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.white.withOpacity(0.7),
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSize.kmheight),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.ksheight),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: InkWell(
                    onTap: () {
                      Uri phoneno = Uri.parse("tel:${profile["mobile"]}");
                      canLaunchUrl(number) {
                        launchUrl(number);
                      }

                      canLaunchUrl(phoneno);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(AppSize.kspadding),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white12,
                          ),
                          child: const Icon(
                            Icons.call_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        const SizedBox(
                          width: AppSize.ksheight / 2,
                        ),
                        Text(
                          patient.profile!.patient!.phoneNumber ?? "",
                          softWrap: true,
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.white.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: InkWell(
                    onTap: () {
                      Uri email = Uri.parse("mailto:${profile["email"]}");
                      canLaunchUrl(email) {
                        launchUrl(email);
                      }

                      canLaunchUrl(email);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(AppSize.kspadding),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white12,
                          ),
                          child: const Icon(
                            Icons.email_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        const SizedBox(width: AppSize.ksheight / 2),
                        Flexible(
                          child: Text(
                            patient.profile!.patient!.email ?? "",
                            softWrap: true,
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.white.withOpacity(0.8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
