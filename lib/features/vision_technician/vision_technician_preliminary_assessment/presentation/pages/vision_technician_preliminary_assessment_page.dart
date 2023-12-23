import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/patient_assesssment_and_test_provider_new.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/profile_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/eye_scan_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_ivr_call.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_questions.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_vision_center.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_visual_acuity.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_features/triage/domain/models/triage_post_model.dart';
import '../../../vision_technician_assessment_report/presentation/pages/vision_technician_assessment_report_page.dart';
import '../providers/vision_technician_preliminary_assessment_provider.dart';
import '../widgets/preliminary_assessment_care_plan.dart';

var visionTechnicianResultProvider = ChangeNotifierProvider.autoDispose(
  (ref) {
    return VisionTechnicianTriageResult();
  },
);

class VisionTechnicianTriageResult extends ChangeNotifier {
  TriagePostModel? _triageResponseModel;
  TriagePostModel? get triageResponseModel => _triageResponseModel;

  void setTriageResponseModel(TriagePostModel triageResponseModel) {
    _triageResponseModel = triageResponseModel;
    notifyListeners();
  }
}

class VisionTechnicianPreliminaryAssessmentPage extends HookConsumerWidget {
  const VisionTechnicianPreliminaryAssessmentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedOption = useState("Yes");
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: ElevatedButton(
          onPressed: () async {
            ref.read(visionTechnicianTriageProvider).saveQuestionaireResponse();
            var response = await ref.read(vtTriageProvider).saveTriage();
            response.fold(
              (failure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(failure.errorMessage),
                  ),
                );
              },
              (triageResponseModel) {
                ref
                    .read(visionTechnicianResultProvider)
                    .setTriageResponseModel(triageResponseModel);
              },
            );
          },
          child: Text(
            "Submit",
            style: applyRobotoFont(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColor.white,
            ),
          ),
        ),
      ),
      appBar: CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: InkWell(
          onTap: () async {
            final navigator = Navigator.of(context);
            try {
              final response = await ref
                  .read(patientAssessmentAndTestProvider)
                  .getTriageDetailedReport(33200000017);
              navigator.push(MaterialPageRoute(
                builder: (context) {
                  return VisionTechnicianAssessmentReportPage(
                    assessmentDetailsReport: response,
                  );
                },
              ));
            } catch (e) {
              logger.d("$e");
            }
          },
          child: const Text('Preliminary Assessment'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            children: [
              const PreliminaryAssessmentCard(
                patient: null,
              ),

              // const PreliminaryAssessmentIvrCard(),
              const SizedBox(height: AppSize.klheight),
              PreliminaryAssessmentIvrCall(
                onSelectedOptionChanged: (value) {
                  selectedOption.value = value;
                },
                intialValue: selectedOption.value,
              ),
              if (selectedOption.value == "No")
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: AppSize.klheight),
                    PreliminaryAssessmentQuestions(),
                    SizedBox(height: AppSize.klheight),
                    EyeScanCard(),
                    SizedBox(height: AppSize.klheight),
                    PreliminaryAssessmentVisualAcuity(),
                  ],
                ),
              // const PreliminaryAssessmentRecommendation(),
              const SizedBox(height: AppSize.klheight),
              const PreliminaryAssessmentCarePlan(),
              const SizedBox(height: AppSize.klheight),
              const PreliminaryAssessmentVisionCenter(),

              const SizedBox(height: AppSize.klheight * 3),
            ],
          ),
        ),
      ),
    );
  }
}

class PreliminaryAssessmentCard extends ConsumerWidget {
  const PreliminaryAssessmentCard({
    required this.patient,
    super.key,
  });
  final PatientResponseModel? patient;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (patient == null) {
      return Container();
    }
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.kmradius - 5),
        ),
      ),
      padding: const EdgeInsets.all(AppSize.klpadding),
      child: Wrap(
        runSpacing: AppSize.ksheight,
        direction: Axis.horizontal,
        children: [
          Wrap(
            direction: Axis.horizontal,
            children: [
              patient?.profile?.patient?.profilePhoto != null
                  ? AppNetworkImage(
                      imageUrl: patient!.profile!.patient!.profilePhoto!)
                  : const CircleAvatar(),
              const SizedBox(width: AppSize.kswidth),
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    patient?.profile?.patient?.name ?? "",
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    "${patient?.profile?.patient?.abhaNumber ?? ""}",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      color: AppColor.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: AppSize.kswidth * 3),
          Wrap(direction: Axis.vertical, spacing: AppSize.ksheight, children: [
            Wrap(spacing: AppSize.kmwidth * 5, children: [
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    "Age",
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    " ${patient?.profile?.patient?.age ?? ""}",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      color: AppColor.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    "Gender",
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    "${patient?.profile?.patient?.gender ?? ""}",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      color: AppColor.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ]),
            Wrap(
              direction: Axis.vertical,
              children: [
                Text(
                  "Address",
                  style: applyFiraSansFont(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text(
                  formatAddress(),
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }

  String formatAddress() {
    return "";
  }

  String formatAge() {
    return "";
  }
}
