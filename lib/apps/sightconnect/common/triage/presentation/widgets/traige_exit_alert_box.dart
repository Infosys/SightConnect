import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/source/local/triage_db_helper.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/visual_acuity/features/visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/core/models/keycloak.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';
import 'package:eye_care_for_all/shared/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/loading_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TriageExitAlertBox extends HookConsumerWidget {
  const TriageExitAlertBox({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(triageStepperProvider);
    final loc = context.loc!;
    var isLoading = useState<bool>(false);

    return BlurDialogBox(
      insetPadding: EdgeInsets.zero,
      title: isLoading.value
          ? const SizedBox.shrink()
          : const Icon(
              CupertinoIcons.exclamationmark_triangle_fill,
              color: AppColor.orange,
              size: 40,
            ),
      content: isLoading.value
          ? const LoadingCard()
          : SizedBox(
              width: AppSize.width(context) * 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    content,
                    style: applyRobotoFont(
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          logger.d({"currentStep": model.currentStep});
                        },
                        child: Text(loc.noButton),
                      ),
                      TextButton(
                        onPressed: () async {
                          var navigator = Navigator.of(context);
                          final role =
                              PersistentAuthStateService.authState.activeRole;
                          final activeRole = roleMapper(role);
                          isLoading.value = true;
                          try {
                            if (activeRole != Role.ROLE_PATIENT) {
                              await TriageDBHelper().deleteAllTriageSteps();
                              logger.d("All Triage Cleared");
                            } else if (model.currentStep > 0) {
                              // For patient, save the triage entries
                              await _saveTriageModel(ref);
                            }
                          } catch (e) {
                            logger
                                .e("Failed to discard local triage entries $e");
                          } finally {
                            isLoading.value = false;
                            ref.read(resetProvider).reset();
                            ref.read(accessibilityProvider).resetBrightness();
                            navigator.popUntil((route) => route.isFirst);
                          }
                        },
                        child: Text(loc.yesButton),
                      ),
                    ],
                  ),
                ],
              ),
            ),
      actions: const [],
    );
  }

  Future<void> _saveTriageModel(WidgetRef ref) async {
    var model = ref.watch(triageProvider);
    Either<Failure, TriagePostModel> res;

    logger.d({
      "saveTriageMode": model.triageMode,
    });

    if (model.triageMode == TriageMode.EVENT) {
      res = await model.saveTriageForEvent(
        ref.read(triageStepperProvider).currentStep,
        ref.read(addEventDetailsProvider).eventId,
      );
    } else {
      res = await model.saveTriage(
        ref.read(triageStepperProvider).currentStep,
      );
    }

    res.fold((l) {
      logger.d({"saveTriageFailure": l});
      throw l;
    }, (r) {
      logger.d({"saveTriageResult": r});
    });
  }
}
