/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/app_consent_form.dart';
import 'package:flutter/material.dart';

void showTermAndServiceDialog(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const AppConsentFormPage(
        isPreview: true,
      ),
    ),
  );

  // showDialog(
  //   context: context,
  //   builder: (context) {
  //     return const TermAndServiceDialog();
  //   },
  // );
}
