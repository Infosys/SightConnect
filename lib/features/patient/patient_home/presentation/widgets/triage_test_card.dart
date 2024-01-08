import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/pages/triage_member_selection_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

class TriageTestCard extends HookConsumerWidget {
  const TriageTestCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Container(
      height: AppSize.height(context) * 0.25,
      margin: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColor.primary,
        ),
        color: const Color(0xffE9EEFA),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              "assets/images/triage_card_bg.svg",
              width: AppSize.width(context),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  loc.eyesAreMostValuable,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: applyFiraSansFont(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  loc.gotTheEyesTested,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TriageButton(
                        imagePath: "assets/icons/acuity_test.svg", name: ""),
                    TriageButton(
                        imagePath: "assets/icons/questionnaire_test.svg",
                        name: ""),
                    TriageButton(
                        imagePath: "assets/icons/eye_scan.svg", name: ""),
                  ],
                ),
                const SizedBox(height: 16),
                Flexible(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColor.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            MatomoTracker.instance.trackEvent(
                              eventInfo: EventInfo(
                                category: 'Main',
                                action: 'Click',
                                name: 'Triage member selection page click',
                              ),
                            );
                            return const TriageMemberSelectionPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      // "Start Eye Test",
                      loc.startEyeTestText,
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TriageButton extends StatelessWidget {
  const TriageButton({
    super.key,
    required this.imagePath,
    required this.name,
  });
  final String imagePath;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.white,
      ),
      child: SvgPicture.asset(
        imagePath,
        height: 15,
        width: 15,
      ),
    );
  }
}
