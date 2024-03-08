import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/eye_scan_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_ivr_call.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_questions.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_vision_center.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_visual_acuity.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../common_features/triage/domain/models/triage_post_model.dart';
import '../../../vision_technician_close_assessment/presentation/pages/vision_technician_close_assessment_page.dart';
import '../widgets/preliminary_assessment_care_plan.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

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
  VTPatientDto? patientDetails;

  VisionTechnicianPreliminaryAssessmentPage({
    super.key,
    this.patientDetails,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    var selectedOption = useState(loc.yesButton);

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

    var refWatch = ref.watch(preliminaryAssessmentHelperProvider);
    var refRead = ref.read(preliminaryAssessmentHelperProvider);
    var canSubmit = refWatch.recommendationSelected &&
        refWatch.visionCenterSelected &&
        (refWatch.onIvrCall ||
            (refWatch.visualAcuityRightEyeValueEntered &&
                refWatch.visualAcuityLeftEyeValueEntered &&
                refWatch.visualAcuityBothEyeValueEntered &&
                refWatch.imagesSubmitted));
    var isLoading = refWatch.isLoading;

    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: AppColor.white,
        ),
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: isLoading
            ? const Center(child: CircularProgressIndicator.adaptive())
            : ElevatedButton(
                onPressed: canSubmit
                    ? () async {
                        ref
                            .read(visionTechnicianTriageProvider)
                            .saveQuestionaireResponse();
                        var response = await ref
                            .read(vtTriageProvider)
                            .saveTriage(patientDetails!);

                        response.fold(
                          (failure) {
                            Fluttertoast.showToast(msg: failure.errorMessage);
                          },
                          (triageResponseModel) {
                            logger.d(
                                "Triage Response Model: ${triageResponseModel.encounterId}");
                            patientDetails = patientDetails?.copyWith(
                              encounterId: triageResponseModel.encounterId,
                            );
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    VisionTechnicianCloseAssessmentPage(
                                  patientDetails: patientDetails,
                                ),
                              ),
                            );

                            ref
                                .read(visionTechnicianResultProvider)
                                .setTriageResponseModel(triageResponseModel);
                          },
                        );
                      }
                    : null,
                child: Text(
                  loc.vtSubmit,
                  style: applyRobotoFont(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: canSubmit ? AppColor.white : AppColor.grey,
                  ),
                ),
              ),
      ),
      appBar: CustomAppbar(
        leadingWidth: 70,
        onBackPress: () {
          ref.invalidate(vtTriageProvider);
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
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            children: [
              PreliminaryAssessmentCard(
                patient: patientDetails,
              ),
              Responsive.isMobile(context)
                  ? const SizedBox(height: AppSize.kmheight)
                  : const SizedBox(height: AppSize.klheight),
              PreliminaryAssessmentIvrCall(
                onSelectedOptionChanged: (value) {
                  if (value == loc.yesButton) {
                    refRead.toggleIvrCall(true);
                  } else {
                    refRead.toggleIvrCall(false);
                  }
                  selectedOption.value = value;
                },
                intialValue: selectedOption.value,
              ),
              Responsive.isMobile(context)
                  ? const SizedBox(height: AppSize.kmheight)
                  : const SizedBox(height: AppSize.klheight),
              const PreliminaryAssessmentQuestions(),
              if (selectedOption.value == loc.noButton)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Responsive.isMobile(context)
                        ? const SizedBox(height: AppSize.kmheight)
                        : const SizedBox(height: AppSize.klheight),
                    const EyeScanCard(),
                    Responsive.isMobile(context)
                        ? const SizedBox(height: AppSize.kmheight)
                        : const SizedBox(height: AppSize.klheight),
                    const PreliminaryAssessmentVisualAcuity(),
                  ],
                ),
              Responsive.isMobile(context)
                  ? const SizedBox(height: AppSize.kmheight)
                  : const SizedBox(height: AppSize.klheight),
              const PreliminaryAssessmentCarePlan(),
              Responsive.isMobile(context)
                  ? const SizedBox(height: AppSize.kmheight)
                  : const SizedBox(height: AppSize.klheight),
              const PreliminaryAssessmentVisionCenter(),
              Responsive.isMobile(context)
                  ? const SizedBox(height: AppSize.kmheight * 3)
                  : const SizedBox(height: AppSize.klheight * 3),
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
  final VTPatientDto? patient;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    if (patient == null) {
      return Container();
    }
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applycustomShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.kmradius - 5),
        ),
      ),
      padding: const EdgeInsets.all(AppSize.klpadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AppNameAvatar(name: patient?.name),
              const SizedBox(width: AppSize.kswidth),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    patient?.name?.capitalizeFirstOfEach() ?? "",
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    patient == null ? "" : "OP ${patient?.id.toString()}",
                    style: applyRobotoFont(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primary,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                loc.vtAge,
                style: applyFiraSansFont(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: AppSize.ksheight),
              Text(
                calculateAge(patient?.yearOfBirth),
                style: applyRobotoFont(
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                loc.vtGender,
                style: applyFiraSansFont(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: AppSize.ksheight),
              Text(
                patient?.gender.toString().split('.').last ?? "",
                style: applyRobotoFont(
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  loc.vtAddress,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: applyFiraSansFont(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text(
                  formatAddress(patient),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(),
        ],
      ),
    );
  }

  String formatAddress(VTPatientDto? patient) {
    String address = "";

    if (patient == null) return "";

    if (patient.townName != null) {
      address += patient.townName!;
    }

    if (address.isNotEmpty) {
      address += ", ";
    }

    if (patient.districtName != null) {
      address += patient.districtName!;
    }

    if (address.isNotEmpty) {
      address += ", ";
    }

    if (patient.pincode != null) {
      address += patient.pincode!;
    }

    return address;
  }

  String calculateAge(String? yearOfBirth) {
    if (yearOfBirth == null || yearOfBirth.isEmpty) return "";

    return (DateTime.now().year - int.parse(yearOfBirth)).toString();
  }
}
