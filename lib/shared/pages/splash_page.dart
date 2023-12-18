import 'dart:developer';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/presentation/provider/auth_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_v.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashPage extends ConsumerStatefulWidget {
  static const String routeName = '/';
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300), () async {
      bool isSecure = await isSecureDevice();
      if (isSecure) {
        await _showAuthPage();
      } else {
        //show proper alert box to user
      }
    });
  }

  _showAuthPage() async {
    final cred = ref.read(authProvider).credential;
    if (cred != null) {
      var navigator = Navigator.of(context);
      navigator.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const PatientDashboardPage()),
        (route) => false,
      );
    } else {
      ref.read(authProvider).init();
    }
  }

  @override
  Widget build(BuildContext context) {
    // final model = ref.watch(authProvider);
    // if (model.credential != null) {
    //   var navigator = Navigator.of(context);
    //   navigator.pushAndRemoveUntil(
    //     MaterialPageRoute(builder: (context) => const PatientDashboardPage()),
    //     (route) => false,
    //   );
    // }

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
                  AppText.appName,
                  style: applyFiraSansFont(
                    fontSize: 28,
                    color: AppColor.white,
                  ),
                ),
                const SizedBox(height: AppSize.klheight * 10),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: BrandingWidgetV(),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> isSecureDevice() async {
    // var jailbroken = await FlutterJailbreakDetection.jailbroken;
    // var developerMode = await FlutterJailbreakDetection.developerMode;

    // if (jailbroken || developerMode) {
    //   return false;
    // }
    return true;
  }
}
