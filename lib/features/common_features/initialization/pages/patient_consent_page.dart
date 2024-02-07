import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/models/consent_model.dart';
import 'package:eye_care_for_all/core/repositories/consent_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientConsentFormPage extends HookWidget {
  const PatientConsentFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedValue = useState<bool>(false);
    var isLoading = useState<bool>(false);
    List<String> privacyPoints = [
      'To enable you to access our application and its features for eye related online health checkup for you and your connections (as provided by you). ',
      'To enable you to contact Vision Technicians, Ophthalmologists under LVPEI, as applicable, in case of any eye related illness/health difficulties.',
      'For providing any eye health-related data (including reports etc.) as part of your health consultation and diagnosis and in order to contact you or your connections as part of health-related concerns.',
      'For sharing of your eye health data with our authorized LVPEI ophthalmologists/ doctors for better diagnosis and further sharing the same with the Village Chief/ Mayor etc. (where applicable based on your GPS location) depending on the severity of the eye issue in case you are unable to reach out to/ inform the LVPEI doctors for treatment.',
      'To provide the list of Eye clinics/ hospitals affiliated with LVPEI near you, for you to reach out to in case of any eye related problems.',
      'For using the information such as Eye Image, symptoms related to the eye image, Age, Blood Group, Location without any identifiers to help train our machine learning or artificial intelligence models for the purpose of providing proper diagnosis in the future',
      'For sending reminder, communication, campaign mailers, to create awareness for eye health.',
    ];
    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppbar(
          title: Text(
            "Privacy & Data Protection",
            style: applyFiraSansFont(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColor.black),
          ),
          automaticallyImplyLeading: false,
          centerTitle: false,
        ),
        body: Container(
          height: AppSize.height(context),
          width: AppSize.width(context),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.scaffoldBg,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: LoadingOverlay(
            isLoading: isLoading.value,
            child: SafeArea(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: AppSize.kmpadding,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  boxShadow: applyLightShadow(),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(AppSize.kmradius - 5),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSize.kmpadding,
                      vertical: AppSize.kmpadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'LV Prasad Eye Institute, its subsidiaries, associates and affiliated companies (collectively referred to as “LVPEI”, “us”, “we”) are committed to process your personal data as per the laws of your jurisdiction. We hereby notify you the following information about the processing of personal data.',
                          softWrap: true,
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Personal data elements collected/processed:',
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 6),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Text(
                                'You and your connections personal data such as (Some of these data would be optional) Mobile number, Name, Date of birth, Gender (Male/Female), Address (Pin code), patient ID, Connection, eye triage questionnaire responses, eye triage report, eye images, symptoms tagged against your eye image, Photograph, Address details such as address, district name (including District code), state name (including state code), sub district name, village name, town name, Email address, Last Name, Middle Name, Blood Group, Height, Weight, Occupation, ABHA details (as provided by you), based on your app permissions access to Camera, GPS Location, Gallery for accessing the application, full network access, view network connections, Device information.',
                                softWrap: true,
                                style: applyRobotoFont(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Purpose of Processing:',
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Column(
                          children: [
                            Text(
                              "We process the Personal Data provided by you for the below purposes such as:",
                              style: applyRobotoFont(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                                children: privacyPoints
                                    .map((e) => Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.only(top: 6),
                                              child: Icon(
                                                Icons.circle,
                                                size: 6,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 11,
                                            ),
                                            Flexible(
                                              child: Text(
                                                e,
                                                softWrap: true,
                                                style: applyRobotoFont(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ],
                                        ))
                                    .toList()),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Data Recipients/ Accessible to:',
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'The personal data shared by you (including sensitive personal data) will be accessible to authorized LVPEI personnels such as Doctors/ Ophthalmologists, Vision Technicians, Vision Guardians, representatives from LVPEI, internal/external auditors, Government authorities where applicable, and our authorized service provider Infosys as applicable.',
                          softWrap: true,
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Data Transfer & Storage:',
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'The personal data shared by you will get stored on our internal servers, our authorized service provider’s server in India.',
                          softWrap: true,
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Data Security:',
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'LVPEI adopts reasonable and appropriate security practices and procedures including administrative, physical security, and technical controls in order to safeguard your Personal Data.',
                          softWrap: true,
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Data Retention:',
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Personal Data that is no longer required to be retained as per legal and business requirements will be disposed in a secure manner.',
                          softWrap: true,
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Data subject rights:',
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Text.rich(
                          TextSpan(
                            style: const TextStyle(
                                color: AppColor.black), //apply style to all
                            children: [
                              TextSpan(
                                  text:
                                      'You are entitled at any time to access and rectify your personal information. In case of any requests, issues, concerns or queries you may reach out to LV Prasad Office by sending an email to ',
                                  style: applyRobotoFont(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14)),
                              TextSpan(
                                  text: AppText.lvpeiEmail,
                                  style: applyRobotoFont(
                                      color: AppColor.blue,
                                      decoration: TextDecoration.combine(
                                          [TextDecoration.underline]),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14))
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Right to Withdrawal:',
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Text.rich(
                          TextSpan(
                            style: const TextStyle(
                                color: AppColor.black), //apply style to all
                            children: [
                              TextSpan(
                                  text:
                                      'Where we process your Personal Data based on your consent, you may withdraw your consent to the processing as per applicable DP laws at any time for the future. This will not affect the lawfulness of any processing operation before your withdrawal. To withdraw your consent, you may send an email to ',
                                  style: applyRobotoFont(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14)),
                              TextSpan(
                                text: AppText.lvpeiEmail,
                                style: applyRobotoFont(
                                    color: AppColor.blue,
                                    decoration: TextDecoration.combine(
                                      [TextDecoration.underline],
                                    ),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'By clicking the below button, you hereby acknowledge and understand that your personal data including sensitive personal data may be collected and processed in the above-mentioned manner and hereby consent to the same for the above-mentioned purposes. You also acknowledge that any personal data including sensitive personal data (other than yourself) shared by you is only after taking appropriate consent from them. You also acknowledge that you will not share any personal data (including sensitive personal data) which is not required for the above-mentioned purposes. You also acknowledge that when you are sharing minor’s personal data as their parent/ legal guardian you consent to their data collection and processing as mentioned above.',
                          softWrap: true,
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              value: selectedValue.value,
                              onChanged: (value) {
                                selectedValue.value = value!;
                              },
                            ),
                            Text(
                              'I agree to the terms and conditions',
                              style: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Consumer(
                                builder: (context, ref, child) {
                                  final model =
                                      ref.watch(consentRepositoryProvider);
                                  return Expanded(
                                    child: ElevatedButton(
                                      onPressed: selectedValue.value
                                          ? () async {
                                              final navigator =
                                                  Navigator.of(context);
                                              try {
                                                isLoading.value = true;
                                                final consent =
                                                    await model.getConsent();
                                                await model.setConsent(
                                                  ConsentModel(
                                                    templateId:
                                                        consent.templateId,
                                                    consentVersion:
                                                        consent.consentVersion,
                                                    consentStatus: ConsentStatus
                                                        .ACKNOWLEDGED,
                                                    acknowledgeDate:
                                                        DateTime.now()
                                                            .toUtc()
                                                            .toIso8601String(),
                                                  ),
                                                );

                                                navigator.pop(true);
                                                isLoading.value = false;
                                              } catch (e) {
                                                logger.e(e);
                                                isLoading.value = false;
                                                Fluttertoast.showToast(
                                                  msg:
                                                      "Something went wrong, please try again later",
                                                );
                                              }
                                            }
                                          : null,
                                      child: const Text("I Agree"),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
