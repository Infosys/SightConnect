import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
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
    return BlurDialogBox(
      insetPadding: EdgeInsets.zero,
      // actionsPadding: EdgeInsets.zero,
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
                  onPressed: () {
                    ref.read(resetProvider).reset();

                    Navigator.popUntil(context, (route) => route.isFirst);
                    onYesPressed?.call();
                  },
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('No'),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColor.black.withOpacity(0.04),
                blurRadius: 4,
                offset: const Offset(0, -3),
              ),
            ],
            color: AppColor.white,
          ),
          padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
          child: const BrandingWidgetH(),
        ),
      ],
    );
  }
}
