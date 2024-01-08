import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VisionGuardianEyeAssessmentResultCard extends StatelessWidget {
  const VisionGuardianEyeAssessmentResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image(
              width: AppSize.width(context) * 0.55,
              image: const AssetImage(
                "assets/images/search empty.png",
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.kmheight,
          ),
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: AppSize.width(context) * 0.7,
              ),
              child: Text('There are no patients at present. Tap on "Add Patient"',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: applyRobotoFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
