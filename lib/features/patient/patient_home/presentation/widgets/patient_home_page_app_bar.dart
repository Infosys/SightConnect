import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/presentation/provider/patient_profile_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/modals/member_selection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientHomePageAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PatientHomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.white.withAlpha(350),
      title: Row(
        children: [
          SvgPicture.asset(AppIcon.logo),
          const SizedBox(width: AppSize.kmwidth),
          const Text(AppText.appName),
        ],
      ),
      actions: [
        Consumer(
          builder: (context, ref, child) {
            return ref.watch(getPatientProfileProvider).when(
              data: (patient) {
                final profilePhoto = patient.profile?.patient?.profilePhoto;
                return profilePhoto != null
                    ? InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (ctx) => const MemberSelectionPopUp(),
                            barrierDismissible: false,
                            barrierColor: AppColor.blackOpacity,
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColor.primary,
                              width: 2,
                            ),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: profilePhoto,
                            height: 40,
                            width: 40,
                            imageBuilder: (context, imageProvider) =>
                                CircleAvatar(
                              backgroundImage: imageProvider,
                            ),
                          ),
                        ),
                      )
                    : const CircleAvatar();
              },
              loading: () {
                return const CircleAvatar();
              },
              error: (e, s) {
                return const CircleAvatar();
              },
            );
          },
        ),
        const SizedBox(width: AppSize.kmwidth),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
