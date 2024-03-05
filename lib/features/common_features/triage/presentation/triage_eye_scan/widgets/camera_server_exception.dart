import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_result/pages/triage_offline_result_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CameraServerExceptionDialog extends ConsumerWidget {
  const CameraServerExceptionDialog({
    required this.onRetry,
    super.key,
    required this.response,
  });

  final VoidCallback onRetry;
  final TriagePostModel response;

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
            "No Internet!",
            style: applyRobotoFont(
              color: AppColor.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Your response has been saved locally and will be synced once internet is back.",
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
                  onRetry();
                  Navigator.of(context).pop();
                  logger.d("Offline Response: $response");
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => TriageOfflineResultPage(
                        triageResult: response,
                      ),
                    ),
                  );
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
