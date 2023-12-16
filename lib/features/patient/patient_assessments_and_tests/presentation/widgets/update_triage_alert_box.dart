import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/provider/patient_assessment_card_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpdateTriageAlertBox extends ConsumerWidget {
  const UpdateTriageAlertBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(patientAssessmentCardProvider);

    return BlurDialogBox(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Select Steps to Redo'),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.close),
          )
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          UpdateTriageAlertBoxListOptoion(
            title: 'Eye Assessment Questions',
            subtitle: 'Completed',
            subtitlecolor: AppColor.green,
            chipText: 'Routine Checkup',
            chipColor: AppColor.green,
            isSelected: model.isQuestionnaireSelected,
            onPressed: (value) {
              model.setQuestionnaireSelected = value;
            },
          ),
          UpdateTriageAlertBoxListOptoion(
            title: 'Visual Acuity Test',
            subtitle: 'Partially Completed',
            subtitlecolor: AppColor.grey,
            chipText: 'N/A',
            chipColor: AppColor.grey,
            isSelected: model.isVisualAcuitySelected,
            onPressed: (value) {
              model.setVisualAcuitySelected = value;
            },
          ),
          UpdateTriageAlertBoxListOptoion(
            title: 'Eye Scan',
            subtitle: 'Pending',
            subtitlecolor: AppColor.orange,
            chipText: 'Urgent Consult',
            chipColor: AppColor.red,
            isSelected: model.isEyeScanned,
            onPressed: (value) {
              model.setEyeScanned = value;
            },
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Start'),
              ),
              const SizedBox(width: AppSize.kmwidth),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
            ],
          ),
        ],
      ),
      actions: const [],
    );
  }
}

class UpdateTriageAlertBoxListOptoion extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color subtitlecolor;
  final String chipText;
  final Color chipColor;
  final Function(bool) onPressed;
  final bool isSelected;
  const UpdateTriageAlertBoxListOptoion({
    super.key,
    required this.title,
    required this.subtitle,
    required this.subtitlecolor,
    required this.chipText,
    required this.chipColor,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: AppSize.width(context) * 0.88,
      child: CheckboxListTile(
        contentPadding: const EdgeInsets.all(0),
        controlAffinity: ListTileControlAffinity.leading,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                title,
                style: applyRobotoFont(
                  fontSize: 14,
                  color: AppColor.black,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: chipColor,
              ),
              child: Text(
                chipText,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
            )
          ],
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: subtitlecolor,
          ),
        ),
        value: isSelected,
        onChanged: (value) {
          onPressed(value!);
        },
      ),
    );
  }
}
