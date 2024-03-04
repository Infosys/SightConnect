import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/presentation/widgets/vt_profile_name_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/presentation/widgets/vt_profile_organisation_details_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/presentation/widgets/vt_profile_personal_details_card.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/translation_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTProfilePage extends HookConsumerWidget {
  const VTProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    var isLoading = useState(false);
    return Scaffold(
      appBar: CustomAppbar(
        centerTitle: false,
        title: Text(
          loc.vtProfile,
          textAlign: TextAlign.left,
        ),
        actions: const [],
      ),
      body: ref.watch(getVTProfileProvider).when(
        data: (data) {
          return SingleChildScrollView(
            child: LoadingOverlay(
              isLoading: isLoading.value,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VTProfileNameCard(
                      profileData: data,
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    VTProfilePersonalDetailsCard(profileData: data),
                    const SizedBox(height: AppSize.kmheight),
                    // //VgProfileWorkLocationCard(profileData: data),
                    // const SizedBox(
                    //   height: AppSize.kmheight,
                    // ),
                    VTProfileOrganisationDetailsCard(profileData: data),
                    // const SizedBox(
                    //   height: AppSize.kmheight,
                    // ),
                    //VgProfileTrainingCertificateCard(profileData: data),
                    const SizedBox(height: AppSize.kmheight),
                    AppCard(
                      child: ListTile(
                        onTap: () {
                          final currentLocaleCode =
                              ref.read(globalLanguageProvider).currentLocale;
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

                    const SizedBox(height: AppSize.kmheight),
                    AppCard(
                      child: ListTile(
                        onTap: () async {
                          final navigator = Navigator.of(context);
                          await ref.read(initializationProvider).resetProfile();
                          navigator.pushNamedAndRemoveUntil(
                              InitializationPage.routeName, (route) => false);
                        },
                        leading: const Icon(
                          Icons.person,
                          color: AppColor.black,
                        ),
                        title: Text(
                          "Switch Profile",
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: AppSize.kmheight),
                    AppCard(
                      child: ListTile(
                        onTap: () {
                          final navigator = Navigator.of(context);
                          isLoading.value = true;
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
                          }).whenComplete(() {
                            isLoading.value = false;
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
                    const SizedBox(height: AppSize.klheight * 2),
                  ],
                ),
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
