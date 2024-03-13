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
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
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
    var canSubmit = refWatch.canSubmit();
    var isLoading = refWatch.isLoading;

    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: AppColor.white,
        ),
        padding: const EdgeInsets.all(AppSize.km),
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
                            if (triageResponseModel.encounterId == null) {
                              Fluttertoast.showToast(
                                  msg: loc.vtSomethingWentWrong);
                              return;
                            }
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    VisionTechnicianCloseAssessmentPage(
                                  patientId:
                                      patientDetails?.id.toString() ?? "",
                                  encounterId: triageResponseModel.encounterId!,
                                  patientName: patientDetails?.name ?? "",
                                ),
                              ),
                            );
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
          padding: const EdgeInsets.all(AppSize.km),
          child: Column(
            children: [
              PreliminaryAssessmentCard(
                patient: patientDetails,
              ),
              Responsive.isMobile(context)
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
              Responsive.isMobile(context)
                  ? const SizedBox(height: AppSize.km)
                  : const SizedBox(height: AppSize.kl),
              const PreliminaryAssessmentQuestions(),
              if (selectedOption.value == loc.noButton)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Responsive.isMobile(context)
                        ? const SizedBox(height: AppSize.km)
                        : const SizedBox(height: AppSize.kl),
                    const EyeScanCard(),
                    Responsive.isMobile(context)
                        ? const SizedBox(height: AppSize.km)
                        : const SizedBox(height: AppSize.kl),
                    const PreliminaryAssessmentVisualAcuity(),
                  ],
                ),
              Responsive.isMobile(context)
                  ? const SizedBox(height: AppSize.km)
                  : const SizedBox(height: AppSize.kl),
              const PreliminaryAssessmentCarePlan(),
              Responsive.isMobile(context)
                  ? const SizedBox(height: AppSize.km)
                  : const SizedBox(height: AppSize.kl),
              const PreliminaryAssessmentVisionCenter(),
              Responsive.isMobile(context)
                  ? const SizedBox(height: AppSize.km * 3)
                  : const SizedBox(height: AppSize.kl * 3),
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
          Radius.circular(AppSize.km - 5),
        ),
      ),
      padding: const EdgeInsets.all(AppSize.kl),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AppNameAvatar(name: patient?.name),
              const SizedBox(width: AppSize.ks),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    patient?.name?.capitalizeFirstOfEach() ?? "",
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ks),
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
              const SizedBox(height: AppSize.ks),
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
              const SizedBox(height: AppSize.ks),
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
                const SizedBox(height: AppSize.ks),
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
