import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SeverityInput extends ConsumerStatefulWidget {
  const SeverityInput({super.key});

  @override
  ConsumerState<SeverityInput> createState() => _SeverityInputState();
}

class _SeverityInputState extends ConsumerState<SeverityInput> {
  String severity = "ROUTINE";

  @override
  Widget build(BuildContext context) {
    // var readRef = ref.read(preliminaryAssessmentHelperProvider);
    final loc = context.loc!;
    return SizedBox(
      height: AppSize.klheight * 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            loc.vtSeverity,
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSize.kspadding),
            child: DropdownButton<String>(
              value: severity,
              items: <String>[
                "ROUTINE",
                "URGENT",
                "ASAP",
                "STAT",
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  severity = value!;
                });
                setSeverity(value!, ref);
              },
            ),
          ),
        ],
      ),
    );
  }

  void setSeverity(String value, WidgetRef ref) {
    if (value == "ROUTINE") {
      ref
          .read(preliminaryAssessmentHelperProvider)
          .setSeverity(TriagePriority.ROUTINE);
    } else if (value == "URGENT") {
      ref
          .read(preliminaryAssessmentHelperProvider)
          .setSeverity(TriagePriority.URGENT);
    } else if (value == "ASAP") {
      ref
          .read(preliminaryAssessmentHelperProvider)
          .setSeverity(TriagePriority.ASAP);
    } else if (value == "STAT") {
      ref
          .read(preliminaryAssessmentHelperProvider)
          .setSeverity(TriagePriority.STAT);
    }
  }
}
