import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/presentation/provider/auth_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_dashboard/presentation/pages/vision_technician_dashboard_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_v.dart';
import 'package:flutter/material.dart';
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
      // try {
      //   ref.read(authProvider).init();
      // } catch (e) {
      //   logger.e(e);
      // }
      // var jailbroken = await FlutterJailbreakDetection.jailbroken;
      // var developerMode = await FlutterJailbreakDetection.developerMode;
      // if (jailbroken) {
      //   if (mounted) {
      //     context.scaffoldMessenger.showSnackBar(
      //       const SnackBar(
      //         content: Text('Jailbroken device detected'),
      //       ),
      //     );
      //   }
      //   return;
      // } else if (developerMode) {
      //   if (mounted) {
      //     context.scaffoldMessenger.showSnackBar(
      //       const SnackBar(
      //         content: Text('Developer mode detected'),
      //       ),
      //     );
      //   }
      //   return;
      // }

      if (mounted) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const PatientDashboardPage()),
          (route) => false,
        );
        // Navigator.pushAndRemoveUntil(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => const OptometritianDashboardPage()),
        //   (route) => false,
        // );
        // Navigator.pushAndRemoveUntil(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => const VisionTechnicianDashboardPage()),
        //   (route) => false,
        // );
        // }

        // Navigator.of(context).pushAndRemoveUntil(
        //   MaterialPageRoute(
        //     builder: (context) => const AuthPage(),
        //   ),
        //   (route) => false,
        // );
      }
    });
  }

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
}
