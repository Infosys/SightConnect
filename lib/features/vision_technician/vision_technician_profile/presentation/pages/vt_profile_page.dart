import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/presentation/widgets/vt_profile_name_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/presentation/widgets/vt_profile_organisation_details_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/presentation/widgets/vt_profile_personal_details_card.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/translation_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTProfilePage extends ConsumerWidget {
  const VTProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(
        centerTitle: false,
        title: Text(
          loc.vtProfile,
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
              colorFilter: ColorFilter.mode(
                Theme.of(context).iconTheme.color!,
                BlendMode.srcIn,
              ),
            ),
          ),
          IconButton(
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
              Icons.logout_rounded,
            ),
          ),
        ],
      ),
      body: ref.watch(getVTProfileProvider).when(
        data: (data) {
          return SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VTProfileNameCard(
                    profileData: data,
                  ),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  VTProfilePersonalDetailsCard(profileData: data),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  // //VgProfileWorkLocationCard(profileData: data),
                  // const SizedBox(
                  //   height: AppSize.kmheight,
                  // ),
                  VTProfileOrganisationDetailsCard(profileData: data),
                  // const SizedBox(
                  //   height: AppSize.kmheight,
                  // ),
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
