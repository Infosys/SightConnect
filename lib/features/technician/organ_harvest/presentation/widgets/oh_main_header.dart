import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class OHMainHeader extends StatelessWidget {
  const OHMainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hemodilution Test",
              style: applyFiraSansFont(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (Responsive.isDesktop(context))
              OutlinedButton.icon(
                onPressed: () {},
                label: const Text("Scan Document"),
                icon: const Icon(Icons.camera_alt),
              )
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Basic Details",
              style: applyFiraSansFont(
                fontSize: 18,
              ),
            )
          ],
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColor.lightBlue.withOpacity(0.4),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _VChip(label: "Donor ID", value: "RIEB17-3394 OD-C"),
              _VChip(label: "Donor Name", value: "John Doe"),
              _VChip(label: "Donor Age", value: "25"),
            ],
          ),
        ),
      ],
    );
  }
}

class _VChip extends StatelessWidget {
  const _VChip({super.key, required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: applyFiraSansFont(
            fontSize: 14,
            color: AppColor.grey,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: applyRobotoFont(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
