import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_visual_acuity_tumbling/widgets/accessibility_settings.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_visual_acuity_tumbling/widgets/visual_acuity_tumbling_overlay.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../patient_triage_member_selection/widget/patient_triage_steps_drawer.dart';
import '../widgets/bottom_input_tab.dart';
import '../widgets/top_reading_card.dart';

class PatinetVisualAcuityInitiatePage extends ConsumerWidget {
  static const String routeName = "/tumbling-test-initiate";
  const PatinetVisualAcuityInitiatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    var pointerState = ref.watch(visualAcuityTumblingTestDialogProvider);
    return WillPopScope(
      onWillPop: () async {
        var result = await showDialog(
          context: context,
          builder: (context) => const TriageExitAlertBox(
            content:
                "Visual acuity is an important test to understand about your eye problem. Do you really wish to exit?",
          ),
        );
        return result ?? false;
      },
      child: Scaffold(
        key: scaffoldKey,
        drawer: const PatientTriageStepsDrawer(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Row(
            children: [
              const SizedBox(
                width: AppSize.kmwidth,
              ),
              InkWell(
                child: ClipRRect(
                  child: Image.asset(
                    AppIcon.hamburgerIcon,
                    height: 20,
                    width: 20,
                  ),
                ),
                onTap: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
              const SizedBox(width: AppSize.kmwidth),
              Text(
                "2 of 3",
                style: applyRobotoFont(
                  color: AppColor.primary,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: AppSize.kmwidth),
              const Flexible(
                  child: Text(
                "Visual Acuity Test",
              )),
            ],
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: const Icon(
                CupertinoIcons.question_circle,
                color: AppColor.grey,
              ),
            ),
            const SizedBox(
              width: AppSize.kspadding,
            ),
            IconButton(
              onPressed: () {
                showAccessibilitySettings(context, ref);
              },
              icon: const Icon(
                Icons.settings_outlined,
                color: AppColor.grey,
              ),
            ),
          ],
        ),
        body: VisualAcuityTumblingOverlay(
          child: IgnorePointer(
            ignoring: pointerState,
            child: const Padding(
              padding: EdgeInsets.only(
                  left: AppSize.klpadding,
                  right: AppSize.klpadding,
                  bottom: AppSize.klpadding,
                  top: AppSize.kspadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TopReadingCard(),
                  SizedBox(
                    height: AppSize.klpadding,
                  ),
                  Expanded(
                    child: BottomInputTab(),
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
