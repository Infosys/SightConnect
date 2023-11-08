import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/auth/presentation/pages/auth_page.dart';
import 'package:eye_care_for_all/features/common_features/auth/presentation/provider/user_details_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_dashboard_page.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
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
  final role = Role.optometrist;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300), () {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const AuthPage(),
        ),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // ref.listen(userDetailsProvider, (previous, next) async {
    //   var profile = next.userProfile;
    //   if (profile != null) {
    //     switch (role) {
    //       case Role.patient:
    //         Navigator.of(context).pushAndRemoveUntil(
    //           MaterialPageRoute(
    //             builder: (context) => const PatientDashboardPage(),
    //           ),
    //           (route) => false,
    //         );
    //         break;

    //       case Role.optometrist:
    //         Navigator.of(context).pushAndRemoveUntil(
    //           MaterialPageRoute(
    //             builder: (context) => const OptometritianDashboardPage(),
    //           ),
    //           (route) => false,
    //         );

    //       case Role.doctor:
    //         break;

    //       case Role.visionguardian:
    //     }
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(
    //         content: Text('Authentication failed'),
    //       ),
    //     );
    //   }
    // });

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

enum Role { patient, doctor, visionguardian, optometrist }
