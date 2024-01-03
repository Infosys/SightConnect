import 'dart:ui';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/presentation/pages/patient_profile_page.dart';
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
          SvgPicture.asset(AppIcon.logo),
          const SizedBox(width: AppSize.kmwidth),
          const Text(AppText.appName),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            showBottomSheet(
              enableDrag: false,
              context: context,
              builder: (context) => BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColor.scaffold,
                  ),
                  height: AppSize.height(context) * 0.9,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.close),
                          ),
                          const Text(
                            'Select Language',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 50),
                        ],
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.5,
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    AppIcon.logo,
                                    height: 50,
                                    width: 50,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'English',
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          icon: SvgPicture.asset(
            "assets/icons/translate.svg",
            height: 30,
            width: 30,
          ),
        ),
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
