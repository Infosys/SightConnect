import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/profile_model.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/app_images.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.patient,
  });
  final PatientResponseModel patient;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.height(context) * 0.31,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.kmheight,
        vertical: AppSize.ksheight,
      ),
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
            contentPadding: EdgeInsets.zero,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                patient.profile?.patient?.profilePhoto != null
                    ? AppNetworkImage(
                        radius: 30,
                        imageUrl: patient.profile!.patient!.profilePhoto!,
                      )
                    : AppNameAvatar(
                        name: patient.profile?.patient?.name,
                        color: AppColor.blue,
                        radius: 30,
                        fontSize: 20,
                      ),
                const SizedBox(width: 16),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        patient.profile?.patient?.name ?? "",
                        maxLines: 1,
                        style: applyFiraSansFont(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: AppColor.white,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          "${patient.profile?.patient?.parentPatientId ?? ""}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.white.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: AppSize.height(context) * 0.02),
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.ksheight,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: InkWell(
                      onTap: () async {
                        final mobile = patient.profile?.patient?.phoneNumber;
                        if (mobile != null) {
                          Uri phoneno = Uri.parse("tel:$mobile");
                          await launchUrl(phoneno);
                        }
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
                          const SizedBox(width: AppSize.ksheight),
                          Text(
                            patient.profile?.patient?.phoneNumber ?? "",
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
                  const SizedBox(width: AppSize.kswidth),
                  Visibility(
                    visible: patient.profile?.patient?.email != null,
                    child: Flexible(
                      child: InkWell(
                        onTap: () async {
                          final mail = patient.profile?.patient?.email;
                          if (mail != null) {
                            Uri email = Uri.parse("mailto:$mail");

                            await launchUrl(email);
                          }
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
                            const SizedBox(width: AppSize.ksheight),
                            Flexible(
                              child: Text(
                                patient.profile?.patient?.email ?? "",
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
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
