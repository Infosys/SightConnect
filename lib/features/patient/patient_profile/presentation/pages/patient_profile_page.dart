import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/local/fake_data_source.dart';
import '../widgets/patient_profile_family_info_cards.dart';
import '../widgets/patient_profile_patient_info.dart';
import '../widgets/patient_profile_header.dart';

class PatientProfilePage extends ConsumerWidget {
  const PatientProfilePage({super.key});

  static const String routeName = '/patient-profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          iconTheme: const IconThemeData(
            color: AppColor.white,
          ),
          title: Text(
            "My Profile",
            style: applyFiraSansFont(
              fontWeight: FontWeight.w500,
              color: AppColor.white,
            ),
          ),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit_outlined,
                color: AppColor.white,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ProfileHeader(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSize.ksheight),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address",
                        style: applyFiraSansFont(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: AppSize.ksheight,
                      ),
                      Text(
                        profile["address"] ?? "",
                        style: applyRobotoFont(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSize.ksheight),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "General Information",
                        style: applyFiraSansFont(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: AppSize.ksheight,
                      ),
                      PatientInfoCard(
                        keyText: "Date of Birth",
                        valueText: profile["dob"]!,
                      ),
                      PatientInfoCard(
                        keyText: "Blood Group",
                        valueText: profile["blood_group"]!,
                      ),
                      PatientInfoCard(
                        keyText: "Height",
                        valueText: profile["height"]!,
                      ),
                      PatientInfoCard(
                        keyText: "Weight",
                        valueText: profile["weight"]!,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Divider(
                    thickness: 1,
                    color: AppColor.black,
                  ),
                ),
                const PatientFamilyDetails(),
                const SizedBox(
                  height: 15,
                ),
                const BrandingWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
