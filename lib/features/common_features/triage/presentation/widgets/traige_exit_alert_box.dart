import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
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
          ? const Text("Loading..")
          : const Icon(
              Icons.warning_amber_outlined,
              color: AppColor.orange,
            ),
      content: isLoading.value
          ? const SizedBox(
              height: 45,
              width: 45,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
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
                          var naviagtor = Navigator.of(context);
                          try {
                            isLoading.value = true;
                            if (model.currentStep > 0) {
                              await _saveTriageModel(ref);
                            }
                            isLoading.value = false;
                          } catch (e) {
                            isLoading.value = false;
                            logger.d({"TriageExitAlertBox": e});
                          }
                          ref.read(resetProvider).reset();
                          naviagtor.popUntil((route) => route.isFirst);
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
      "triagesave": model.triageMode,
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
      logger.d({"triagesave": l});
      throw l;
    }, (r) {
      logger.d({"triagesave": r});
      return true;
    });
  }
}
