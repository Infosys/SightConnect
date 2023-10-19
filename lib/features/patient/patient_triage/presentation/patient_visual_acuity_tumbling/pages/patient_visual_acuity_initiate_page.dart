import 'package:eye_care_for_all/core/constants/app_color.dart';
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
    var pointerState = ref.watch(visualAcuityTumblingTestDialogProvider);
    return WillPopScope(
      onWillPop: () async {
        var result = await showDialog(
          context: context,
          builder: (context) => const TriageInstructionPageExitAlertBox(
            content:
                "Answering these questions will help in identifying your eye problems. Do you really wish to exit?",
          ),
        );
        return result ?? false;
      },
      child: Scaffold(
        drawer: const PatientTriageStepsDrawer(),
        appBar: AppBar(
          titleSpacing: 0,
          title: Row(
            children: [
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
              padding: EdgeInsets.all(AppSize.klpadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TopReadingCard(),
                  SizedBox(
                    height: AppSize.kspadding,
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
