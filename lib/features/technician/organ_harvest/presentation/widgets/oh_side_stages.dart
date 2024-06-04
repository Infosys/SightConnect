import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/presentation/widgets/oh_stepper.dart';
import 'package:eye_care_for_all/features/technician/organ_harvest/providers/organ_harvest_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OHSideStages extends ConsumerWidget {
  const OHSideStages({
    super.key,
    this.width,
    this.isMobile = false,
  });
  final double? width;
  final bool isMobile;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Container(
        margin: isMobile
            ? EdgeInsets.only(left: AppSize.width(context) * 0.1, top: 20)
            : null,
        height: AppSize.height(context),
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        width: isMobile ? null : width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                visible: isMobile,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.close),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              ...[
                const _RowData(
                  title: "Donor ID",
                  value: "RIEB17-3394 OD-C",
                ),
                const _RowData(
                  title: "With",
                  value: "Aparna Kishore",
                ),
                _RowData(
                  title: "Last Acted",
                  value: DateTime.now()
                      .subtract(const Duration(days: 2))
                      .toString()
                      .split(" ")[0],
                ),
                const _RowData(
                  title: "Tissue ID",
                  value: "--",
                ),
                const _RowData(
                  title: "Tissue Type",
                  value: "--",
                ),
                const _RowData(
                  title: "Storage Media",
                  value: "--",
                ),
                const _RowData(
                  title: "Expire On",
                  value: "--",
                ),
              ],
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
      ),
    );
  }
}

class _RowData extends StatelessWidget {
  const _RowData({
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

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
            title,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.grey,
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: AutoSizeText(
              value,
              maxLines: 1,
              maxFontSize: 14,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
              style: applyRobotoFont(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
