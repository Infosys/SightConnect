import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:flutter/material.dart';

class VisionGuardianAddMemberResultCard extends StatelessWidget {
  const VisionGuardianAddMemberResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: AppSize.height(context) * 0.2,
          ),
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
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: AppSize.width(context) * 0.7,
            ),
            child: Text('There are no patients at present. Tap on “Add Member”',
                textAlign: TextAlign.center,
                softWrap: true,
                style: applyRobotoFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey,
                )),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
