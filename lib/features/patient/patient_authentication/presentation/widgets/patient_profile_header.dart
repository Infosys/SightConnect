import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/profile_model.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
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
              child: patient.profile?.patient?.profilePhoto != null
                  ? Image.asset(
                      patient.profile!.patient!.profilePhoto!,
                      fit: BoxFit.cover,
                    )
                  : const CircleAvatar(
                      backgroundColor: AppColor.lightGrey,
                    ),
            ),
            title: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
              child: Text(
                patient.profile?.patient?.name ?? "",
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
                "${patient.profile?.patient?.parentPatientId ?? ""}",
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
                Flexible(
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
