import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_eye_scan/pages/triage_eye_capturing_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_eye_scan/pages/triage_eye_scan_carousel_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/widgets/helpers/show_feedback_bottom_sheet.dart';
import 'package:eye_care_for_all/shared/constants/app_icon.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/text_scale_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import '../../../../../../../shared/widgets/app_pop_up_menu.dart';
import '../../triage_member_selection/widget/triage_steps_drawer.dart';

class TriageEyeScanInstructions extends ConsumerWidget {
  const TriageEyeScanInstructions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    final loc = context.loc!;
    return PopScope(
      canPop: false,
      onPopInvoked: (value) {
        if (value) {
          return;
        }
        showDialog(
          context: context,
          builder: (context) => TriageExitAlertBox(
            content: context.loc!.eyeScanExitDialog,
          ),
        );
      },
      child: TraceableWidget(
        actionName: 'TriageEyeScan Instructions Page',
        child: Scaffold(
          key: scaffoldKey,
          drawer: const TriageStepsDrawer(),
          appBar: CustomAppbar(
            leadingWidth: 60,
            titleSpacing: 0.0,
            centerTitle: false,
            leadingIcon: InkWell(
              customBorder: const CircleBorder(),
              onTap: () {
                scaffoldKey.currentState!.openDrawer();
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Image.asset(
                  AppIcon.hamburgerIcon,
                ),
              ),
            ),
            title: Text(
              loc.eyeScanTitle,
              style: applyFiraSansFont(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            actions: [
              AppPopUpMenu(
                items: const ["Text Size", "Add Review"],
                onSelected: (selected) {
                  if (selected == "Text Size") {
                    TextScalePopupMenu.show(context, ref);
                  } else if (selected == "Add Review") {
                    showFeedbackBottomSheet(context);
                  } else {}
                },
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(AppSize.ks),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  loc.eyeScanDescription,
                  softWrap: true,
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: AppSize.ks),
                Text(
                  loc.eyeScanHowToPerform,
                  style: applyRobotoFont(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: AppSize.km),
                Expanded(
                  child: TriageEyeScanCarouselPage(
                    onPressed: () async {
                      await onPressed(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> onPressed(BuildContext context) async {
    Navigator.of(context).push(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) => const TriageEyeCapturingPage(),
      ),
    );
  }
}
