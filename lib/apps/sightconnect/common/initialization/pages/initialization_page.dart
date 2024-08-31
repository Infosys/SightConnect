import 'package:eye_care_for_all/apps/eyebank/features/eb_dashboard/presentation/pages/eb_dashboard_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/18plus_declaration.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/app_consent_form.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/referral/presentation/modals/referral_collect_sheet.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_dashboard_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_dashboard/presentation/pages/vg_dashboard_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_dashboard/presentation/pages/vision_technician_dashboard_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/geocoding_service.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/pages/pulsar_effect_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/app_upgrader.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/choose_role_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import '../../../../../services/location_service.dart';
import '../../../helpers/models/keycloak.dart';

class InitializationPage extends ConsumerStatefulWidget {
  static const String routeName = '/intialization';
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

            // Update the headers with the selected role

            ref.read(dioProvider.notifier).updateHeaders(activeRole: role);

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
        if (isAccepted != null && isAccepted && mounted) {
          await _handleReferral(navigator, role);
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

  Future<void> _handleReferral(NavigatorState navigator, Role role) async {
    bool? referralResult = await showReferralCollectSheet(navigator.context);
    if (referralResult == true) {
      await _registerUser(navigator, role);
    } else {
      await _registerUser(navigator, role);
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
        bool is18PlusDeclarationAccepted =
            await model.getEighteenPlusDeclarationStatus();
        bool isConsentAccepted = await model.getConsentStatus();
        if (is18PlusDeclarationAccepted && isConsentAccepted) {
          return true;
        } else {
          if (!is18PlusDeclarationAccepted) {
            is18PlusDeclarationAccepted =
                await _show18PlusDeclaration(navigator, role) ?? false;
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
      logger.e("_verifyRoleSpecificConsent: $e");
      rethrow;
    }
  }

  Future<bool?> _show18PlusDeclaration(
      NavigatorState navigator, Role role) async {
    bool? consentGiven = await showDialog(
        context: context,
        builder: (context) {
          return const EighteenPlusDeclaration();
        });
    return consentGiven;
  }

  Future<bool?> _showConsentForm(NavigatorState navigator, Role role) async {
    bool? consentGiven = await navigator.push<bool?>(
      MaterialPageRoute(
        builder: (context) {
          return const AppConsentFormPage();
        },
      ),
    );
    return consentGiven;
  }

  Future<void> _registerUser(NavigatorState navigator, Role role) async {
    String? pinCode;

    try {
      final locationData = await LocationService.getLocationWithPermissions();
      logger.d("locationData: $locationData");
      pinCode = "";
      if (locationData == null) {
        pinCode = "";
      } else {
        List<String> addressData =
            await GeocodingService.getPincodeFromLocation();
        pinCode = addressData[0];
        logger.f("pinCode is  $pinCode");
      }
    } on Exception catch (e) {
      logger.e("Error in getting location data: $e");
      pinCode = "";
    }

    final status = await navigator.push<bool?>(
      MaterialPageRoute(
        builder: (context) => PatientRegistrationMiniappPage(
          actionType: MiniAppActionType.REGISTER,
          displayName: "Register Patient",
          pinCode: pinCode,
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
                await _invalidateAndLogout();
              },
              child: const Text("Try with another account"),
            ),
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
    var roles = roleListMapper(currentRoles);
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
      Role.ROLE_VOLUNTEER: const VisionGuardianDashboardPage(),
      Role.ROLE_EYEBANK_TECHNICIAN: const EBDashboardPage(),
    };

    if (rolePages.containsKey(role)) {
      navigator.pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => rolePages[role]!,
        ),
        (route) => false,
      );
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
    return AppUpgrader(
      child: TraceableWidget(
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
                    width: Responsive.isMobile(context)
                        ? AppSize.width(context) * 0.3
                        : AppSize.width(context) * 0.2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
