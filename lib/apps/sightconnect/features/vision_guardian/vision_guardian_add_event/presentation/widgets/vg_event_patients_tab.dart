/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessment_report_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_report_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_empty_result_card.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EventPatientsTab extends ConsumerStatefulWidget {
  final String patientsType;

  const EventPatientsTab({Key? key, required this.patientsType})
      : super(key: key);

  @override
  ConsumerState<EventPatientsTab> createState() => _EventPatientsTabState();
}

class _EventPatientsTabState extends ConsumerState<EventPatientsTab>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // final model = ref.watch(addEventDetailsProvider);
      // model.setEventId(SharedPreferenceService.getEventId!);
      // model.loadingToggle();
    });
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(addEventDetailsProvider);

    var response = model.listOfEventPatients;
    var loading = model.getisLoading;
    var error = model.error;

    final loc = context.loc!;

    if (loading == false && error) {
      Fluttertoast.showToast(msg: loc.vgServerError);
    }

    if (loading == false && response.isEmpty) {
      return SizedBox(
        width: Responsive.isMobile(context)
            ? AppSize.width(context) * 0.9
            : AppSize.width(context) * 0.95,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            VisionGuardianEmptyResultCard(type: loc.vgPatient),
          ],
        ),
      );
    } else if (loading == true && response.isEmpty) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    return SizedBox(
      height: AppSize.height(context) * 0.7,
      child: LoadingOverlay(
        ignoreOverlayColor: model.initialValue,
        isLoading: loading,
        child: vgPatientTabs(context, response, ref, widget.patientsType),
      ),
    );
  }
}

int calculateAge(DateTime dateOfBirth) {
  final now = DateTime.now();
  int age = now.year - dateOfBirth.year;
  if (now.month < dateOfBirth.month ||
      (now.month == dateOfBirth.month && now.day < dateOfBirth.day)) {
    age--;
  }
  return age;
}

Widget vgPatientTabs(
    BuildContext context,
    List<VisionGuardianPatientResponseModel> response,
    WidgetRef ref,
    String patientsType) {
  final readModel = ref.read(addEventDetailsProvider);
  final loc = context.loc!;
  return Container(
    decoration: BoxDecoration(
      color: AppColor.white,
      border: Border.all(
        color: AppColor.grey.withOpacity(0.2),
      ),
      boxShadow: [
        BoxShadow(
          color: AppColor.black.withOpacity(0.2),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: ExpansionTile(
        initiallyExpanded: true,
        title: Text(
          loc.vgPatients,
          style: applyRobotoFont(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColor.black,
          ),
        ),
        children: [
          SizedBox(
            height: AppSize.height(context) * 0.6,
            child: ListView.separated(
              controller:
                  ref.watch(addEventDetailsProvider).eventPatientController,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: (ref
                              .watch(addEventDetailsProvider)
                              .newEventPatientList
                              .length ==
                          10 &&
                      patientsType != "search")
                  ? response.length + 1
                  : response.length,
              itemBuilder: (context, index) {
                if (index == response.length) {
                  return const Padding(
                    padding: EdgeInsets.all(AppSize.kl),
                    child: Center(child: CircularProgressIndicator.adaptive()),
                  );
                }
                var data = response[index];

                /*       String formattedDate = DateFormat("dd MMM yy")
                .format(DateTime.parse(data.encounterStartDate!));
            String formattedTime = DateFormat("hh:mm a")
                .format(DateTime.parse(data.encounterStartDate!).toLocal()); */
                return GestureDetector(
                  onTap: () async {
                    readModel.loadingToggle();
                    try {
                      var navigator = Navigator.of(context);
                      TriageReportUserEntity profile = TriageReportUserEntity(
                        name: data.name ?? "",
                        id: data.id!,
                        image: "",
                      );
                      final reports = await ref
                          .read(vgReportProvider(profile))
                          .getTriageDetailedReportByReportId(
                              data.diagnosticReportId!);

                      navigator.push(
                        MaterialPageRoute(
                          builder: (context) => PatientAssessmentReportPage(
                            assessmentDetailsReport: reports,
                          ),
                        ),
                      );
                    } catch (e) {
                      logger.e(e);
                      Fluttertoast.showToast(msg: e.toString());
                    }
                    readModel.loadingToggle();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(AppSize.km),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      boxShadow: applyLightShadow(),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(AppSize.km - 5),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppSize.ks),
                      child: Container(
                        // padding: const EdgeInsets.all(AppSize.ks),
                        width: Responsive.isMobile(context)
                            ? AppSize.width(context) * 0.9
                            : AppSize.width(context) * 0.6,
                        color: AppColor.white,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Responsive.isMobile(context)
                                  ? AppSize.width(context) * 0.74
                                  : AppSize.width(context) * 0.6,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: AppSize.width(context) * 0.5,
                                    child: Text(
                                      "${data.name ?? ""} - PD ${data.id}",
                                      style: applyRobotoFont(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.black,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  // const Spacer(),
                                  SizedBox(
                                    child: Text(
                                      data.category ?? "",
                                      style: applyRobotoFont(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.red,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // const SizedBox(height: AppSize.ks),
                            // SizedBox(
                            //   width: Responsive.isMobile(context)
                            //       ? AppSize.width(context) * 0.74
                            //       : AppSize.width(context) * 0.6,
                            //   child: Row(
                            //     children: [
                            //       SizedBox(
                            //         width: AppSize.width(context) * 0.5,
                            //         child: Text(
                            //           '${data.gender ?? ""}, ${data.dayOfBirth != null && data.monthOfBirth != null && data.dayOfBirth != null ? calculateAge(DateTime(
                            //               int.parse(data.yearOfBirth ?? ""),
                            //               int.parse(data.monthOfBirth ?? ""),
                            //               int.parse(data.dayOfBirth ?? ""),
                            //             )) : ""} ${loc.vgSlideAge}',
                            //           maxLines: 1,
                            //           overflow: TextOverflow.ellipsis,
                            //           style: applyRobotoFont(
                            //             fontSize: 12,
                            //             fontWeight: FontWeight.w500,
                            //             color: AppColor.grey,
                            //           ),
                            //         ),
                            //       ),
                            //       const Spacer(),
                            //       /*                             Text(
                            //         data.encounterStartDate != null
                            //             ? formattedDate
                            //             : "",
                            //         maxLines: 1,
                            //         overflow: TextOverflow.ellipsis,
                            //         style: applyRobotoFont(
                            //           fontSize: 12,
                            //           color: AppColor.grey,
                            //           fontWeight: FontWeight.w500,
                            //         ),
                            //       ),
                            //       const SizedBox(height: AppSize.ks / 3), */
                            //     ],
                            //   ),
                            // ),

                            const SizedBox(height: AppSize.ks),
                            SizedBox(
                              width: Responsive.isMobile(context)
                                  ? AppSize.width(context) * 0.74
                                  : AppSize.width(context) * 0.6,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: AppSize.width(context) * 0.5,
                                    child: Text(
                                      "${loc.vgReportId}: ${data.diagnosticReportId.toString()}",
                                      style: applyRobotoFont(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.grey,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const Spacer(),
                                  /*  Text(
                                data.encounterStartDate != null
                                    ? formattedTime
                                    : "",
                                style: applyRobotoFont(
                                  fontSize: 12,
                                  color: AppColor.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ), */
                                  const SizedBox(height: AppSize.ks / 3),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Divider(
                      color: AppColor.grey.withOpacity(0.2),
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                );
              },
            ),
          ),
        ]),
  );
}
