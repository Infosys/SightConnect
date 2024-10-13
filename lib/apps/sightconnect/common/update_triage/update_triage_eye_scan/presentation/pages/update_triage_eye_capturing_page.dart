/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/update_triage/update_triage_eye_scan/presentation/provider/update_triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/pages/app_camera_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpdateTriageEyeCapturingPage extends HookConsumerWidget {
  const UpdateTriageEyeCapturingPage({
    required this.diagnosticReportId,
    super.key,
  });
  final int diagnosticReportId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    final model = ref.watch(updateTriageEyeScanProvider);
    var isLoading = useState(false);

    if (isLoading.value) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }

    return AppCameraPage(
      isDrawerEnabled: false,
      onCapture: (image) async {
        final navigator = Navigator.of(context);
        if (image == null) {
          Fluttertoast.showToast(msg: loc.imageNotCapturedToastMessage);
        } else {
          isLoading.value = true;
          if (model.currentEye == TriageEyeType.RIGHT) {
            await model.setRightEyeImage(image);
            model.setCurrentEye(TriageEyeType.LEFT);
            isLoading.value = false;
          } else if (model.currentEye == TriageEyeType.LEFT) {
            isLoading.value = true;
            await model.setLeftEyeImage(image);
            try {
              bool response =
                  await model.updateEyeScanReport(diagnosticReportId);
              if (response) {
                Fluttertoast.showToast(
                    msg: loc.triageEyeScanUpdatedSuccessfully);
                navigator.pop();
                navigator.pop();
              } else {
                Fluttertoast.showToast(msg: loc.triageErrorEyeScanNotUpdated);
              }
            } catch (e) {
              logger.e("Error: $e");
              Fluttertoast.showToast(msg: "Error: $e");
            } finally {
              isLoading.value = false;
            }
          }
        }
      },
      topHeading: _eyeLocalization(model.currentEye, context),
      eye: model.currentEye,
    );
  }

  String _eyeLocalization(TriageEyeType eye, BuildContext context) {
    return switch (eye) {
      TriageEyeType.LEFT => context.loc!.leftEyeString,
      TriageEyeType.RIGHT => context.loc!.rightEyeString,
      TriageEyeType.BOTH => context.loc!.bothEyesString,
      _ => "",
    };
  }
}
