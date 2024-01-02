import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/patient_response_model.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/presentation/provider/patient_helper.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp_injection_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../widgets/patient_profile_family_info_cards.dart';
import '../widgets/patient_profile_header.dart';
import '../widgets/patient_profile_patient_info.dart';

class PatientProfilePage extends ConsumerWidget {
  const PatientProfilePage({super.key});

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
              onPressed: () {
                final navigator = Navigator.of(context);
                navigator
                    .push<bool?>(
                      MaterialPageRoute(
                        builder: (context) =>
                            const PatientRegistrationMiniappPage(
                          actionType: MiniAppActionType.UPDATE,
                          displayName: "Update Profile",
                        ),
                      ),
                    )
                    .then((value) => ref.invalidate(getPatientProfileProvider));
              },
              icon: const Icon(
                Icons.edit_outlined,
                color: AppColor.white,
              ),
            )
          ],
        ),
      ),
      body: ref.watch(getPatientProfileProvider).when(
        data: (data) {
          return _content(context, data);
        },
        error: (e, s) {
          return Center(
            child: Text(
              "Something went wrong",
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
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
    var dob = _formateAge(
      day: patient.profile?.patient?.dayOfBirth ?? "",
      mon: patient.profile?.patient?.monthOfBirth ?? "",
      year: patient.profile?.patient?.yearOfBirth ?? "",
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
                      keyText: "Age",
                      valueText: dob,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.ksheight),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Divider(
                  thickness: 1,
                  color: AppColor.black.withOpacity(0.2),
                ),
              ),
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
                    const SizedBox(height: AppSize.ksheight),
                    PatientInfoCard(
                      keyText: "Line",
                      valueText: PatientHelper.street(
                        patient.profile?.patient?.address,
                      ),
                    ),
                    const SizedBox(height: AppSize.ksheight),
                    PatientInfoCard(
                      keyText: "City",
                      valueText: PatientHelper.city(
                        patient.profile?.patient?.address,
                      ),
                    ),
                    const SizedBox(height: AppSize.ksheight),
                    PatientInfoCard(
                      keyText: "District",
                      valueText: PatientHelper.district(
                        patient.profile?.patient?.address,
                      ),
                    ),
                    const SizedBox(height: AppSize.ksheight),
                    PatientInfoCard(
                      keyText: "State",
                      valueText: PatientHelper.state(
                        patient.profile?.patient?.address,
                      ),
                    ),
                    const SizedBox(height: AppSize.ksheight),
                    PatientInfoCard(
                      keyText: "Pincode",
                      valueText: PatientHelper.pincode(
                        patient.profile?.patient?.address,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.ksheight),
              PatientFamilyDetails(
                relations: patient.profile?.patient?.relatedParty ?? [],
              ),
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
    try {
      var dob = DateTime.parse("$year-$mon-$day");
      var age = DateTime.now().difference(dob).inDays ~/ 365;
      return "$age years";
    } catch (e) {
      return "";
    }
  }
}
