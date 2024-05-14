import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PatientHeader extends HookWidget {
  const PatientHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSize.km),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Welcome to SightConnect! Taking care of your vision is important, and we are here for you every step of the way.',
            style: applyFiraSansFont(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
