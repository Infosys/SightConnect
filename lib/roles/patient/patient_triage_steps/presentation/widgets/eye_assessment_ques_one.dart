import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class EyeAssessementQuesOne extends StatelessWidget {
  const EyeAssessementQuesOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.kmpadding,
                  vertical: AppSize.kspadding,
                ),
              ),
              onPressed: () {},
              child: const Text("Step 1 of 3"),
            ),
            const SizedBox(width: AppSize.kmwidth),
          ],
        ),
      ),
    );
  }
}
