import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/bottom_input_tab.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/top_reading_card.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/providers/tumbling_test_provider.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/tumbling_overlay.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final tumblingTestProvider =
    ChangeNotifierProvider.autoDispose<TumblingTestProvider>((ref) {
  return TumblingTestProvider();
});

class PatientTumblingStartTestPage extends ConsumerWidget {
  static const String routeName = '/patient-tumbling-start-test';
  const PatientTumblingStartTestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TumblingOverlay(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "Tumbling E Test",
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.question_mark,
                color: AppColor.kGrey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: AppColor.kGrey,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(
                  AppSize.kmpadding,
                ),
                child: TopReadingCard(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.kmpadding,
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "Distance:",
                        style: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.kGrey,
                        ),
                      ),
                      const SizedBox(width: AppSize.kswidth),
                      Text(
                        "40 cm",
                        style: applyFiraSansFont(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: AppColor.kGreen),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    "Left Eye",
                    style: applyFiraSansFont(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: BottomInputTab(),
            )
          ],
        ),
      ),
    );
  }
}
