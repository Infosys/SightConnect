import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/pages/triage_member_selection_page.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/pages/patient_home_page.dart';
import 'package:eye_care_for_all/features/patient/patient_notification/presentation/pages/patient_notification_page.dart';
import 'package:eye_care_for_all/features/patient/patient_services/presentation/pages/patient_services_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/widgets/app_bottom_nav_bar.dart';
import 'package:eye_care_for_all/shared/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:snowplow_tracker/snowplow_tracker.dart';


class PatientDashboardPage extends ConsumerStatefulWidget {
  const PatientDashboardPage({super.key, required this.tracker});
  final SnowplowTracker tracker;

  @override
  ConsumerState<PatientDashboardPage> createState() =>
      _PatientDashboardPageState();
}

class _PatientDashboardPageState extends ConsumerState<PatientDashboardPage>{


  Future<void> trackEvent(event, {List<SelfDescribing>? contexts}) async {
    widget.tracker.track(event, contexts: contexts);

    logger.d("track event called");

  }

  Future<void> startTracker() async {
    widget.tracker.track(ScreenView(name: 'Dashboard', id: "2c295365-eae9-4243-a3ee-5c4b7baccc8f", type: "full", transitionType: 'none'));
//     await widget.tracker.track(SelfDescribing(
//     schema: 'iglu:com.snowplowanalytics.snowplow/link_click/jsonschema/1-0-1',
//     data: {'targetUrl': 'http://0.0.0.0:9090'}
// ));
  logger.d('Tracker started');
  }

  void initState() {
    super.initState();
    startTracker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                          const event = ScreenView(
                              id: '2c295365-eae9-4243-a3ee-5c4b7baccc8f',
                              name: 'home',
                              type: 'full',
                              transitionType: 'none');
                          trackEvent(event);
                          return const PatientServicesPage();
                        },
                      );
                      break;
                    case 2:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const TriageMemberSelectionPage(),
                        ),
                      );

                      break;
                    case 3:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PatientNotificationPage(),
                        ),
                      );
                      break;
                    case 4:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AppDrawer(),
                        ),
                      );
                      break;
                    default:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AppDrawer(),
                        ),
                      );
                  }
                },
                selectedIndex: ref.watch(patientDashboardProvider).currentIndex,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
