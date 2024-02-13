import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_eye_scan/presentation/provider/update_triage_eye_scan_provider.dart';
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
          child: CircularProgressIndicator(),
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
                Fluttertoast.showToast(msg: "Eye scan updated successfully");
                navigator.pop();
                navigator.pop();
              } else {
                Fluttertoast.showToast(msg: "Error: Eye scan not updated");
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
    );
  }

  String _eyeLocalization(TriageEyeType eye, BuildContext context) {
    return switch (eye) {
      TriageEyeType.LEFT => context.loc!.leftEyeString,
      TriageEyeType.RIGHT => context.loc!.rightEyeString,
      TriageEyeType.BOTH => context.loc!.bothEyeString,
      _ => "",
    };
  }
}
