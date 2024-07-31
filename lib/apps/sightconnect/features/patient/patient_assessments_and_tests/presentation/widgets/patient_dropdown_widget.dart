import 'package:eye_care_for_all/apps/sightconnect/core/providers/patient_assesssment_and_test_provider_new.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientDropDownWidget extends HookConsumerWidget {
  const PatientDropDownWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(patientAssessmentAndTestProvider);

    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: AppColor.black.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<TriageReportUserEntity>(
          padding: EdgeInsets.zero,
          value: model.selectedPatient,
          onChanged: (patient) {
            model.setPatient(patient!);
          },
          icon: const Icon(
            CupertinoIcons.chevron_down,
            color: AppColor.black,
          ),
          iconSize: 18,
          elevation: 0,
          dropdownColor: AppColor.white,
          items: model.getPatients().map((TriageReportUserEntity person) {
            return DropdownMenuItem<TriageReportUserEntity>(
              enabled: true,
              value: person,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  (person.image.isEmpty)
                      ? AppNameAvatar(
                          name: person.name,
                          radius: 14,
                          fontSize: 10,
                        )
                      : AppNetworkImage(
                          imageUrl: person.image,
                          radius: 14,
                        ),
                  const SizedBox(width: 8),
                  Text(
                    person.name.capitalizeFirstOfEach(),
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
