import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/profile_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/app_color.dart';
import '../../data/local/fake_data_source.dart';
import '../widgets/patient_profile_family_info_cards.dart';
import '../widgets/patient_profile_patient_info.dart';
import '../widgets/patient_profile_header.dart';

class PatientProfilePage extends StatelessWidget {
  const PatientProfilePage({super.key});

  static const String routeName = '/patient-profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.kScaffold,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: ProfileAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ProfileHeader(),
            Container(
              padding: const EdgeInsets.all(AppSize.kmpadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: AppSize.ksheight,
                  ),
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Address",
                          style: applyFiraSansFont(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.ksheight,
                        ),
                        Text(
                          profile["address"] ?? "",
                          style: applyRobotoFont(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.ksheight,
                  ),
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "General Information",
                          style: applyFiraSansFont(
                            fontSize: 18,
                          ),
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
                  const PatientFamilyDetails(),
                ],
              ),
            ),
            // TumblingOverlay(isLoading: true,child: Text(''),),
          ],
        ),
      ),
    );
  }
}
