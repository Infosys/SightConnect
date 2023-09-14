import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_drawer/data/model/menu_item.dart';
import 'package:eye_care_for_all/roles/patient/patient_drawer/presentation/pages/patient_drawer_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/patient_bottom_nav_bar.dart';
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
import 'package:eye_care_for_all/shared/pages/internet_lost_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientHomePage extends HookWidget {
  static const String routeName = '/patient-home';
  const PatientHomePage({super.key});

  getView(MenuItem item) {
    switch (item) {
      case MenuItems.home:
        return const _MainView();
      case MenuItems.profile:
        return const PatientProfilePage();
      case MenuItems.appointments:
        return const InternetLostPage();
      case MenuItems.prescriptions:
        return const InternetLostPage();
      case MenuItems.accessibilities:
        return const InternetLostPage();
      case MenuItems.about:
        return const InternetLostPage();
      case MenuItems.termOfUse:
        return const InternetLostPage();
      case MenuItems.privacyPolicy:
        return const InternetLostPage();
      case MenuItems.help:
        return const InternetLostPage();
      default:
        return const _MainView();
    }
  }

  @override
  Widget build(BuildContext context) {
    var currentItem = useState(MenuItems.home);

    return PatientDrawerPage(
      mainScreen: getView(currentItem.value),
      selectedItem: currentItem.value,
      onSelected: (item) {
        currentItem.value = item;
      },
    );
  }
}

class _MainView extends ConsumerWidget {
  const _MainView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      bottomNavigationBar: const PatientBottomNavBar(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ZoomDrawer.of(context)!.toggle();
          },
          icon: const Icon(Icons.menu),
        ),
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
