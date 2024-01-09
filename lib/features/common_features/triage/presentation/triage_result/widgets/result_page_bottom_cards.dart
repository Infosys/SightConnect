import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/pages/triage_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../core/constants/app_size.dart';

class ResultPageBottomCards extends ConsumerWidget {
  const ResultPageBottomCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Column(
      children: [
        ListTile(
          tileColor: AppColor.white,
          onTap: () async {},
          leading: SvgPicture.asset(
            AppIcon.tollFree,
          ),
          trailing: SvgPicture.asset(
            AppIcon.call,
          ),
          title: Text(loc.tollFreeNumber),
          subtitle: const Text(
            AppText.tollFreeNumber,
            style: TextStyle(
              color: AppColor.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.kmheight,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
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
              Flexible(
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
