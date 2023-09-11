import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_dashboard/presentation/widgets/patient_bottom_nav_bar.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/providers/patient_home_provider.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/campaigns_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/good_to_know_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/eye_camps_card_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/helpline_card.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/invite_others_card.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/my_connections_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/nearby_vision_centers_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/patient_header.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/priority_notification_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/my_recent_services_card_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_notification/presentation/pages/patient_notification_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_services/presentation/pages/patient_services_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_test_initiate_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientHomePage extends ConsumerWidget {
  static const String routeName = '/patient-home';
  const PatientHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(patientHomeProvider);
    return Scaffold(
      bottomNavigationBar: PatientBottomNavBar(
        onTap: (index) {
          model.changeIndex(index);
          _navigateToPage(index, context);
        },
        currentIndex: model.currentIndex,
      ),
      appBar: AppBar(
        title: const Text(
          "Eye Care for All",
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Theme.of(context).primaryColor,
            child: const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/images/profile_image.png'),
            ),
          ),
          const SizedBox(
            width: AppSize.kmwidth,
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(patientHomeProvider);
          await Future.delayed(const Duration(seconds: 1));
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: Responsive.isMobile(context)
                ? const EdgeInsets.all(AppSize.kmpadding)
                : const EdgeInsets.all(AppSize.klpadding),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PatientHeader(),
                SizedBox(height: AppSize.kmheight),
                PriorityNotificationList(),
                SizedBox(height: AppSize.kmheight),
                MyConnectionsList(),
                SizedBox(height: AppSize.kmheight),
                RecentServicesCardList(),
                SizedBox(height: AppSize.kmheight),
                NearbyVisionCentersList(),
                SizedBox(height: AppSize.kmheight),
                HelplineCard(),
                SizedBox(height: AppSize.kmheight),
                InviteCard(),
                EyeCampsCardList(),
                SizedBox(height: AppSize.kmheight),
                GoodToKnowCardList(),
                SizedBox(height: AppSize.kmheight),
                CampaginsList()
              ],
            ),
          ),
        ),
      ),
    );
  }

  _navigateToPage(int index, BuildContext context) {
    switch (index) {
      case 0:
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const PatientServicesPage(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const TumblingTestInitiatePage(),
          ),
        );
        break;

      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => const PatientNotificationPage()),
        );
        break;
      case 4:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const PatientProfilePage(),
          ),
        );
        break;

      default:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const PatientHomePage(),
          ),
        );
    }
  }
}
