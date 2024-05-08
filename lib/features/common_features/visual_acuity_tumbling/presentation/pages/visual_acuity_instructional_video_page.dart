import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/distance_visual_acuity_tumbling/data/source/local/distance_tumbling_local_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_demo_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acutiy_instruction_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/text_scale_pop_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../distance_visual_acuity_tumbling/presentation/providers/distance_visual_acuity_test_provider.dart';

class VisualAcuityInstructionalVideoPage extends ConsumerWidget {
  static const String routeName = "/tumbling-test-instructional-video";

  const VisualAcuityInstructionalVideoPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final loc = context.loc!;
    // if (ref.read(globalProvider).isUpdateMode()) {
    //   ref.invalidate(distancetumblingLocalSource);
    //   ref.read(distanceTumblingTestProvider).reset();
    // }

    return PopScope(
      canPop: false,
      onPopInvoked: (value) async {
        if (value == true) {
          return;
        }
        if (ref.read(globalProvider).isTriageMode()) {
          showDialog(
            context: context,
            builder: (context) => TriageExitAlertBox(
              content: loc.visualAcuityExitDialog,
            ),
          );
        } else {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        key: scaffoldKey,
        drawer: const TriageStepsDrawer(),
        appBar: !ref.watch(globalProvider).isTriageMode()
            ? CustomAppbar(
                leadingIcon: IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    if (ref.read(globalProvider).isTriageMode()) {
                      showDialog(
                        context: context,
                        builder: (context) => TriageExitAlertBox(
                          content: loc.visualAcuityExitDialog,
                        ),
                      );
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                  icon: const Icon(CupertinoIcons.back),
                ),
                titleSpacing: 0,
                centerTitle: false,
                title: Text(
                  loc.visualAcuityTitle,
                ),
              )
            : CustomAppbar(
                leadingWidth: 60,
                titleSpacing: 0.0,
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
                  loc.visualAcuityTitle,
                  style: applyFiraSansFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
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
              ),
        body: Padding(
          padding: Responsive.isMobile(context)
              ? const EdgeInsets.all(AppSize.km)
              : const EdgeInsets.all(AppSize.km),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                loc.visualAcuityDescription,
                softWrap: true,
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: AppSize.km),
              Expanded(child: VisualAcuityInstructionPage(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const VisualAcuityDemoPage(),
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
