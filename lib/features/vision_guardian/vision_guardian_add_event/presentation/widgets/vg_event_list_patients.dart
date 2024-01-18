import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_eye_assesment_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_patient_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_patient_search.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianPatientList extends HookConsumerWidget {
  final TriageMode triageMode;
  const VisionGuardianPatientList({
    super.key,
    required this.triageMode,
  });

  int calculateAge(DateTime dateOfBirth) {
    final now = DateTime.now();
    int age = now.year - dateOfBirth.year;
    if (now.month < dateOfBirth.month ||
        (now.month == dateOfBirth.month && now.day < dateOfBirth.day)) {
      age--;
    }
    return age;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScrollController scrollController =
        ref.read(addPatientEventProvider).patientListScrollController;
    return Padding(
      padding: const EdgeInsets.all(AppSize.kspadding + 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VisionGuardianEventPatientSearch(),
          const SizedBox(
            height: AppSize.ksheight,
          ),
          ref.watch(addPatientEventProvider).patientQueryDataValue.isEmpty
              ? const Column(
                  children: [
                    SizedBox(
                      height: AppSize.klheight,
                    ),
                    Center(
                      child: Text("Search Patient"),
                    ),
                  ],
                )
              : ref.watch(getEventPatientListProvider).when(
                  data: (data) {
                    /*    final data = response
                        .where((element) => element.patientId != null)
                        .toList(); */
                    return data.isEmpty
                        ? SingleChildScrollView(
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.6,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "No Patient with Name is registered. Click on the  Register Patient.",
                                      style: applyRobotoFont(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.grey),
                                      textAlign: TextAlign.center,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const PatientRegistrationMiniappPage(
                                                actionType:
                                                    MiniAppActionType.REGISTER,
                                                displayName: 'Register Patient',
                                              ),
                                            ),
                                          );
                                        },
                                        child: const Text("Register Patient"))
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Expanded(
                            child: ListView.separated(
                                controller: scrollController,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: AppColor.white,
                                      boxShadow: applyLightShadow(),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(AppSize.kmradius - 5),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        ListTile(
                                          leading: data[index].profilePhoto ==
                                                      null ||
                                                  data[index].profilePhoto ==
                                                      "string"
                                              ? SizedBox(
                                                  child: AppNameAvatar(
                                                    name:
                                                        data[index].name ?? "",
                                                    color: AppColor.blue,
                                                    fontSize: 16,
                                                  ),
                                                )
                                              : AppNetworkImage(
                                                  imageUrl: data[index]
                                                          .profilePhoto ??
                                                      ""),
                                          title: RichText(
                                              text: TextSpan(children: [
                                            TextSpan(
                                                text: data[index].name,
                                                style: applyRobotoFont(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.black,
                                                )),
                                            const WidgetSpan(
                                              child: SizedBox(width: 10),
                                            ),
                                            TextSpan(
                                                text:
                                                    "PID ${data[index].patientId}",
                                                style: applyRobotoFont(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.grey,
                                                )),
                                          ])),
                                          subtitle: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "${data[index].yearOfBirth != null && data[index].monthOfBirth != null && data[index].dayOfBirth != null ? calculateAge(
                                                      DateTime(
                                                        int.parse(data[index]
                                                            .yearOfBirth!),
                                                        int.parse(data[index]
                                                            .monthOfBirth!),
                                                        int.parse(data[index]
                                                            .dayOfBirth!),
                                                      ),
                                                    ) : ""} Yrs , +91 ${data[index].phoneNumber}",
                                                  style: applyRobotoFont(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor.grey,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: AppSize.ksheight,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: AppSize.klpadding * 3),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Start Assessment",
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        VisionGuardianEyeAssessment(
                                                                  patientName:
                                                                      data[index]
                                                                              .name ??
                                                                          "",
                                                                  patientId: data[
                                                                          index]
                                                                      .patientId
                                                                      .toString(),
                                                                  triageMode:
                                                                      triageMode,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                    style: applyRobotoFont(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColor.blue,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: AppSize.kmheight,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(
                                      height: AppSize.kmheight);
                                },
                                itemCount: data.length),
                          );
                  },
                  error: (error, stackTrace) {
                    return const Center(child: Text("Error"));
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                )
        ],
      ),
    );
  }
}
