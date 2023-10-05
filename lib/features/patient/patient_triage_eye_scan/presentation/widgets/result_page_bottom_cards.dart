import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_eye_scan/presentation/provider/patient_result_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_eye_scan/presentation/provider/patient_triage_eye_scan_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/app_size.dart';
import '../../../patient_dashboard/presentation/providers/patient_dashboard_provider.dart';

class ResultPageBottomCards extends ConsumerWidget {
  const ResultPageBottomCards({super.key});

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
                    ref.invalidate(resultStateProvider);
                    ref.read(patientTriageEyeScanProvider).printImage();
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    ref.read(patientDashboardProvider).changeIndex(0);
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
                    ref.invalidate(resultStateProvider);
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
