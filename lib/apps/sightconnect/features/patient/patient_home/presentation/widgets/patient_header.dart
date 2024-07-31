import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PatientHeader extends HookWidget {
  const PatientHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSize.km),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            loc.patientHeaderWelcomeText,
            style: applyFiraSansFont(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
