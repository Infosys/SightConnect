/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_register_page/presentation/providers/vision_technician_register_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterPatientButton extends ConsumerWidget {
  const RegisterPatientButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;

    return OutlinedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PatientRegistrationMiniappPage(
              actionType: MiniAppActionType.REGISTER,
              displayName: loc.vtRegisterPatient,
            ),
          ),
        ).then((value) => ref.invalidate(vtRegisterProvider));
      },
      icon: const Icon(Icons.add),
      label: Text(
        loc.vtRegisterPatient,
        style: applyRobotoFont(
          color: AppColor.primary,
          fontSize: 16,
        ),
      ),
    );
  }
}
