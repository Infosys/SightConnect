import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EyeCampCard extends StatelessWidget {
  const EyeCampCard({super.key, required this.data});
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.height(context) * 0.25,
      width: AppSize.width(context) * 0.8,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.kmradius),
      ),
      margin: const EdgeInsets.only(
        left: 16,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.kmradius),
            child: SvgPicture.asset(
              AppImages.eyeCampBg,
              fit: BoxFit.fitHeight,
              height: AppSize.height(context) * 0.25,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              child: Image.asset(AppImages.eyeCampImage),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.all(AppSize.kmpadding),
              width: AppSize.width(context) * 0.48,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data['info'],
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: applyRobotoFont(
                      fontSize: 14,
                    ),
                  ),
                  // const SizedBox(height: AppSize.ksheight),
                  Text(
                    data['date'],
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey,
                    ),
                  ),
                  // SizedBox(height: AppSize.height(context) * 0.005),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Register Now",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColor.blue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
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
