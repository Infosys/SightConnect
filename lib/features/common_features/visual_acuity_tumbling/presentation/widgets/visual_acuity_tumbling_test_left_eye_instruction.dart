import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_initiate_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class VisualAcuityTumblingLeftEyeInstruction extends StatelessWidget {
  const VisualAcuityTumblingLeftEyeInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(AppLocalizations.of(context)!.visualAcuityTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.loc!.visualAcuityLeftEyeHeader,
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              softWrap: true,
            ),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            Text(
              context.loc!.visualAcuityLeftEyeInstructions,
              style: applyRobotoFont(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              softWrap: true,
            ),
            const SizedBox(
              height: AppSize.kmheight + 2,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.primary.withOpacity(0.12),
                      offset: const Offset(0, 2),
                      blurRadius: 20,
                      spreadRadius: 20,
                    ),
                  ],
                ),
                height: AppSize.height(context) * 0.5,
                width: AppSize.width(context) * 0.7,
                child: Image.asset(
                  "assets/images/Test1LeftEye.png",
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const VisualAcuityInitiatePage(),
                        ),
                      );
                    },
                    child: Text(context.loc!.continueButton),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
