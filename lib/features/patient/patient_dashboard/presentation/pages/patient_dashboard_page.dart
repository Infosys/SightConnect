import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/pages/triage_member_selection_page.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/pages/patient_home_page.dart';
import 'package:eye_care_for_all/features/patient/patient_notification/presentation/pages/patient_notification_page.dart';
import 'package:eye_care_for_all/features/patient/patient_services/presentation/pages/patient_services_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/widgets/app_bottom_nav_bar.dart';
import 'package:eye_care_for_all/shared/widgets/app_drawer.dart';
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
    MatomoTracker.instance.trackContentImpression(
      content: _content,
    );
    super.initState();
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
        });
      }
    });
    return ref.watch(getPatientProfileProvider).when(
          data: (data) {
            return _buildPage(ref, context);
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
    return const PatientHomePage();

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
                        MatomoTracker.instance.trackEvent(
                          eventInfo: EventInfo(
                            category: 'Main',
                            action: 'Click',
                            name: 'Patient services page click',
                          ),
                        );
                        return const PatientServicesPage();
                      },
                    );
                    break;
                  case 2:
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          MatomoTracker.instance.trackEvent(
                            eventInfo: EventInfo(
                              category: 'Main',
                              action: 'Click',
                              name: 'Triage member selection page click',
                            ),
                          );
                          return const TriageMemberSelectionPage();
                        },
                      ),
                    );

                    break;
                  case 3:
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          MatomoTracker.instance.trackEvent(
                            eventInfo: EventInfo(
                              category: 'Main',
                              action: 'Click',
                              name: 'Patient Notification Page Click',
                            ),
                          );
                          return const PatientNotificationPage();
                        },
                      ),
                    );
                    break;
                  case 4:
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          MatomoTracker.instance.trackEvent(
                            eventInfo: EventInfo(
                              category: 'Main',
                              action: 'Click',
                              name: 'App Drawer Click',
                            ),
                          );
                          return const AppDrawer();
                        },
                      ),
                    );
                    break;
                  default:
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          MatomoTracker.instance.trackEvent(
                            eventInfo: EventInfo(
                              category: 'Main',
                              action: 'Click',
                              name: 'App Drawer Click',
                            ),
                          );
                          return const AppDrawer();
                        },
                      ),
                    );
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
