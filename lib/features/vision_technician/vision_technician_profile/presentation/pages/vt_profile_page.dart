import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/presentation/widgets/vt_profile_name_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/presentation/widgets/vt_profile_organisation_details_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/presentation/widgets/vt_profile_personal_details_card.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTProfilePage extends ConsumerWidget {
  const VTProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppbar(
        centerTitle: false,
        
        title: const Text(
          "Profile",
          textAlign: TextAlign.left,
        ),
        actions: [
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
                Fluttertoast.showToast(
                  msg: e.toString(),
                );
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
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
