import 'dart:ui';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final COLORS = [
  Colors.blue.shade100,
  Colors.green.shade100,
  // Colors.yellow.shade100,
  Colors.pink.shade100,
  Colors.purple.shade100,
  Colors.orange.shade100,
  Colors.cyan.shade100,
  Colors.deepOrange.shade100,
];

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
            final currentLocaleCode =
                ref.watch(globalLanguageProvider).currentLocale.toString();
            return IconButton(
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
                          Expanded(
                            child: GridView.builder(
                              shrinkWrap: true,
                              itemCount: appLocales.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1.5,
                              ),
                              itemBuilder: (context, index) {
                                final appLocale = appLocales[index];

                                bool isActiveLocale =
                                    currentLocaleCode == appLocale.locale;
                                return InkWell(
                                  onTap: () {
                                    ref
                                        .read(globalLanguageProvider)
                                        .setCurrentLocale(appLocale.locale);
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.all(10),
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        color: COLORS[index % COLORS.length],
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: isActiveLocale
                                                ? Colors.green
                                                : Colors.black38.withOpacity(0),
                                            width: isActiveLocale ? 3 : 2),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            spreadRadius: 1,
                                            blurRadius: 2,
                                            // offset: Offset(0, 3),
                                          )
                                        ]),
                                    child: Stack(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              appLocale.localeName,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge
                                                  ?.copyWith(
                                                      fontSize: 30,
                                                      // fontWeight: FontWeight.bold,
                                                      color: Colors.black
                                                          .withOpacity(0.8)),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              appLocale.locale != "en"
                                                  ? appLocale.name
                                                  : "",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                          ],
                                        ),
                                        isActiveLocale
                                            ? const Positioned(
                                                bottom: 0,
                                                right: 0,
                                                child: Icon(
                                                  Icons.check_circle,
                                                  color: Colors.green,
                                                  size: 32,
                                                ))
                                            : Container()
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
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
            );
          },
        ),
        Consumer(
          builder: (context, ref, _) {
            final model = ref.watch(globalTextScaleFactorProvider);
            return PopupMenuButton(
              icon: SvgPicture.asset(
                "assets/icons/accessability.svg",
                fit: BoxFit.cover,
                height: 50,
                width: 55,
              ),
              initialValue: model.scaleAlphabet,
              onSelected: (value) {
                model.setTextScaleFactor(value);
              },
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: "-A",
                    child: Text('-A'),
                  ),
                  const PopupMenuItem(
                    value: "A",
                    child: Text('A'),
                  ),
                  const PopupMenuItem(
                    value: "+A",
                    child: Text('+A'),
                  ),
                ];
              },
            );
          },
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
