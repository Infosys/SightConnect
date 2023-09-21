import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/bottom_input_tab.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/top_reading_card.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/tumbling_overlay.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TumblingTestInitiatePage extends ConsumerWidget {
  static const String routeName = "/tumbling-test-initiate";
  const TumblingTestInitiatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tumbling E Test"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.question_mark,
              color: AppColor.kGrey,
            ),
          ),
          IconButton(
            onPressed: () {
              // showAccessibilitySettings(context, ref);
            },
            icon: const Icon(
              Icons.settings,
              color: AppColor.kGrey,
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
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
