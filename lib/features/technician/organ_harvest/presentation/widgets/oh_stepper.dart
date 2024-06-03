import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OHStepper extends HookWidget {
  const OHStepper({
    Key? key,
    required this.onStepTapped,
    required this.initialIndex,
  }) : super(key: key);
  final Function(int) onStepTapped;
  final int initialIndex;
  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(initialIndex);
    final stages = [
      "Screening",
      "Hemodilution",
      "Serology",
      "Organ Grading",
      "Organ Recommendation",
      "Organ Pre-Cut",
      "Order Delivery",
      "Tissue Return",
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < stages.length; i++)
          InkWell(
            onTap: () {
              selectedIndex.value = i;
              onStepTapped(i);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: selectedIndex.value == i
                          ? AppColor.darkYellow
                          : AppColor.altGreen.withOpacity(0.2),
                    ),
                    child: Text(
                      "${i + 1}",
                      style: applyRobotoFont(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 28,
                      ),
                      decoration: BoxDecoration(
                        color: selectedIndex.value == i
                            ? AppColor.darkYellow
                            : null,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Text(
                        stages[i],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: applyFiraSansFont(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
