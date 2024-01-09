import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/patient_response_model.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessments_and_tests_page.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/presentation/provider/patient_helper.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../widgets/patient_profile_family_info_cards.dart';
import '../widgets/patient_profile_header.dart';
import '../widgets/patient_profile_patient_info.dart';

class PatientProfilePage extends ConsumerWidget {
  const PatientProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(
        iconTheme: const IconThemeData(),
        title: Text(
          // loc.appDrawerMyProfile,
          loc.profileTitle,
          style: applyFiraSansFont(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ref.watch(getPatientProfileProvider).when(
        data: (data) {
          return _content(
            context,
            data,
            ref,
          );
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

  Widget _content(
      BuildContext context, PatientResponseModel patient, WidgetRef ref) {
    final loc = context.loc!;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PatientFamilyDetails(
              relations: patient.profile?.patient?.relatedParty ?? [],
              patient: patient,
            ),
            const SizedBox(height: 4),
            Divider(
              thickness: 1,
              color: AppColor.black.withOpacity(0.2),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Health Card",
                  style: applyFiraSansFont(fontSize: 18),
                ),
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
                        .then(
                          (value) => ref.invalidate(getPatientProfileProvider),
                        );
                  },
                  icon: const Icon(
                    Icons.edit,
                    size: 16,
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            ProfileHeader(
              patient: patient,
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ExpansionTile(
                title: Text(
                  context.loc!.profilePageAddressDetails,
                  style: applyFiraSansFont(fontSize: 16),
                ),
                children: [
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
                        PatientInfoCard(
                          keyText: loc.myProfileLine,
                          valueText: PatientHelper.street(
                            patient.profile?.patient?.address,
                          ),
                        ),
                        const SizedBox(height: AppSize.ksheight),
                        PatientInfoCard(
                          keyText: loc.myProfileCity,
                          valueText: PatientHelper.city(
                            patient.profile?.patient?.address,
                          ),
                        ),
                        const SizedBox(height: AppSize.ksheight),
                        PatientInfoCard(
                          keyText: loc.myProfileDistrict,
                          valueText: PatientHelper.district(
                            patient.profile?.patient?.address,
                          ),
                        ),
                        const SizedBox(height: AppSize.ksheight),
                        PatientInfoCard(
                          keyText: loc.myProfileState,
                          valueText: PatientHelper.state(
                            patient.profile?.patient?.address,
                          ),
                        ),
                        const SizedBox(height: AppSize.ksheight),
                        PatientInfoCard(
                          keyText: loc.myProfilePinCode,
                          valueText: PatientHelper.pincode(
                            patient.profile?.patient?.address,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AssessmentsAndTestsPage(),
                    ),
                  );
                },
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.white,
                  size: 16,
                ),
                title: Text(
                  context.loc!.profilePaeCheckReports,
                  style: applyFiraSansFont(
                    fontSize: 14,
                    color: AppColor.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
