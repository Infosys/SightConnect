import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_page_provider.dart';
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

class _InitializationPageState extends ConsumerState<InitializationPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    Future.delayed(const Duration(milliseconds: 300), () async {
      await _checkAlreadyLoggedIn();
    });
  }

  _checkAlreadyLoggedIn() async {
    final navigator = Navigator.of(context);
    final model = ref.read(authProvider);
    final isLoggedIn = PersistentAuthStateService.authState.isLoggedIn;
    if (isLoggedIn) {
      navigator.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const PatientDashboardPage()),
        (route) => false,
      );
    } else {
      model.init();
    }
  }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   super.didChangeAppLifecycleState(state);
  //   final model = ref.read(authProvider);

  //   if (state == AppLifecycleState.resumed) {
  //     model.init();
  //   }

  //   logger.i(state);
  // }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLoggedIn = PersistentAuthStateService.authState.isLoggedIn;
    if (isLoggedIn) {
      return const PatientDashboardPage();
    } else {
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
