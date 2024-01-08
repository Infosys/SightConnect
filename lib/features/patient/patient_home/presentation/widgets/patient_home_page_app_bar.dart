import 'dart:ui';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:eye_care_for_all/shared/widgets/text_scale_pop_up.dart';
import 'package:eye_care_for_all/shared/widgets/translation_pop_up.dart';
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
          Image.asset(
            "assets/logo/app_logo.png",
            width: 150,
          ),
        ],
      ),
      actions: [
        Consumer(
          builder: (context, ref, child) {
            final model = ref.watch(patientDashboardProvider);
            return IconButton(
              onPressed: () {
                model.setVisibility(false);
                Scaffold.of(context).openEndDrawer();
              },
              icon: SvgPicture.asset(
                "assets/icons/drawer_menu.svg",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                colorFilter: const ColorFilter.mode(
                  Colors.black,
                  BlendMode.srcIn,
                ),
              ),
            );
          },
        ),
      ],
      // actions: [
      //   Consumer(
      //     builder: (context, ref, child) {
      //       final currentLocaleCode =
      //           ref.watch(globalLanguageProvider).currentLocale.toString();
      //       return IconButton(
      //         onPressed: () {
      //           showBottomSheet(
      //             enableDrag: false,
      //             context: context,
      //             builder: (context) => TranslationPopUp(
      //               currentLocaleCode: currentLocaleCode,
      //             ),
      //           );
      //         },
      //         icon: SvgPicture.asset(
      //           "assets/icons/translate.svg",
      //           height: 30,
      //           width: 30,
      //         ),
      //       );
      //     },
      //   ),
      //   const TextScalePopupMenu(),
      //   Consumer(
      //     builder: (context, ref, child) {
      //       final patient = ref.watch(getPatientProfileProvider).asData?.value;
      //       if (patient == null) {
      //         return const CircleAvatar(
      //           backgroundColor: AppColor.lightGrey,
      //         );
      //       }
      //       final profileUrl = patient.profile?.patient?.profilePhoto;
      //       final name = patient.profile?.patient?.name;

      //       return InkWell(
      //         // onTap: () {
      //         //   showDialog(
      //         //     context: context,
      //         //     builder: (ctx) => MemberSelectionPopUp(
      //         //       patients: patient,
      //         //     ),
      //         //     barrierDismissible: false,
      //         //     barrierColor: AppColor.blackOpacity,
      //         //   );
      //         // },
      //         onTap: () {
      //           Navigator.of(context).push(
      //             MaterialPageRoute(
      //               builder: (context) => const PatientProfilePage(),
      //             ),
      //           );
      //         },
      //         child: Container(
      //           child: profileUrl != null
      //               ? AppNetworkImage(imageUrl: profileUrl)
      //               : AppNameAvatar(
      //                   name: name,
      //                 ),
      //         ),
      //       );
      //     },
      //   ),
      //   const SizedBox(width: AppSize.kmwidth),
      // ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(58);
}
