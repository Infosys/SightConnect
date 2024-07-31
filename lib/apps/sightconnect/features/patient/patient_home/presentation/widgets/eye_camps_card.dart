import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
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
        borderRadius: BorderRadius.circular(AppSize.km),
      ),
      margin: const EdgeInsets.only(
        left: 16,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.km),
            child: SvgPicture.asset(
              AppImages.eyeCampBg,
              fit: BoxFit.fitHeight,
              height: AppSize.height(context) * 0.25,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              AppImages.eyeCampImage,
              fit: BoxFit.contain,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.only(left: AppSize.km, top: AppSize.km),
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
                  // const SizedBox(height: AppSize.ks),
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
