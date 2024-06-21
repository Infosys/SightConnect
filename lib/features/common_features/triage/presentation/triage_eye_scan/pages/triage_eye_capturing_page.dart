import 'dart:async';

import 'package:camera/camera.dart';
import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/models/keycloak.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/widgets/camera_server_exception.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/widgets/test_completion_dialog.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_result/pages/triage_result_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity/features/visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_feedback_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/pages/app_camera_page.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/triage_eye_scan_provider.dart';

class TriageEyeCapturingPage extends HookConsumerWidget {
  const TriageEyeCapturingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    var model = ref.watch(triageEyeScanProvider);
    var isLoading = useState(false);

    if (isLoading.value) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }

    return AppCameraPage(
      onCapture: (image) async {
        if (image == null) {
          Fluttertoast.showToast(msg: loc.imageNotCapturedToastMessage);
          return;
        }
        switch (model.currentEye) {
          case TriageEyeType.RIGHT:
            await _handleRightEyeCapture(model, isLoading, image, context);
            break;
          case TriageEyeType.LEFT:
            await _handleLeftEyeCapture(ref, isLoading, image, context);
            break;
          default:
            break;
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

  Future<void> _handleRightEyeCapture(
    TriageEyeScanProvider model,
    ValueNotifier<bool> isLoading,
    XFile image,
    BuildContext context,
  ) async {
    isLoading.value = true;
    try {
      await model.setRightEyeImage(image);
      isLoading.value = false;
      model.setCurrentEye(TriageEyeType.LEFT);
    } on Exception catch (e) {
      isLoading.value = false;
      model.setCurrentEye(TriageEyeType.RIGHT);
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return BlurDialogBox(
                content: const Text(
                    "Image could not be uploaded due to bad internet connection. Please try again"),
                actions: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Ok"),
                  ),
                ]);
          },
        );
      }
    }
  }

  Future<void> _handleLeftEyeCapture(
    WidgetRef ref,
    ValueNotifier<bool> isLoading,
    XFile image,
    BuildContext context,
  ) async {
    final model = ref.read(triageEyeScanProvider);
    isLoading.value = true;
    try {
      await model.setLeftEyeImage(image);
      await model.saveTriageEyeScanResponseToDB();
      final String? activeRole =
          PersistentAuthStateService.authState.activeRole;
      final Role? role = roleMapper(activeRole);
      if (role == Role.ROLE_OPTOMETRIST) {
        // For Optometrist show feedback form and call validation API
        isLoading.value = false;
        if (context.mounted) {
          showTriageFeedbackForm(context);
        }
      } else {
        // For other roles, call triage API
        if (context.mounted) {
          await saveTriage(ref, isLoading, context);
        }
      }
    } on Exception catch (e) {
      isLoading.value = false;
      model.setCurrentEye(TriageEyeType.LEFT);
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return BlurDialogBox(
                title: const Text("Image upload Failed"),
                content: const Text(
                    "Image could not be uploaded due to bad internet connection. Please try again."),
                actions: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Ok"),
                      ),
                    ),
                  ),
                ]);
          },
        );
      }
    }
  }

  Future<void> saveTriage(
    WidgetRef ref,
    ValueNotifier<bool> isLoading,
    BuildContext context,
  ) async {
    Either<Failure, TriagePostModel> response;
    var triageModel = ref.read(triageProvider);

    if (triageModel.triageMode == TriageMode.EVENT) {
      response = await triageModel.saveTriageForEvent(
          3, ref.read(addEventDetailsProvider).eventId);
    } else {
      response = await triageModel.saveTriage(3);
    }
    response.fold(
      (failure) async {
        isLoading.value = false;
        logger.d({"Failure while saving in local db ": failure});
        _showServerExceptionDialog(context, failure, ref);
      },
      (result) async {
        isLoading.value = false;
        logger.d({"saveTriageEyeScanResponseToDB": "Success"});
        _showTestCompletionDialog(context, result, ref);
      },
    );
  }

  _showTestCompletionDialog(
      BuildContext context, TriagePostModel result, WidgetRef ref) {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return TestCompletionDialog(
          onDismiss: () async {
            ref.read(triageStepperProvider).reset();
            if (context.mounted) {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => TriageResultPage(
                    triageResult: result,
                  ),
                ),
              );
            }
          },
        );
      },
    );
  }

  _showServerExceptionDialog(
      BuildContext context, Failure failure, WidgetRef ref) {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return CameraServerExceptionDialog(
          message: failure.errorMessage,
          onRetry: () {
            ref.read(resetProvider).reset();
            ref.read(accessibilityProvider).resetBrightness();
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        );
      },
    );
  }
}
