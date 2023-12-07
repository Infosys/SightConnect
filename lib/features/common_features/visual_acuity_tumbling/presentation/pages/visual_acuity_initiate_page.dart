import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/accessibility_settings.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/acuity_distance_tile.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/swipe_gesture_card.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/voice_assist_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../widgets/bottom_input_tab.dart';
import '../widgets/top_reading_card.dart';
import '../widgets/visual_acuity_tumbling_overlay.dart';

class VisualAcuityInitiatePage extends ConsumerWidget {
  static const String routeName = "/tumbling-test-initiate";
  const VisualAcuityInitiatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    var pointerState = ref.watch(visualAcuityTumblingTestDialogProvider);
    return PopScope(
      canPop: false,
      onPopInvoked: (value) {
        if (value) {
          return;
        }
        showDialog(
          context: context,
          builder: (context) => TriageExitAlertBox(
            content: AppLocalizations.of(context)!.eyeScanExitDialog,
          ),
        );
      },
      child: Scaffold(
        key: scaffoldKey,
        drawer: const TriageStepsDrawer(),
        appBar: ref.watch(globalProvider).hideTumblingElement
            ? CustomAppbar(
                leadingIcon: IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => TriageExitAlertBox(
                        content: AppLocalizations.of(context)!
                            .visualAcuityExitDialog,
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                titleSpacing: 0,
                actions: [
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {
                      showAccessibilitySettings(context, ref);
                    },
                    icon: const Icon(Icons.settings),
                  ),
                ],
                centerTitle: false,
                title: Text(AppLocalizations.of(context)!.visualAcuityTitle),
              )
            : CustomAppbar(
                leadingWidth: 60,
                titleSpacing: 0.0,
                actions: [
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {
                      showAccessibilitySettings(context, ref);
                    },
                    icon: const Icon(Icons.settings),
                  ),
                ],
                centerTitle: false,
                leadingIcon: InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Image.asset(
                      AppIcon.hamburgerIcon,
                    ),
                  ),
                ),
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(width: AppSize.kmwidth),
                    Text(
                      AppLocalizations.of(context)!.stepNumber('2', '3'),
                      style: applyRobotoFont(
                        color: AppColor.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: AppSize.kmwidth),
                    Flexible(
                        child: Text(
                      AppLocalizations.of(context)!.visualAcuityTitle,
                    )),
                  ],
                ),
              ),
        body: VisualAcuityTumblingOverlay(
          child: IgnorePointer(
            ignoring: pointerState,
            child: const Padding(
              padding: EdgeInsets.only(
                left: AppSize.klpadding,
                right: AppSize.klpadding,
                bottom: AppSize.klpadding,
                top: AppSize.kspadding,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TopReadingCard(),
                  SizedBox(height: AppSize.klpadding),
                  AcuityDistanceTile(
                    distanceInCms: 40,
                  ),
                  Expanded(
                    child: BottomInputTab(
                      tabs: [
                        SwipeGestureCard(),
                        VoiceAssistCard(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
