import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/eye_scan_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_ivr_call.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_questions.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_recommendation.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_vision_center.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_visual_acuity.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_features/triage/domain/models/triage_response_model.dart';
import '../../../vision_technician_assessment_report/presentation/pages/vision_technician_assessment_report_page.dart';
import '../providers/vision_technician_preliminary_assessment_provider.dart';
import '../../../../patient/patient_authentication/presentation/provider/patient_profile_provider.dart';
import '../widgets/preliminary_assessment_care_plan.dart';

var visionTechnicianResultProvider = ChangeNotifierProvider.autoDispose(
  (ref) {
    return VisionTechnicianTriageResult();
  },
);

class VisionTechnicianTriageResult extends ChangeNotifier {
  TriageResponseModel? _triageResponseModel;
  TriageResponseModel? get triageResponseModel => _triageResponseModel;

  void setTriageResponseModel(TriageResponseModel triageResponseModel) {
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
            var response =
                await ref.read(preliminaryAssessmentProvider).saveTriage();
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VisionTechnicianAssessmentReportPage(
                  triageResponseModel: ref
                      .read(visionTechnicianResultProvider)
                      .triageResponseModel,
                ),
              ),
            );
          },
          child: const Text('Preliminary Assessment'),
        ),
      ),
      // body: Form(
      //   key: _formKey,
      //   child: SingleChildScrollView(
      //     child: Padding(
      //       padding: const EdgeInsets.all(AppSize.kmpadding),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: [
      //           // const PreliminaryAssessmentCard(),
      //           const SizedBox(height: AppSize.klheight),
      //           // const PreliminaryAssessmentIvrCard(),
      //           const SizedBox(height: AppSize.klheight),
      //           PreliminaryAssessmentIvrCall(
      //             selectedOption: selectedOption,
      //             onSelectedOptionChanged: updateVisibility,
      //           ),
      //         );
      //       },
      //       child: const Text('Preliminary Assessment')),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            children: [
              const PreliminaryAssessmentCard(),

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
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // VTPatientModel patient =
    //     ref.read(registerNewPatientHelperProvider).patientDetails!;
    var model =
        ref.watch(getPatientCurrentProfileProvider).asData?.value.profile;
    // var dateYear = DateTime.now().year;

    // int giveAge() {
    //   var age = int.parse(model?.patient?.yearOfBirth ?? "");
    //   return (dateYear - age).toInt();
    // }

    String genderString =
        model?.patient?.gender.toString().split('.').last ?? "";
    final address = _formateAddress(
      line: model?.patient?.address?.first.line ?? "",
      ward: model?.patient?.address?.first.ward ?? "",
      district: model?.patient?.address?.first.district ?? "",
      state: model?.patient?.address?.first.state ?? "",
    );

    String profileImage = model?.patient?.profilePhoto ?? "";

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
              CircleAvatar(
                radius: AppSize.klradius,
                // child: Imag,
                child: Image.network(
                  profileImage,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: AppSize.kswidth),
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    model?.patient?.name ?? "",
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    model?.patient?.abhaNumber.toString() ?? "",
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
                    "",
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
                    genderString ?? "",
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
                  address ?? "",
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
}

String _formateAddress({
  required String line,
  required String ward,
  required String district,
  required String state,
}) {
  return "$line, $ward, $district, $state";
}
