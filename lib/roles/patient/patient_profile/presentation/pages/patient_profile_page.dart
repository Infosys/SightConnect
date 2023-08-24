import 'package:eye_care_for_all/shared/widgets/profile_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/app_color.dart';
import '../../data/local/fake_data_source.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/patient_profile_familyinfocards.dart';
import '../widgets/patient_profile_patientinfo.dart';
import '../widgets/profile_header.dart';

class PatientProfilePage extends StatelessWidget {
  const PatientProfilePage({super.key});

  static const String routeName = '/patient-profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.kScaffold,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: const ProfileAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileHeader(), //Appbar/header image and texts
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  8.verticalSpace,
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Address",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        8.verticalSpace,
                        Text(
                          profile["address"] ?? "",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  8.verticalSpace,
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "General Information",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        8.verticalSpace,
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
          ],
        ),
      ),
    );
  }
}
