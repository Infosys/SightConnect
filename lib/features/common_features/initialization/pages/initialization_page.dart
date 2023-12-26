import 'dart:developer';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/consent_form_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_dashboard_page.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/pages/pulsar_effect_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/keycloak.dart';

class InitializationPage extends ConsumerStatefulWidget {
  static const String routeName = '/initialization';
  const InitializationPage({super.key});

  @override
  ConsumerState<InitializationPage> createState() => _InitializationPageState();
}

class _InitializationPageState extends ConsumerState<InitializationPage> {
  @override
  void initState() {
    super.initState();
    profileVerification();
  }

  Future<void> profileVerification() async {
    final navigator = Navigator.of(context);
    final isUserExist = await _checkUserAlreadyExist();

    if (isUserExist && context.mounted) {
      final role = roleMapper(PersistentAuthStateService.authState.role);

      if (role != null) {
        await navigateBasedOnRole(context, role);
      } else {
        await ref.read(initializationProvider).logout();
        await navigator.pushNamedAndRemoveUntil(
            LoginPage.routeName, (route) => false);
        Fluttertoast.showToast(msg: "Please login again");
      }
    } else {
      await _registerUser(context);
    }
  }

  Future<bool> _checkUserAlreadyExist() async {
    return await ref.read(initializationProvider).checkUserAlreadyExist();
  }

  Future<void> _registerUser(BuildContext context) async {
    final navigator = Navigator.of(context);
    final status = await navigator.push<bool?>(
      MaterialPageRoute(
        builder: (context) => const PatientRegistrationMiniappPage(),
      ),
    );

    if (context.mounted && (status == null || status)) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Registration Required"),
            content: const Text("Please register to continue"),
            actions: [
              TextButton(
                onPressed: () async {
                  await profileVerification();
                },
                child: const Text("Register"),
              ),
            ],
          );
        },
      );
    } else {
      await profileVerification();
    }
  }

  Future<void> showConsentForm(BuildContext context) async {
    final navigator = Navigator.of(context);
    bool? consentGiven = await navigator.push<bool?>(
      MaterialPageRoute(
        builder: (context) => const ConsentFormPage(),
      ),
    );

    if (context.mounted && consentGiven == true) {
      await profileVerification();
    } else {
      await navigator.pushNamedAndRemoveUntil(
          LoginPage.routeName, (route) => false);
      Fluttertoast.showToast(msg: "Consent not given. Please login again.");
    }
  }

  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
    );
  }

  Future<void> navigateBasedOnRole(BuildContext context, Role role) async {
    final navigator = Navigator.of(context);

    switch (role) {
      case Role.ROLE_PATIENT:
        navigator.pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const PatientDashboardPage(),
            ),
            (route) => false);
        break;

      case Role.ROLE_VISION_GUARDIAN:
        break;

      case Role.ROLE_VISION_TECHNICIAN:
        break;
      case Role.ROLE_OPTOMETRIST:
        navigator.pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) => const OptometritianDashboardPage()),
            (route) => false);
        break;
      default:
        throw Exception("Invalid Role");
    }
  }
}
