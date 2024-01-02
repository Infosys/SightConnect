import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
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
          Consumer(
            builder: (context, ref, child) {
              final model = ref.watch(dioProvider);
              return InkWell(
                  onTap: () async {
                    try {
                      logger.i("Dio Interceptor onERROR");
                      final res = await model.get("https://flutter.dev/");
                      logger.i(res.data);
                    } catch (e) {
                      logger.e(e);
                    }
                  },
                  child: SvgPicture.asset(AppIcon.logo));
            },
          ),
          const SizedBox(width: AppSize.kmwidth),
          const Text(AppText.appName),
        ],
      ),
      actions: [
        Consumer(
          builder: (context, ref, child) {
            final patient = ref.watch(getPatientProfileProvider).asData?.value;
            if (patient == null) {
              return const CircleAvatar(
                backgroundColor: AppColor.lightGrey,
              );
            }
            final profileUrl = patient.profile?.patient?.profilePhoto;
            final name = patient.profile?.patient?.name;

            return InkWell(
              // onTap: () {
              //   showDialog(
              //     context: context,
              //     builder: (ctx) => MemberSelectionPopUp(
              //       patients: patient,
              //     ),
              //     barrierDismissible: false,
              //     barrierColor: AppColor.blackOpacity,
              //   );
              // },
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PatientProfilePage(),
                  ),
                );
              },
              child: Container(
                child: profileUrl != null
                    ? AppNetworkImage(imageUrl: profileUrl)
                    : AppNameAvatar(
                        name: name,
                      ),
              ),
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
