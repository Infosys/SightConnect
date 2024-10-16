/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/widgets/eye_scan_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_questions.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_vision_center.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_visual_acuity.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_vt_availibility_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../shared/responsive/responsive.dart';
import '../../../vision_technician_close_assessment/presentation/pages/vision_technician_close_assessment_page.dart';
import '../widgets/preliminary_assessment_care_plan.dart';

class VisionTechnicianPreliminaryAssessmentPage
    extends StatefulHookConsumerWidget {
  final VTPatientDto? patientDetails;
  const VisionTechnicianPreliminaryAssessmentPage({
    super.key,
    this.patientDetails,
  });

  @override
  ConsumerState<VisionTechnicianPreliminaryAssessmentPage> createState() =>
      _MyWidgetState();
}

class _MyWidgetState
    extends ConsumerState<VisionTechnicianPreliminaryAssessmentPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        final provider = ref.read(globalVTAvailabilityProvider);
        final saveProvider = ref.read(vtTriageSaveProvider);
        final refWatch = ref.read(preliminaryAssessmentHelperProvider);
        await saveProvider.isIVRCallActive(widget.patientDetails!).then(
              (response) => {
                response.fold(
                  (failure) {
                    refWatch.toggleIvrCall(false);
                    logger.d(failure.errorMessage);
                  },
                  (isCallActive) {
                    refWatch.toggleIvrCall(true);
                  },
                )
              },
            );

        try {
          if (provider.isAvailable) {
            provider.setTemporarilyAvailable(true);
            final value = await saveProvider.markVtStatus(isAvailable: false);
            provider.setAvailability(value);

            logger.d("Setting VT avalibility to Unavailable");
          }
        } catch (e) {
          logger.e("Error in setting VT availability to Unavailable");
        }
      },
    );
  }

  Future<void> vtAvailabilityReset() async {
    final provider = ref.read(globalVTAvailabilityProvider);
    final saveProvider = ref.read(vtTriageSaveProvider);

    try {
      if (provider.isTemporarilyAvailable) {
        final value = await saveProvider.markVtStatus(isAvailable: true);
        provider.setAvailability(value);
        logger.d("Setting VT avalibility to Available");
      }
    } catch (e) {
      logger.e("Error in setting VT availability to Available");
    }
  }

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    final isMobile = Responsive.isMobile(context);
    var selectedOption = useState<String>(loc.noButton);

    if (widget.patientDetails == null) {
      return PopScope(
        onPopInvoked: (value) {
          if (value) {
            return;
          }
          vtAvailabilityReset();
        },
        child: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text(
              loc.vtNoPatientFound,
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );
    }

    final refWatch = ref.watch(preliminaryAssessmentHelperProvider);
    final canSubmit = refWatch.canSubmit();
    final isLoading = refWatch.isLoading;

    return PopScope(
      onPopInvoked: (value) {
        if (value) {
          return;
        }
        vtAvailabilityReset();
      },
      child: Scaffold(
        appBar: CustomAppbar(
          leadingWidth: 70,
          onBackPress: () {
            ref.invalidate(vtTriageSaveProvider);
            ref.invalidate(preliminaryAssessmentHelperProvider);
            vtAvailabilityReset();
          },
          centerTitle: false,
          title: Text(
            loc.vtPreliminaryAssessment,
            style: applyFiraSansFont(fontWeight: FontWeight.w500),
          ),
          actions: ref.watch(vtTriageSaveProvider).isLoading
              ? []
              : [
                  Chip(
                    backgroundColor: AppColor.lightGrey,
                    label: Text(
                      refWatch.onIvrCall ? "IVR Call" : "In Person",
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  )
                ],
        ),
        body: SingleChildScrollView(
          child: ref.watch(vtTriageSaveProvider).isLoading
              ? const Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : Padding(
                  padding: const EdgeInsets.all(AppSize.km),
                  child: Column(
                    children: [
                      PreliminaryAssessmentCard(patient: widget.patientDetails),
                      // isMobile
                      //     ? const SizedBox(height: AppSize.km)
                      //     : const SizedBox(height: AppSize.kl),
                      // PreliminaryAssessmentIvrCall(
                      //   onSelectedOptionChanged: (value) async {
                      //     if (value == loc.yesButton) {
                      //       await ref
                      //           .read(vtTriageSaveProvider)
                      //           .isIVRCallActive(widget.patientDetails!)
                      //           .then((response) => {
                      //                 response.fold(
                      //                   (failure) {
                      //                     Fluttertoast.showToast(
                      //                         msg: failure.errorMessage);
                      //                   },
                      //                   (isCallActive) {
                      //                     refWatch.toggleIvrCall(true);
                      //                     selectedOption.value = value;
                      //                   },
                      //                 )
                      //               });
                      //     } else {
                      //       refWatch.toggleIvrCall(false);
                      //       selectedOption.value = value;
                      //     }
                      //   },
                      //   intialValue: selectedOption.value,
                      // ),
                      isMobile
                          ? const SizedBox(height: AppSize.km)
                          : const SizedBox(height: AppSize.kl),
                      const PreliminaryAssessmentQuestions(),
                      if (selectedOption.value == loc.noButton)
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            isMobile
                                ? const SizedBox(height: AppSize.km)
                                : const SizedBox(height: AppSize.kl),
                            const EyeScanCard(),
                            isMobile
                                ? const SizedBox(height: AppSize.km)
                                : const SizedBox(height: AppSize.kl),
                            const PreliminaryAssessmentVisualAcuity(),
                          ],
                        ),
                      isMobile
                          ? const SizedBox(height: AppSize.km)
                          : const SizedBox(height: AppSize.kl),
                      const PreliminaryAssessmentCarePlan(),
                      isMobile
                          ? const SizedBox(height: AppSize.km)
                          : const SizedBox(height: AppSize.kl),
                      const PreliminaryAssessmentVisionCenter(),
                      isMobile
                          ? const SizedBox(height: AppSize.km * 3)
                          : const SizedBox(height: AppSize.kl * 3),
                    ],
                  ),
                ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: AppColor.white,
          ),
          padding: const EdgeInsets.all(AppSize.km),
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : Consumer(
                  builder: (context, ref, child) {
                    final navigator = Navigator.of(context);
                    final triageProvider =
                        ref.watch(visionTechnicianTriageProvider);
                    final saveProvider = ref.watch(vtTriageSaveProvider);

                    return ElevatedButton(
                      onPressed: canSubmit
                          ? () async {
                              triageProvider.saveQuestionaireResponse();
                              final response = await saveProvider
                                  .saveTriage(widget.patientDetails!);
                              response.fold(
                                (failure) {
                                  Fluttertoast.showToast(
                                      msg: failure.errorMessage);
                                },
                                (triageResponseModel) {
                                  // reset the availability of VT
                                  vtAvailabilityReset();
                                  navigator.pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return VisionTechnicianCloseAssessmentPage(
                                          patientId: widget.patientDetails?.id
                                                  .toString() ??
                                              "",
                                          encounterId:
                                              triageResponseModel.encounter?.id,
                                          patientName:
                                              widget.patientDetails?.name ?? "",
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            }
                          : null,
                      child: Text(
                        loc.vtSubmit,
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
