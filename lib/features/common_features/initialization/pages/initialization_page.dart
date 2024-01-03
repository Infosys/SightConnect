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
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
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
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        final navigator = Navigator.of(context);
        final role = PersistentAuthStateService.authState.activeRole;

        if (role != null) {
          logger.d("with role: $role");
          _profileVerification(roleMapper(role)!);
        } else {
          final selectedProfile = await showProfileSelectionDialog(navigator);
          logger.d("Selected Role: $selectedProfile");
          if (selectedProfile != null) {
            final role = roleToString(selectedProfile);
            await PersistentAuthStateService.authState.setActiveRole(role);
            logger.d("Active Role: $role");
            _profileVerification(selectedProfile);
          } else {
            logger.d("Role Not Found");
            await _invalidateAndLogout("Role not found. Please login again.");
          }
        }
      },
    );
  }

  Future<void> _profileVerification(Role role) async {
    final navigator = Navigator.of(context);
    try {
      final userExist =
          await ref.read(initializationProvider).checkUserAlreadyExist(role);
      logger.d("User Exist: $userExist");
      if (userExist) {
        _handleExistingUser(navigator, role);
      } else {
        _handleNewUser(navigator, role);
      }
    } catch (e) {
      logger.e("checkUserAlreadyExist: $e");
      // In case of any other error, logout the user
      await _invalidateAndLogout("Something went wrong. Please login again.");
    }
  }

  Future<void> _handleNewUser(NavigatorState navigator, Role role) async {
    if (role == Role.ROLE_PATIENT) {
      final consentGiven = await _showConsentForm(navigator, role);
      if (consentGiven != null && consentGiven) {
        await _registerUser(navigator, role);
      } else {
        await _invalidateAndLogout("Consent not given. Please login again.");
      }
    } else if (role == Role.ROLE_VISION_TECHNICIAN) {
      await _invalidateAndLogout("You are not authorized to login.");
    } else if (role == Role.ROLE_VISION_GUARDIAN) {
      await _invalidateAndLogout("You are not authorized to login.");
    } else if (role == Role.ROLE_OPTOMETRIST) {
      await _invalidateAndLogout("You are not authorized to login.");
    }
  }

  Future<void> _handleExistingUser(NavigatorState navigator, Role role) async {
    // check consent again
    await navigateBasedOnRole(navigator, role);
  }

  Future<void> _registerUser(NavigatorState navigator, Role role) async {
    final status = await navigator.push<bool?>(
      MaterialPageRoute(
        builder: (context) => const PatientRegistrationMiniappPage(
          actionType: MiniAppActionType.REGISTER,
          displayName: "Register Patient",
        ),
      ),
    );

    if (status == null || status) {
      // api failed or manual back press
      await _showRegistrationDialog(role);
    } else {
      // patient register successfully
      await _profileVerification(role);
    }
  }

  Future<bool?> _showConsentForm(NavigatorState navigator, Role role) async {
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

  Future<void> _showRegistrationDialog(Role role) async {
    showDialog(
      context: context,
      builder: (context) {
        return BlurDialogBox(
          title: const Text("Registration Required"),
          content: const Text("Please register to continue"),
          actions: [
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                _profileVerification(role);
              },
              child: const Text("Register"),
            ),
          ],
        );
      },
    );
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
        return BlurDialogBox(
          actions: const [],
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

  Future<void> _invalidateAndLogout(
      [String message = "you have been logged out"]) async {
    Fluttertoast.showToast(msg: message);
    final navigator = Navigator.of(context);
    await ref.read(initializationProvider).logout();
    await navigator.pushNamedAndRemoveUntil(
        LoginPage.routeName, (route) => false);
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
