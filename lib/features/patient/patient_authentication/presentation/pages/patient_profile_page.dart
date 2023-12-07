import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/profile_model.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/presentation/provider/patient_profile_provider.dart';
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
      body: ref.watch(getPatientProfileProvider).when(
        data: (patient) {
          return _content(context, patient);
        },
        error: (error, trace) {
          return Center(
            child: Text(error.toString()),
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

  Widget _content(BuildContext context, PatientResponseModel patient) {
    final dob = _formateAge(
      day: patient.profile?.patient?.dayOfBirth ?? "",
      mon: patient.profile?.patient?.monthOfBirth ?? "",
      year: patient.profile?.patient?.yearOfBirth ?? "",
    );

    final address = _formateAddress(
      line: patient.profile?.patient?.address?.first.line ?? "",
      ward: patient.profile?.patient?.address?.first.ward ?? "",
      district: patient.profile?.patient?.address?.first.district ?? "",
      state: patient.profile?.patient?.address?.first.state ?? "",
    );
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProfileHeader(patient: patient),
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
                      address,
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
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
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight,
                    ),
                    PatientInfoCard(
                      keyText: "Date of Birth",
                      valueText: dob,
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
              PatientFamilyDetails(
                relations: patient.profile?.patient?.relatedParty ?? [],
              ),
              const SizedBox(height: AppSize.kmheight),
              const BrandingWidgetH(),
            ],
          ),
        ],
      ),
    );
  }

  String _formateAge({
    required String day,
    required String mon,
    required String year,
  }) {
    final dob = DateTime(
      int.parse(year),
      int.parse(mon),
      int.parse(day),
    );
    final age = DateTime.now().difference(dob).inDays ~/ 365;
    return "$day/$mon/$year ($age years)";
  }

  String _formateAddress({
    required String line,
    required String ward,
    required String district,
    required String state,
  }) {
    return "$line, $ward, $district, $state";
  }
}
