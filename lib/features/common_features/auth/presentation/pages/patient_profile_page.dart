import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/auth/presentation/provider/patient_profile_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/source/local/fake_data_source.dart';
import '../widgets/patient_profile_family_info_cards.dart';
import '../widgets/patient_profile_header.dart';
import '../widgets/patient_profile_patient_info.dart';

class PatientProfilePage extends ConsumerWidget {
  const PatientProfilePage({super.key});

  static const String routeName = '/patient-profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(patientProfileProvider);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: CustomAppbar(
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
      body: model.isLoading
          ? const CircularProgressIndicator()
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ProfileHeader(patient: model.patient),
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
                              "${model.patient.profile!.patient!.address![0].line}, ${model.patient.profile!.patient!.address![0].ward}, ${model.patient.profile!.patient!.address![0].district}, ${model.patient.profile!.patient!.address![0].state}",
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
                              valueText:
                                  "${model.patient.profile!.patient!.dayOfBirth}, ${model.patient.profile!.patient!.monthOfBirth}, ${model.patient.profile!.patient!.yearOfBirth}",
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Divider(
                          thickness: 1,
                          color: AppColor.black,
                        ),
                      ),
                      PatientFamilyDetails(
                          relations:
                              model.patient.profile!.patient!.relatedParty ??
                                  []),
                      const SizedBox(height: AppSize.kmheight),
                      const BrandingWidgetH(),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
