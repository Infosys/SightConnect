import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class OrganHarvestPage extends StatelessWidget {
  const OrganHarvestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  ...List.generate(
                    6,
                    (index) => const _RowData(),
                  ),
                  const Divider(
                    color: AppColor.grey,
                    thickness: 1,
                  )
                ],
              ),
            ),
            const Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            )
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
      color: Colors.yellow,
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
