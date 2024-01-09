import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/pages/triage_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/helpline_card.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../core/constants/app_size.dart';

class ResultPageBottomCards extends ConsumerWidget {
  const ResultPageBottomCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const HelplineCard(helpLine: AppText.tollFreeNumber),
        const SizedBox(height: AppSize.kmheight),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(resetProvider).reset();
                    ref.read(accessibilityProvider).resetBrightness();
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: Text(
                    loc.homeButton,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(
                width: AppSize.kmheight,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    ref.read(resetProvider).reset();
                    ref.read(accessibilityProvider).resetBrightness();
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TriagePage(),
                      ),
                    );
                  },
                  child: Text(
                    loc.testAgainButton,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
