import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EyeCampCard extends StatelessWidget {
  const EyeCampCard({super.key, required this.data});
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.width(context) * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.kmradius),
      ),
      margin: const EdgeInsets.only(
        right: 10,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.kmradius),
            child: SvgPicture.asset(
              AppImages.eyeCampBg,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: AppSize.width(context) * 0.3,
              child: Image.asset(AppImages.eyeCampImage),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.all(AppSize.kmpadding),
              width: AppSize.width(context) * 0.5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    data['info'],
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    data['date'],
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey,
                    ),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Register Now",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColor.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
