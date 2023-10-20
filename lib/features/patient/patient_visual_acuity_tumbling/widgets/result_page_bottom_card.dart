import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/providers/patient_visual_acuity_test_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../core/constants/app_size.dart';
import '../../patient_triage/data/enums/tumbling_enums.dart';
// import '../../../../patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
// import '../provider/patient_result_provider.dart';
// import '../provider/patient_triage_eye_scan_provider.dart';

class TumblingResultPageBottomCards extends ConsumerWidget {
  const TumblingResultPageBottomCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ListTile(
          tileColor: AppColor.white,
          onTap: () async {},
          leading: SvgPicture.asset(
            AppIcon.tollFree,
          ),
          trailing: SvgPicture.asset(
            AppIcon.call,
          ),
          title: const Text("Toll Free Number"),
          subtitle: const Text(
            "1800 1800 1800",
            style: TextStyle(
              color: AppColor.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.kmheight,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    ref.watch(tumblingTestProvider).currentEye=Eye.left;
                    // ref.invalidate(resultStateProvider);
                    // ref.read(patientTriageEyeScanProvider).printImage();
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    // ref.read(patientDashboardProvider).changeIndex(0);
                  },
                  child: const Text("Home"),
                ),
              ),
              const SizedBox(
                width: AppSize.kmheight,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    ref.watch(tumblingTestProvider).currentEye=Eye.left;
                    // ref.invalidate(resultStateProvider);
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: const Text("Test Again"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}