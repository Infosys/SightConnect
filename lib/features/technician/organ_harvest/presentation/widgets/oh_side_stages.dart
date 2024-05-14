import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/oh_stepper.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/providers/organ_harvest_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OHSideStages extends ConsumerWidget {
  const OHSideStages({
    super.key,
    required this.width,
  });
  final double width;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 16,
      ),
      decoration: const BoxDecoration(
        color: AppColor.white,
      ),
      width: width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            ...List.generate(
              6,
              (index) => const _RowData(),
            ),
            const Divider(
              color: AppColor.grey,
              thickness: 1,
            ),
            const SizedBox(height: 16),
            OHStepper(
              initialIndex: ref.watch(organHarvestProvider).currentStep,
              onStepTapped: (index) {
                ref.read(organHarvestProvider).setStep(index);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _RowData extends StatelessWidget {
  const _RowData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Donor ID",
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.grey,
            ),
          ),
          Text(
            "RIEB17-3394 OD-C",
            style: applyRobotoFont(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
