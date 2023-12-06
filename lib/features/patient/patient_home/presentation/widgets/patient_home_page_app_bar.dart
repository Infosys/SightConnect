import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/presentation/provider/patient_profile_provider.dart';
import 'package:eye_care_for_all/main.dart';

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
        InkWell(
          customBorder: const CircleBorder(),
          onTap: () {
            // showDialog(
            //   context: context,
            //   builder: (context) => const MemberSelectionPopUp(),
            //   barrierDismissible: false,
            //   barrierColor: AppColor.blackOpacity,
            // );
          },
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 24,
                width: 62,
                padding: const EdgeInsets.all(4),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor,
                ),
                child: const Icon(
                  CupertinoIcons.chevron_down,
                  size: 16,
                  color: Colors.white,
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  var model = ref.watch(getPatientProfileProvider);

                  model.whenData(
                    (patient) {
                      return CircleAvatar(
                        radius: 20,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundImage:
                              patient.profile?.patient?.profilePhoto == null
                                  ? const AssetImage('assets/images/user.png')
                                  : CachedNetworkImageProvider(
                                      patient.profile!.patient!.profilePhoto!,
                                    ) as ImageProvider,
                        ),
                      );
                    },
                  );
                  return const SizedBox();
                },
              ),
            ],
          ),
        ),
        const SizedBox(width: AppSize.kmwidth),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
