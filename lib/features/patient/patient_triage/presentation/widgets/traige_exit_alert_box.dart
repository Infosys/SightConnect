import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/providers/patient_triage_stepper_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TriageQuestionnaireExitAlertBox extends StatelessWidget {
  const TriageQuestionnaireExitAlertBox({
    super.key,
    required this.content,
    this.onYesPressed,
  });

  final String content;
  final VoidCallback? onYesPressed;

  @override
  Widget build(BuildContext context) {
    return BlurDialogBox(
      insetPadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
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
                    Navigator.popUntil(
                      context,
                      (route) => route.isFirst,
                    );
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
            boxShadow: [
              BoxShadow(
                color: AppColor.black.withOpacity(0.04),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, -3),
              ),
            ],
            color: AppColor.white,
          ),
          padding: const EdgeInsets.all(12.0),
          child: const BrandingWidget(),
        ),
      ],
    );
  }
}

class TriageInstructionPageExitAlertBox extends StatelessWidget {
  const TriageInstructionPageExitAlertBox({
    super.key,
    required this.content,
    this.onYesPressed,
  });

  final String content;
  final VoidCallback? onYesPressed;

  @override
  Widget build(BuildContext context) {
    return BlurDialogBox(
      insetPadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
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
                    Navigator.popUntil(
                      context,
                      (route) => route.isFirst,
                    );
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
            boxShadow: [
              BoxShadow(
                color: AppColor.black.withOpacity(0.04),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, -3),
              ),
            ],
            color: AppColor.white,
          ),
          padding: const EdgeInsets.all(12.0),
          child: const BrandingWidget(),
        ),
      ],
    );
  }
}

class TriageDrawerExitAlertBox extends ConsumerWidget {
  const TriageDrawerExitAlertBox({
    super.key,
   
    required this.content,
    this.onYesPressed,
  });

  final String content;
  final VoidCallback? onYesPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(patientTriageStepperProvider);
    return BlurDialogBox(
      insetPadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
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
                    model.reset();
                    // Navigator.of(context).popUntil((route) => route.isFirst);
                    ref.read(patientDashboardProvider).changeIndex(0);
                    Navigator.popUntil(
                      context,
                      (route) => route.isFirst,
                    );
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
            boxShadow: [
              BoxShadow(
                color: AppColor.black.withOpacity(0.04),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, -3),
              ),
            ],
            color: AppColor.white,
          ),
          padding: const EdgeInsets.all(12.0),
          child: const BrandingWidget(),
        ),
      ],
    );
  }
}
