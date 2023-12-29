import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_consent_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/vt_consent_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_dashboard_page.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_dashboard/presentation/pages/vision_technician_dashboard_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/pages/pulsar_effect_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp_injection_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/models/keycloak.dart';

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
    try {
      final navigator = Navigator.of(context);
      final isUserExist = await _checkUserAlreadyExist();

      if (context.mounted) {
        if (isUserExist) {
          logger.i("User already exist");
          await _handleExistingUser(navigator);
        } else {
          logger.i("User does not exist");
          await _handleNewUser(navigator);
        }
      }
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> _handleNewUser(NavigatorState navigator) async {
    final selectedProfile = await showProfileSelectionDialog(navigator);
    logger.i("Selected Profile: $selectedProfile");
    if (selectedProfile != null) {
      final role = roleToString(selectedProfile);
      await PersistentAuthStateService.authState.setActiveRole(role);
      logger.i("Active Role: $role");
      final consentGiven = await showConsentForm(navigator, selectedProfile);

      if (consentGiven != null && consentGiven) {
        logger.i("Consent Given");
        await _registerUser(navigator);
      } else {
        /// CONSENT NOT GIVEN
        logger.i("Consent Not Given");
        await ref.read(initializationProvider).logout();
        await navigator.pushNamedAndRemoveUntil(
            LoginPage.routeName, (route) => false);
        Fluttertoast.showToast(msg: "Please accept the consent form.");
      }
    } else {
      /// ROLE NOT FOUND
      logger.i("Role Not Found");
      await ref.read(initializationProvider).logout();
      await navigator.pushNamedAndRemoveUntil(
          LoginPage.routeName, (route) => false);
      Fluttertoast.showToast(msg: "Profile not found. Please login again.");
    }
  }

  Future<Role?> showProfileSelectionDialog(NavigatorState navigator) {
    final currentRoles = PersistentAuthStateService.authState.roles;
    if (currentRoles == null) {
      return Future.value(null);
    }
    final roles = roleListMapper(currentRoles);
    if (roles.length == 1) {
      return Future.value(roles.first);
    }
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return ClipRRect(
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            title: const Text('Select a profile'),
            content: SizedBox(
              child: SingleChildScrollView(
                child: ListBody(
                  children: roles
                      .map(
                        (role) => RadioListTile(
                          title: Text(role.toString().split('_').last),
                          value: role,
                          groupValue: null,
                          onChanged: (value) async {
                            navigator.pop(value);
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<bool> _checkUserAlreadyExist() async {
    return await ref.read(initializationProvider).checkUserAlreadyExist();
  }

  Future<void> _handleExistingUser(NavigatorState navigator) async {
    if (PersistentAuthStateService.authState.isLoggedIn &&
        PersistentAuthStateService.authState.activeRole != null) {
      final role = roleMapper(PersistentAuthStateService.authState.activeRole);
      logger.i("Active Role: $role");
      await navigateBasedOnRole(navigator, role!);
    } else {
      final selectedRole = await showProfileSelectionDialog(navigator);
      if (selectedRole != null) {
        final role = roleToString(selectedRole);
        await PersistentAuthStateService.authState.setActiveRole(role);
        await navigateBasedOnRole(navigator, selectedRole);
      } else {
        await ref.read(initializationProvider).logout();
        await navigator.pushNamedAndRemoveUntil(
            LoginPage.routeName, (route) => false);
        Fluttertoast.showToast(msg: "Profile not found. Please login again.");
      }
    }
  }

  Future<void> _registerUser(NavigatorState navigator) async {
    final status = await navigator.push<bool?>(
      MaterialPageRoute(
        builder: (context) => const PatientRegistrationMiniappPage(
          actionType: MiniAppActionType.REGISTER,
          displayName: "Register Patient",
        ),
      ),
    );

    if (status == null || status) {
      await _showRegistrationDialog();
    } else {
      await profileVerification();
    }
  }

  Future<bool?> showConsentForm(NavigatorState navigator, Role? role) async {
    if (role == null) {
      return null;
    }

    bool? consentGiven = await navigator.push<bool?>(
      MaterialPageRoute(
        builder: (context) {
          if (role == Role.ROLE_PATIENT) {
            return const PatientConsentFormPage();
          } else {
            return const VTConsentFormPage();
          }
        },
      ),
    );
    return consentGiven;
  }

  Future<void> _showRegistrationDialog() async {
    showDialog(
      context: context,
      builder: (context) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AlertDialog(
            title: const Text("Registration Required"),
            content: const Text("Please register to continue"),
            actions: [
              TextButton(
                onPressed: () async {
                  Navigator.of(context).pop();
                  profileVerification();
                },
                child: const Text("Register"),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> navigateBasedOnRole(NavigatorState navigator, Role role) async {
    final rolePages = {
      Role.ROLE_PATIENT: const PatientDashboardPage(),
      Role.ROLE_VISION_TECHNICIAN: const VisionTechnicianDashboardPage(),
      // Role.ROLE_VISION_GUARDIAN: const PatientDashboardPage(),
      Role.ROLE_OPTOMETRIST: const OptometritianDashboardPage(),
    };

    if (rolePages.containsKey(role)) {
      navigator.pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => rolePages[role]!,
        ),
        (route) => false,
      );
    } else {
      throw Exception("Invalid Role");
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
}
