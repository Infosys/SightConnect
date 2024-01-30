import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CameraServerExceptionDialog extends ConsumerWidget {
  const CameraServerExceptionDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Server Error",
            style: applyRobotoFont(
              color: AppColor.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Your result has been saved locally. Please try again later.",
            style: applyRobotoFont(
              color: AppColor.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            children: [
              const Spacer(),
              TextButton(
                onPressed: () {
                  ref.read(resetProvider).reset();
                  ref.read(accessibilityProvider).resetBrightness();
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Text(
                  loc.okButton,
                  style: applyRobotoFont(
                    color: AppColor.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
