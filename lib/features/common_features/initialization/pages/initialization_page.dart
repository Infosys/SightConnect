import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_page.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_dashboard_page.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/pages/pulsar_effect_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_v.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InitializationPage extends ConsumerStatefulWidget {
  static const String routeName = '/';
  const InitializationPage({super.key});

  @override
  ConsumerState<InitializationPage> createState() => _InitializationPageState();
}

class _InitializationPageState extends ConsumerState<InitializationPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 300),
      () async {
        final status = await _checkUserAlreadyExist();
        if (status) {
          final role = PersistentAuthStateService.authState.role;
          if (role != null) {
            roleMapperNavigation(role, context);
          }
        } else {
          // await _onRegister(context);
        }
      },
    );
  }

  Future<bool> _checkUserAlreadyExist() async {
    //phone number from local storage
    await Future.delayed(const Duration(seconds: 2));
    return false;
  }

  Future<void> _onRegister(BuildContext context) async {
    final navigator = Navigator.of(context);
    navigator.push(
      MaterialPageRoute(
        builder: (context) => const PatientRegistrationMiniappPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    logger.i("InitializationPage");
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Pulsar(
        child: Stack(
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
      ),
    );
  }

  void roleMapperNavigation(String role, BuildContext context) {
    logger.i("role: $role");
    final naviagator = Navigator.of(context);
    switch (role) {
      case "ROLE_PATIENT":
        naviagator.pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const PatientDashboardPage(),
            ), (route) {
          return false;
        });
        break;

      case "ROLE_VISION_GUARDIAN":
        break;

      case "ROLE_VISION_TECHNICIAN":
        break;
      case "ROLE_OPTOMETRIST":
        naviagator.pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const OptometritianDashboardPage(),
            ), (route) {
          return false;
        });
        break;

      default:
        throw Exception("Invalid Role");
    }
  }
}
