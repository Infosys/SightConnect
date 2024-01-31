import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/pages/triage_member_selection_page.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/pages/patient_home_page.dart';
import 'package:eye_care_for_all/features/patient/patient_notification/presentation/pages/patient_notification_page.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/widgets/app_bottom_nav_bar.dart';
import 'package:eye_care_for_all/shared/widgets/appointment_booking_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import '../../../patient_services/presentation/pages/patient_services_page.dart';

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
    ref.listen(getPatientProfileProvider, (previous, next) {
      if (next.hasError) {
        logger.d("Logged out from PatientDashboardPage ");
        ref.read(initializationProvider).logout().then((value) {
          Fluttertoast.showToast(msg: "You have been logged out");
          Navigator.pushNamedAndRemoveUntil(
            context,
            LoginPage.routeName,
            (route) => false,
          );
        }).catchError((e) {
          logger.e(
              "Apologies, we encountered a logout error in the mobile app. from PatientDashboardPage : $e");
          Fluttertoast.showToast(
              msg:
                  "Apologies, we encountered a logout error in the mobile app.");
        });
      }
    });
    return ref.watch(getPatientProfileProvider).when(
          data: (data) {
            return Scaffold(
              body: _buildPage(ref, context),
            );
          },
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          error: (error, stackTrace) {
            return Scaffold(
              body: Center(
                  child: Text(error.toString()) //CircularProgressIndicator(),
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
          child: Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AppBottomNavBar(
              onSelected: (index) {
                ref.read(patientDashboardProvider).currentIndex = index;
                switch (index) {
                  case 0:
                    break;
                  case 1:
                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return const PatientServicesPage();
                      },
                    );
                    break;
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const AppointmentBooking();
                  //     },
                  //   ),
                  // );
                  // break;

                  case 2:
                    showModalBottomSheet(
                      context: context,
                      isDismissible: false,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      barrierLabel: MaterialLocalizations.of(context)
                          .modalBarrierDismissLabel,
                      builder: (context) {
                        MatomoTracker.instance.trackEvent(
                            eventInfo: EventInfo(
                              category: 'Main',
                              action: 'Click',
                              name: 'Triage member selection page click',
                            ),
                            dimensions: {
                              'dimension1':
                                  '${PersistentAuthStateService.authState.activeRole}'
                            });
                        return const TriageMemberSelectionPage();
                      },
                    );

                    break;
                  case 3:
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const PatientProfilePage();
                        },
                      ),
                    );
                    break;
                  case 4:
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const PatientNotificationPage();
                        },
                      ),
                    );
                    break;
                  default:
                    break;
                }
              },
              selectedIndex: ref.watch(patientDashboardProvider).currentIndex,
            ),
          ),
        ),
      ],
    );
  }
}
