import 'package:eye_care_for_all/apps/eyebank/features/eb_dashboard/presentation/pages/eb_dashboard_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/modals/shimmer_error_sheet.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/role_strategy/app_role_strategy.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/role_strategy/base_role_strategy.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/widgets/splash_shimmer.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_dashboard_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_dashboard/presentation/pages/vg_dashboard_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_dashboard/presentation/pages/vision_technician_dashboard_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/keycloak.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/widgets/choose_role_dialog.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
          logger.d("ACTIVE ROLE: $role");
          await _profileVerification(roleMapper(role)!);
        } else {
          final selectedProfile = await _showProfileSelectionDialog(navigator);
          logger.d("Selected Profile: $selectedProfile");
          if (selectedProfile != null) {
            final role = roleToString(selectedProfile);
            await PersistentAuthStateService.authState.setActiveRole(role);

            // Update the headers with the selected role
            ref.read(dioProvider.notifier).updateHeaders(activeRole: role);
            await _profileVerification(selectedProfile);
          } else {
            logger.d("Role not found");
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

      final roleHandler = _getRoleHandler(role);
      if (userExist) {
        logger.d("Existing User Exist: $userExist");
        await roleHandler.initializeExistingUser(navigator);
      } else {
        logger.d("New User Exist: $userExist");
        await roleHandler.initializeNewUser(navigator);
      }
      await _navigateBasedOnRole(navigator, role);
    } on Failure catch (e) {
      logger.e("profileVerification: $e");
      _showErrorBottomSheet(e.errorMessage);
    } catch (e) {
      logger.e("profileVerification: $e");
      _showErrorBottomSheet("Something went wrong. Please try again.");
    }
  }

  RoleStrategy _getRoleHandler(Role role) {
    switch (role) {
      case Role.ROLE_PATIENT:
        return PatientRoleStrategy(ref);
      case Role.ROLE_VISION_TECHNICIAN:
        return VisionTechnicianRoleStrategy(ref);
      case Role.ROLE_VISION_GUARDIAN:
        return VisionGuardianRoleStrategy(ref);
      case Role.ROLE_OPTOMETRIST:
        return OptometristRoleStrategy(ref);
      case Role.ROLE_VOLUNTEER:
        return VolunteerRoleStrategy(ref);
      case Role.ROLE_EYEBANK_TECHNICIAN:
        return EyeBankRoleStrategy(ref);
      default:
        throw UnimplementedError('Role not implemented');
    }
  }

  Future<Role?> _showProfileSelectionDialog(NavigatorState navigator) {
    final currentRoles = PersistentAuthStateService.authState.roles;
    final isUserBeta = PersistentAuthStateService.authState.isUserTypeBeta;

    if (currentRoles == null) {
      return Future.value(null);
    }
    var roles = roleListMapper(currentRoles);
    if (roles.length == 1) {
      return Future.value(roles.first);
    }
    // Allow only Beta users to select EyeBank Technician role
    // if (isUserBeta && kIsWeb) {
    //   return Future.value(Role.ROLE_EYEBANK_TECHNICIAN);
    // }
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

  void _showErrorBottomSheet(String message) {
    shimmerErrorBottomSheet(
      context: context,
      message: message,
      retryInitialization: _retryInitialization,
      invalidateAndLogout: _invalidateAndLogout,
    );
  }

  void _retryInitialization() {
    final role = PersistentAuthStateService.authState.activeRole;
    if (role != null) {
      _profileVerification(roleMapper(role)!);
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
    return const SplashShimmer();
  }
}
