import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TriageExitAlertBox extends ConsumerWidget {
  const TriageExitAlertBox({
    super.key,
    required this.content,
    this.onYesPressed,
  });

  final String content;
  final VoidCallback? onYesPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(triageStepperProvider);
    final loc = context.loc!;

    return BlurDialogBox(
      insetPadding: EdgeInsets.zero,
      title: const Icon(
        Icons.warning_amber_outlined,
        color: AppColor.orange,
      ),
      content: SizedBox(
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
                  onPressed: () async {
                    var naviagtor = Navigator.of(context);
                    if (model.currentStep > 0) {
                      await _saveTriageModel(ref);
                    }
                    ref.read(resetProvider).reset();
                    naviagtor.popUntil((route) => route.isFirst);
                    onYesPressed?.call();
                  },
                  child: Text(loc.yesButton),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    logger.d({"currentStep": model.currentStep});
                  },
                  child: Text(loc.noButton),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: const [],
    );
  }

  Future<bool> _saveTriageModel(WidgetRef ref) async {
    var res = await ref
        .watch(triageProvider)
        .saveTriage(ref.read(triageStepperProvider).currentStep);
    logger.d({"triagesave": res});

    res.fold((l) {
      logger.d({"triagesave": l});
      return false;
    }, (r) {
      logger.d({"triagesave": r});
      return true;
    });
    return false;
  }
}
