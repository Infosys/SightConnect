import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/eye_scan_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_ivr_call.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_questions.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_vision_center.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_visual_acuity.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../shared/responsive/responsive.dart';
import '../../../vision_technician_close_assessment/presentation/pages/vision_technician_close_assessment_page.dart';
import '../widgets/preliminary_assessment_care_plan.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

class VisionTechnicianPreliminaryAssessmentPage extends HookConsumerWidget {
  final VTPatientDto? patientDetails;
  const VisionTechnicianPreliminaryAssessmentPage({
    super.key,
    this.patientDetails,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    final isMobile = Responsive.isMobile(context);
    var selectedOption = useState<String>(loc.yesButton);

    if (patientDetails == null) {
      return Scaffold(
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
      );
    }

    final refWatch = ref.watch(preliminaryAssessmentHelperProvider);
    final canSubmit = refWatch.canSubmit();
    final isLoading = refWatch.isLoading;

    return Scaffold(
      appBar: CustomAppbar(
        leadingWidth: 70,
        onBackPress: () {
          ref.invalidate(vtTriageSaveProvider);
          ref.invalidate(preliminaryAssessmentHelperProvider);
        },
        centerTitle: false,
        title: Text(
          loc.vtPreliminaryAssessment,
          style: applyFiraSansFont(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.km),
          child: Column(
            children: [
              PreliminaryAssessmentCard(patient: patientDetails),
              isMobile
                  ? const SizedBox(height: AppSize.km)
                  : const SizedBox(height: AppSize.kl),
              PreliminaryAssessmentIvrCall(
                onSelectedOptionChanged: (value) {
                  if (value == loc.yesButton) {
                    refWatch.toggleIvrCall(true);
                  } else {
                    refWatch.toggleIvrCall(false);
                  }
                  selectedOption.value = value;
                },
                intialValue: selectedOption.value,
              ),
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
                            final response =
                                await saveProvider.saveTriage(patientDetails!);
                            response.fold(
                              (failure) {
                                Fluttertoast.showToast(
                                    msg: failure.errorMessage);
                              },
                              (triageResponseModel) {
                                navigator.push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return VisionTechnicianCloseAssessmentPage(
                                        patientId:
                                            patientDetails?.id.toString() ?? "",
                                        encounterId:
                                            triageResponseModel.encounterId,
                                        patientName: patientDetails?.name ?? "",
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
    );
  }
}
