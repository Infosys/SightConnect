import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/consent_model.dart';
import 'package:eye_care_for_all/core/repositories/consent_repository_impl.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/core/services/shared_preference.dart';
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
import 'package:share_plus/share_plus.dart';
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
      await _invalidateAndLogout("Server Error. Please login again.");
    }
  }

  Future<void> _handleNewUser(NavigatorState navigator, Role role) async {
    if (role == Role.ROLE_PATIENT) {
      final is18Plus = await _18PlusDeclaration();
      if (is18Plus == null || !is18Plus) {
        // 18+ declaration not given do not proceed
        // This will never happen
        Fluttertoast.showToast(msg: "18+ Declaration not given");
        return;
      }

      if (await _isConsentAlreadyAccepted()) {
        await _registerUser(navigator, role);
      } else {
        final consentGiven = await _showConsentForm(navigator, role);
        if (consentGiven != null && consentGiven) {
          await _registerUser(navigator, role);
        } else {
          await _invalidateAndLogout("Consent not given. Please login again.");
        }
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
    if (role == Role.ROLE_OPTOMETRIST) {
      //Skip consent for optometrist
      await navigateBasedOnRole(navigator, role);
      return;
    }

    try {
      if (role == Role.ROLE_PATIENT) {
        final is18Plus = await _18PlusDeclaration();
        if (is18Plus == null || !is18Plus) {
          // 18+ declaration not given do not proceed
          // This will never happen
          Fluttertoast.showToast(msg: "18+ Declaration not given");
          return;
        }
      }

      if (await _isConsentAlreadyAccepted()) {
        // consent already accepted
        await navigateBasedOnRole(navigator, role);
      } else {
        final isAccepted = await _showConsentForm(navigator, role);
        if (isAccepted != null && isAccepted) {
          await navigateBasedOnRole(navigator, role);
        } else {
          // it will never come here
          await _invalidateAndLogout("Consent not given. Please login again.");
        }
      }
    } catch (e) {
      await _invalidateAndLogout("Server Error. Please login again.");
    }
  }

  Future<bool> _isConsentAlreadyAccepted() async {
    final model = ref.watch(consentRepositoryProvider);
    final consent = await model.getConsent().catchError((e) async {
      logger.e("getConsent: $e");
      await _invalidateAndLogout("Server Error. Please login again.");
    });
    return consent.consentStatus == ConsentStatus.ACKNOWLEDGED;
  }

  Future<bool> _18PlusDeclarationAccepted() async {
    final model = ref.watch(consentRepositoryProvider);
    final consent = await model.getConsent(type: "AGE_DECLARATION").catchError(
      (e) async {
        logger.e("18 Plus Declaration: $e");
        await _invalidateAndLogout("Server Error. Please login again.");
      },
    );
    return consent.consentStatus == ConsentStatus.ACKNOWLEDGED;
  }

  Future<bool?> _18PlusDeclaration() async {
    final isAccepted = await _18PlusDeclarationAccepted();
    if (isAccepted) {
      return true;
    } else {
      if (context.mounted) {
        return showDialog<bool?>(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const EigtheenPlusDeclaration();
          },
        );
      }
    }
    return null;
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
    return showDialog<Role>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return ChooseRoleDialog(roles: roles);
      },
    );
  }

  Future<void> navigateBasedOnRole(NavigatorState navigator, Role role) async {
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
