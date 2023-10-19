import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatefulWidget {
  static const String routeName = '/splash';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Stack(
        children: [
          SvgPicture.asset(
            AppImages.splashBg,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(AppSize.kmpadding),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.white,
                  ),
                  child: SvgPicture.asset(
                    AppIcon.logo,
                    height: 80,
                    width: 80,
                  ),
                ),
                const SizedBox(height: AppSize.kmheight),
                Text(
                  "Eye Care For All",
                  style: applyFiraSansFont(
                    fontSize: 28,
                    color: AppColor.white,
                  ),
                ),
                const SizedBox(height: AppSize.klheight * 10),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.all(AppSize.klpadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Powered by",
                    style: applyRobotoFont(
                      fontSize: 10,
                      color: AppColor.white,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Infosys",
                          style: applyRobotoFont(
                            fontSize: 38,
                            color: AppColor.white,
                          ),
                        ),
                        TextSpan(
                          text: "©",
                          style: applyRobotoFont(
                            fontSize: 10,
                            color: AppColor.white,
                          ),
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Digital Public Stack",
                    style: applyFiraSansFont(
                      fontSize: 18,
                      color: AppColor.white,
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
