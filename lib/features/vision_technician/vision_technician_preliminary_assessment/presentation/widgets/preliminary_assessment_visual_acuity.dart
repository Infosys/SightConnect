import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/device_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/source/vt_device_data_remote_source.dart';
import '../providers/vision_technician_triage_provider.dart';
import 'preliminary_assessment_equipment_selection.dart';

class PreliminaryAssessmentVisualAcuity extends HookConsumerWidget {
  const PreliminaryAssessmentVisualAcuity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    DeviceModel selectedEquipment =
        ref.watch(preliminaryAssessmentHelperProvider).selectedEquipment;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSize.km),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.km),
        boxShadow: applycustomShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            loc.vtVisualAcuity,
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.ks),
          ref.watch(vtDeviceDataProvider).when(
                data: (equipmentsData) {
                  return PreliminaryAssessmentEquipmentSelection(
                    equipmentsData: equipmentsData,
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stackTrace) => Column(
                  children: [
                    Text(
                      'Cannot show equipment selection due to server error. You can only enter data for visual acuity in LOGMAR values below',
                      style: applyRobotoFont(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: AppSize.km),
                    const Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),
          const SizedBox(height: AppSize.km),
          Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Wrap(
                  runSpacing: AppSize.ks,
                  children: [
                    SizedBox(
                      width: Responsive.isMobile(context)
                          ? AppSize.width(context)
                          : AppSize.width(context) * 0.2,
                      child: TextFormField(
                        validator: (value) {
                          return validateEyeSight(value, selectedEquipment);
                        },
                        onChanged: (value) {
                          double? eyeSight = double.tryParse(value);
                          if (eyeSight != null) {
                            ref
                                .read(visionTechnicianTriageProvider)
                                .setRightEyeSight(eyeSight);
                            ref
                                .read(preliminaryAssessmentHelperProvider)
                                .setVisualAcuityRightEyeValueEntered(true);
                            return;
                          }
                          ref
                              .read(preliminaryAssessmentHelperProvider)
                              .setVisualAcuityRightEyeValueEntered(false);
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: loc.vtRightEye,
                          hintStyle: applyRobotoFont(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSize.kl),
                    SizedBox(
                      width: Responsive.isMobile(context)
                          ? AppSize.width(context)
                          : AppSize.width(context) * 0.2,
                      child: TextFormField(
                        validator: (value) {
                          return validateEyeSight(value, selectedEquipment);
                        },
                        onChanged: (value) {
                          double? eyeSight = double.tryParse(value);
                          if (eyeSight != null) {
                            ref
                                .read(visionTechnicianTriageProvider)
                                .setLeftEyeSight(eyeSight);
                            ref
                                .read(preliminaryAssessmentHelperProvider)
                                .setVisualAcuityLeftEyeValueEntered(true);
                            return;
                          }
                          ref
                              .read(preliminaryAssessmentHelperProvider)
                              .setVisualAcuityLeftEyeValueEntered(false);
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: loc.vtLeftEye,
                          hintStyle: applyRobotoFont(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSize.kl),
                    SizedBox(
                      width: Responsive.isMobile(context)
                          ? AppSize.width(context)
                          : AppSize.width(context) * 0.2,
                      child: TextFormField(
                        validator: (value) {
                          return validateEyeSight(value, selectedEquipment);
                        },
                        onChanged: (value) {
                          double? eyeSight = double.tryParse(value);
                          if (eyeSight != null) {
                            ref
                                .read(visionTechnicianTriageProvider)
                                .setBothEyeSight(eyeSight);
                            ref
                                .read(preliminaryAssessmentHelperProvider)
                                .setVisualAcuityBothEyeValueEntered(true);
                            return;
                          }
                          ref
                              .read(preliminaryAssessmentHelperProvider)
                              .setVisualAcuityBothEyeValueEntered(false);
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: loc.vtBothEyes,
                          hintStyle: applyRobotoFont(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String? validateEyeSight(String? value, DeviceModel selectedEquipment) {
    double minimumValue =
        double.parse(selectedEquipment.deviceObservation!.rangeMin!);
    double maximumValue =
        double.parse(selectedEquipment.deviceObservation!.rangeMax!);
    if (value == null || value.isEmpty) {
      return 'Please enter a valid value. ex (-20 to 20)';
    } else if (value.isNotEmpty &&
        RegExp(r'^\d+(\.\d+)?$').hasMatch(value) == false) {
      return "Only numerical/decimal values are allowed";
    } else if (value.isNotEmpty && RegExp(r'^\d+(\.\d+)?$').hasMatch(value)) {
      double eyeSight = double.parse(value);
      if (eyeSight < minimumValue || eyeSight > maximumValue) {
        return 'Please enter a value between $minimumValue and $maximumValue';
      } else {
        return null;
      }
    } else {
      return 'Please enter a valid value. ex (-20 to 20)';
    }
  }
}
