import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
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
    return Scaffold(
      drawer: const PatientTriageStepsDrawer(),
      appBar: AppBar(
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
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.question_mark,
              color: AppColor.grey,
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(AppSize.klpadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TopReadingCard(),
            Expanded(
              child: BottomInputTab(),
            ),
          ],
        ),
      ),
    );
  }
}
