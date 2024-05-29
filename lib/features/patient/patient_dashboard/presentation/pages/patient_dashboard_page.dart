import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/pages/patient_home_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/pages/pincode_dialog_page.dart';
import 'package:eye_care_for_all/shared/widgets/app_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

class PatientDashboardPage extends ConsumerStatefulWidget {
  static const routeName = '/patient-dashboard';
  const PatientDashboardPage({
    super.key,
  });

  @override
  ConsumerState<PatientDashboardPage> createState() =>
      _PatientDashboardPageState();
}

class _PatientDashboardPageState extends ConsumerState<PatientDashboardPage> {
  final Content _content = Content(name: 'Dashboard Page View');

  @override
  void initState() {
    super.initState();
    MatomoTracker.instance.trackContentImpression(content: _content);
  }

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    ref.listen(getPatientProfileProvider, (previous, next) {
      if (next.hasError) {
        logger.d("Logged out from PatientDashboardPage ");
        ref.read(initializationProvider).logout().then((value) {
          Fluttertoast.showToast(msg: loc.patientLoggedOut);
          Navigator.pushNamedAndRemoveUntil(
            context,
            LoginPage.routeName,
            (route) => false,
          );
        }).catchError((e) {
          logger.e(
              "Apologies, we encountered a logout error in the mobile app. from PatientDashboardPage : $e");
          Fluttertoast.showToast(msg: loc.patientLogoutError);
        });
      }
    });
    return ref.watch(getPatientProfileProvider).when(
          data: (data) {
            final address = data.profile?.patient?.address??[];
            if ( address.isNotEmpty && (address.first.pincode??"").isEmpty) {
              return PincodeDialogPage(data: data);
            } else {
              return Scaffold(
                body: _buildPage(ref, context),
              );
            } 
          },
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
          error: (error, stackTrace) {
            return Scaffold(
              body: Center(
                  child: Text(
                error.toString(),
              ) //CircularProgressIndicator(),
                  ),
            );
          },
        );
  }

  Widget _buildPage(WidgetRef ref, BuildContext context) {
    return Stack(
      children: [
        const PatientHomePage(),
        Visibility(
          visible: ref.watch(patientDashboardProvider).isVisible,
          child: const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AppBottomNavBar(),
          ),
        ),
      ],
    );
  }
}
