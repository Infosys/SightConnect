import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_name_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_organisation_details_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/widgets/vg_profile_personal_details_card.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
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
        actions: [
          IconButton(
            onPressed: () {
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
            icon: SvgPicture.asset(
              "assets/drawer_icons/language.svg",
              height: 26,
              width: 26,
              colorFilter: ColorFilter.mode(
                Theme.of(context).iconTheme.color!,
                BlendMode.srcIn,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {
              final navigator = Navigator.of(context);
              ref.read(initializationProvider).logout().then((value) async {
                navigator.pushNamedAndRemoveUntil(
                  LoginPage.routeName,
                  (route) => false,
                );
                ref.invalidate(initializationProvider);
              }).catchError((e) {
                Fluttertoast.showToast(msg: loc.vtLogoutError);
              });
            },
            icon: const Icon(
              Icons.logout,
              color: AppColor.black,
            ),
            label: Text(
              "Logout",
              style: applyRobotoFont(
                color: AppColor.black,
              ),
            ),
          ),
        ],
      ),
      body: ref.watch(getVGProfileProvider).when(
        data: (data) {
          return SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VgProfileNameCard(
                    profileData: data,
                  ),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  VgProfilePersonalDetailsCard(profileData: data),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  //VgProfileWorkLocationCard(profileData: data),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  VgProfileOrganisationDetailsCard(profileData: data),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  //VgProfileTrainingCertificateCard(profileData: data),
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
