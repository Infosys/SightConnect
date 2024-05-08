import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/helper/vision_acuity_show_instruction_bottom_up_sheet.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/swipe_gesture_card.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/touch_gesture_card.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/text_scale_pop_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import '../../../triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import '../widgets/top_reading_card.dart';

class VisualAcuityInitiatePage extends ConsumerStatefulWidget {
  const VisualAcuityInitiatePage({super.key});

  @override
  ConsumerState<VisualAcuityInitiatePage> createState() =>
      _VisualAcuityInitiatePageState();
}

class _VisualAcuityInitiatePageState
    extends ConsumerState<VisualAcuityInitiatePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      visionInstructionShowBottomUpSheet(
          context: context, isRightEyeCovered: true);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final isTriageMode = ref.watch(globalProvider).isTriageMode();
    ref.read(tumblingTestProvider).reset();

    return PopScope(
      canPop: false,
      onPopInvoked: (value) async {
        if (value) {
          return;
        }

        if (isTriageMode) {
          showDialog(
            context: context,
            builder: (context) => TriageExitAlertBox(
              content: AppLocalizations.of(context)!.visualAcuityExitDialog,
            ),
          ).then(
              (value) => visionInstructionShowBottomUpSheet(context: context));
        } else {
          Navigator.of(context).pop();
        }
      },
      child: TraceableWidget(
        actionName: 'Eye Test',
        child: PopScope(
          canPop: false,
          child: Scaffold(
            backgroundColor: AppColor.white,
            key: scaffoldKey,
            drawer: const TriageStepsDrawer(),
            appBar: !isTriageMode
                ? CustomAppbar(
                    leadingIcon: IconButton(
                      splashRadius: 20,
                      onPressed: () {
                        if (isTriageMode) {
                          showDialog(
                            context: context,
                            builder: (context) => TriageExitAlertBox(
                              content: AppLocalizations.of(context)!
                                  .visualAcuityExitDialog,
                            ),
                          );
                        } else {
                          Navigator.of(context).pop();
                        }
                      },
                      icon: const Icon(CupertinoIcons.back),
                    ),
                    titleSpacing: 0,
                    actions: const [],
                    centerTitle: false,
                    title: Text(context.loc!.visualAcuityTitle),
                  )
                : CustomAppbar(
                    leadingWidth: 60,
                    titleSpacing: 0.0,
                    actions: [
                      IconButton(
                        onPressed: () {
                          TextScalePopupMenu.show(context, ref);
                        },
                        icon: SvgPicture.asset(
                          "assets/drawer_icons/accessibility.svg",
                          height: 22,
                        ),
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
                    title: Text(
                      context.loc!.visualAcuityTitle,
                      style: applyFiraSansFont(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Expanded(child: TopReadingCard()),
                Expanded(
                  flex: 3,
                  child: visionAcuityIsSwipeMode
                      ? const SwipeGestureCard()
                      : const TouchGestureCard(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
