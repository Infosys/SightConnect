import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_name_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_organisation_details_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_personal_details_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_language_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_volunteer_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/services/app_info_service.dart';
import 'package:eye_care_for_all/shared/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/translation_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VgProfile extends ConsumerWidget {
  const VgProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(
        centerTitle: false,
        title: Text(
          loc.profileTitle,
          textAlign: TextAlign.left,
        ),
        actions: const [],
      ),
      body: PersistentAuthStateService.authState.activeRole == "ROLE_VOLUNTEER"
          ? ref.watch(getVolunteerProfileProvider).when(
              data: (data) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: ListTile(
                                    title: const Text(
                                      "Name",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "${data.profile?.firstName ?? ""} ${data.profile?.lastName ?? ""}",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: ListTile(
                                    title: const Text(
                                      "Mobile",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      data.profile?.phoneNumber ?? "",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: AppSize.km),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: ListTile(
                                    title: const Text(
                                      "Email",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      data.profile?.email ?? " ",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: ListTile(
                                    title: const Text(
                                      "Address",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "${data.profile?.address!.first.district ?? " "} ${data.profile?.address!.first.state ?? " "} ${data.profile?.address!.first.pincode ?? " "} ",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [],
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: PersistentAuthStateService
                                .authState.roles?.length !=
                            1,
                        child: AppCard(
                          child: ListTile(
                            onTap: () async {
                              final navigator = Navigator.of(context);
                              await ref
                                  .read(initializationProvider)
                                  .resetProfile();
                              navigator.pushNamedAndRemoveUntil(
                                  InitializationPage.routeName,
                                  (route) => false);
                            },
                            leading: const Icon(
                              Icons.person,
                              color: AppColor.black,
                            ),
                            title: Text(
                              loc.switchProfile,
                              style: applyRobotoFont(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSize.km),
                      AppCard(
                        child: ListTile(
                          onTap: () {
                            final navigator = Navigator.of(context);
                            ref
                                .read(initializationProvider)
                                .logout()
                                .then((value) async {
                              navigator.pushNamedAndRemoveUntil(
                                LoginPage.routeName,
                                (route) => false,
                              );
                              ref.invalidate(initializationProvider);
                            }).catchError((e) {
                              Fluttertoast.showToast(msg: loc.vtLogoutError);
                            });
                          },
                          leading: const Icon(
                            Icons.logout,
                            color: AppColor.black,
                          ),
                          title: Text(
                            "Logout",
                            style: applyRobotoFont(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSize.km),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Version: ${AppInfoService.appVersion}",
                            style: applyRobotoFont(
                              fontWeight: FontWeight.normal,
                              color: AppColor.grey,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSize.kl * 2),
                    ],
                  ),
                );
              },
              error: (e, s) {
                return Center(
                  child: Text("Error $e"),
                );
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              },
            )
          : ref.watch(getVGProfileProvider).when(
              data: (data) {
                return SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        VgProfileNameCard(
                          profileData: data,
                        ),
                        const SizedBox(
                          height: AppSize.km,
                        ),
                        VgProfilePersonalDetailsCard(profileData: data),
                        const SizedBox(
                          height: AppSize.km,
                        ),
                        //VgProfileWorkLocationCard(profileData: data),
                        const SizedBox(
                          height: AppSize.km,
                        ),
                        VgProfileOrganisationDetailsCard(profileData: data),
                        const SizedBox(height: AppSize.km),
                        //VgProfileTrainingCertificateCard(profileData: data),
                        AppCard(
                          child: ListTile(
                            onTap: () {
                              final currentLocaleCode = ref
                                  .read(globalLanguageProvider)
                                  .currentLocale;
                              showModalBottomSheet(
                                isScrollControlled: true,
                                enableDrag: false,
                                isDismissible: false,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) => Container(
                                  height: MediaQuery.of(context).size.height,
                                  color: Colors.white,
                                  child: TranslationPopUp(
                                    locale: currentLocaleCode,
                                  ),
                                ),
                              );
                            },
                            leading: SvgPicture.asset(
                              "assets/drawer_icons/language.svg",
                              height: 26,
                              width: 26,
                              colorFilter: const ColorFilter.mode(
                                Colors.black,
                                BlendMode.srcIn,
                              ),
                            ),
                            title: Text(
                              "Change Language",
                              style: applyRobotoFont(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSize.km),
                        Visibility(
                          visible: PersistentAuthStateService
                                  .authState.roles?.length !=
                              1,
                          child: AppCard(
                            child: ListTile(
                              onTap: () async {
                                final navigator = Navigator.of(context);
                                await ref
                                    .read(initializationProvider)
                                    .resetProfile();
                                navigator.pushNamedAndRemoveUntil(
                                    InitializationPage.routeName,
                                    (route) => false);
                              },
                              leading: const Icon(
                                Icons.person,
                                color: AppColor.black,
                              ),
                              title: Text(
                                loc.switchProfile,
                                style: applyRobotoFont(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: AppSize.km),
                        AppCard(
                          child: ListTile(
                            onTap: () {
                              final navigator = Navigator.of(context);
                              ref
                                  .read(initializationProvider)
                                  .logout()
                                  .then((value) async {
                                navigator.pushNamedAndRemoveUntil(
                                  LoginPage.routeName,
                                  (route) => false,
                                );
                                ref.invalidate(initializationProvider);
                              }).catchError((e) {
                                Fluttertoast.showToast(msg: loc.vtLogoutError);
                              });
                            },
                            leading: const Icon(
                              Icons.logout,
                              color: AppColor.black,
                            ),
                            title: Text(
                              "Logout",
                              style: applyRobotoFont(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSize.km),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Version: ${AppInfoService.appVersion}",
                              style: applyRobotoFont(
                                fontWeight: FontWeight.normal,
                                color: AppColor.grey,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSize.kl * 2),
                      ],
                    ),
                  ),
                );
              },
              error: (e, s) {
                return Center(
                  child: Text("Error $e"),
                );
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              },
            ),
    );
  }
}
