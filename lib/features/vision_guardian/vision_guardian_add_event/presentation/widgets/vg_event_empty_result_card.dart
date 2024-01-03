import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VisionGuardianEventResultCard extends StatelessWidget {
  const VisionGuardianEventResultCard({super.key,required this.search});
  final String search;

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
              child: Text('There are no ${search} at present. Tap on “Add Event',
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
