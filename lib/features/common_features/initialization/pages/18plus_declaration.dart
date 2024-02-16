import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/services/shared_preference.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EigtheenPlusDeclaration extends StatelessWidget {
  const EigtheenPlusDeclaration({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: BlurDialogBox(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.exclamationmark_triangle_fill,
              color: AppColor.orange,
              size: 40,
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "18+ Declaration",
              style: applyRobotoFont(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "This app is intended for users aged 18 and above. By clicking 'I Agree', you are confirming that you are 18 years or older.",
              style: applyRobotoFont(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColor.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () async {
                    final navigator = Navigator.of(context);
                    await SharedPreferenceService.set18PlusDeclaration(true);
                    navigator.pop(true);
                  },
                  child: const Text("I Agree"),
                ),
              ],
            ),
          ],
        ),
        actions: const [],
      ),
    );
  }
}
