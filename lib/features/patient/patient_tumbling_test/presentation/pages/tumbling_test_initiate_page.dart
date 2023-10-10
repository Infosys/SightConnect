import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/presentation/widget/patient_triage_steps_drawer.dart';
import 'package:eye_care_for_all/features/patient/patient_tumbling_test/presentation/widgets/bottom_input_tab.dart';
import 'package:eye_care_for_all/features/patient/patient_tumbling_test/presentation/widgets/top_reading_card.dart';
import 'package:eye_care_for_all/features/patient/patient_tumbling_test/presentation/widgets/tumbling_overlay.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TumblingTestInitiatePage extends ConsumerWidget {
  static const String routeName = "/tumbling-test-initiate";
  const TumblingTestInitiatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      drawer: const PatientTriageStepsDrawer(),
      appBar: AppBar(
        title: Row(
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColor.blue,
                visualDensity: VisualDensity.compact,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.kspadding + 2,
                ),
              ),
              onPressed: () {},
              child: Text(
                "Step 2 of 3",
                style: applyRobotoFont(
                  color: AppColor.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
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
      body: const TumblingOverlay(
        child: Padding(
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
      ),
    );
  }
}
