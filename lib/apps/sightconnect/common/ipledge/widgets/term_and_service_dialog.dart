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
