import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VisionGuardianEmptyResultCard extends StatelessWidget {
  final String type;
  const VisionGuardianEmptyResultCard({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
            child: Text('There are no ${type}s at present. Tap on "Add  $type"',
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
    );
  }
}
