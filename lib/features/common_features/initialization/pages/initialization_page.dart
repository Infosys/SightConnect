import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/18plus_declaration.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_consent_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/vt_consent_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_dashboard_page.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_dashboard/presentation/pages/vg_dashboard_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_dashboard/presentation/pages/vision_technician_dashboard_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/pages/pulsar_effect_page.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/choose_role_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';
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
          final selectedProfile = await _showProfileSelectionDialog(navigator);
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
      await _invalidateAndLogout("Server Error. Please login again.");
    }
  }

  Future<void> _handleNewUser(NavigatorState navigator, Role role) async {
    try {
      if (role == Role.ROLE_PATIENT) {
        final isAccepted = await _verifyRoleSpecificConsent(navigator, role);
        if (isAccepted != null && isAccepted) {
          await _registerUser(navigator, role);
        } else {
          // User stay on the same page
        }
      } else if (role == Role.ROLE_VISION_TECHNICIAN) {
        await _invalidateAndLogout("You are not authorized to login.");
      } else if (role == Role.ROLE_VISION_GUARDIAN) {
        await _invalidateAndLogout("You are not authorized to login.");
      } else if (role == Role.ROLE_OPTOMETRIST) {
        await _invalidateAndLogout("You are not authorized to login.");
      }
    } catch (e) {
      logger.e("_handleNewUser: $e");
      await _invalidateAndLogout("Server Error. Please login again.");
    }
  }

  Future<void> _handleExistingUser(NavigatorState navigator, Role role) async {
    try {
      final isAccepted = await _verifyRoleSpecificConsent(navigator, role);
      if (isAccepted != null && isAccepted) {
        await _navigateBasedOnRole(navigator, role);
      } else {
        // User stay on the same page
      }
    } catch (e) {
      logger.e("_handleExistingUser: $e");
      await _invalidateAndLogout("Server Error. Please login again.");
    }
  }

  Future<bool?> _verifyRoleSpecificConsent(
      NavigatorState navigator, Role role) async {
    try {
      final model = ref.read(initializationProvider);
      if (role == Role.ROLE_OPTOMETRIST) {
        // Skip consent and 18+ declaration for optometrist
        return true;
      } else if (role == Role.ROLE_PATIENT) {
        // 18+ declaration and consent check for patient
        // bool is18PlusDeclarationAccepted =
        //     await model.getEighteenPlusDeclarationStatus();
        bool is18PlusDeclarationAccepted = await model.getEighteenPlusDeclarationStatus();
        bool isConsentAccepted = await model.getConsentStatus();

        if (is18PlusDeclarationAccepted && isConsentAccepted) {
          return true;
        } else {
          if (!is18PlusDeclarationAccepted) {
            is18PlusDeclarationAccepted =
                await _show18PlusDeclaration() ?? false;
          }
          if (!isConsentAccepted) {
            isConsentAccepted =
                await _showConsentForm(navigator, role) ?? false;
          }
        }
        return is18PlusDeclarationAccepted && isConsentAccepted;
      } else {
        // Check consent for vision technician and guardian
        bool isConsentAccepted = await model.getConsentStatus();
        if (!isConsentAccepted) {
          isConsentAccepted = await _showConsentForm(navigator, role) ?? false;
        }
        return isConsentAccepted;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<bool?> _show18PlusDeclaration() async {
    return showDialog<bool?>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return const EigtheenPlusDeclaration();
      },
    );
  }

  Future<bool?> _showConsentForm(NavigatorState navigator, Role role) async {
    bool? consentGiven = await navigator.push<bool?>(
      MaterialPageRoute(
        builder: (context) {
          if (role == Role.ROLE_PATIENT) {
            return const PatientConsentFormPage();
          } else if (role == Role.ROLE_VISION_TECHNICIAN) {
            return const VTConsentFormPage();
          } else {
            // This is for vision guardian
            return const VTConsentFormPage();
          }
        },
      ),
    );
    return consentGiven;
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
    logger.d("Registration Status: $status");

    if (status == null || status == false) {
      // api failed or manual back press
      Fluttertoast.showToast(msg: "Patient Registration Failed");
      await _showRegistrationDialog(role);
    } else if (status) {
      // patient register successfully
      Fluttertoast.showToast(msg: "Patient Registered Successfully");
      await _profileVerification(role);
    }
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

  Future<Role?> _showProfileSelectionDialog(NavigatorState navigator) {
    final currentRoles = PersistentAuthStateService.authState.roles;
    if (currentRoles == null) {
      return Future.value(null);
    }
    final roles = roleListMapper(currentRoles);
    if (roles.length == 1) {
      return Future.value(roles.first);
    }
    return showDialog<Role>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return ChooseRoleDialog(roles: roles);
      },
    );
  }

  Future<void> _navigateBasedOnRole(NavigatorState navigator, Role role) async {
    final rolePages = {
      Role.ROLE_PATIENT: const PatientDashboardPage(),
      Role.ROLE_VISION_TECHNICIAN: const VisionTechnicianDashboardPage(),
      Role.ROLE_VISION_GUARDIAN: const VisionGuardianDashboardPage(),
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
    await ref.read(initializationProvider).logout().catchError((e) {
      navigator.pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
    });
    await navigator.pushNamedAndRemoveUntil(
        LoginPage.routeName, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return TraceableWidget(
      actionName: "InitializationPage",
      path: InitializationPage.routeName,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Image.asset(
                'assets/logo/splash_bg.png',
                fit: BoxFit.fill,
              ),
            ),
            Pulsar(
              child: Center(
                child: Image.asset(
                  "assets/logo/splash_icon_transparant.png",
                  width: AppSize.width(context) * 0.4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
