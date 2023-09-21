import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/models/drawer_menu_item.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/pages/patient_home_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/shared/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class PatientDashboardPage extends HookWidget {
  const PatientDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var currentItem = useState(DrawerMenuItems.home);
    var selectedItem = currentItem.value;
    var controller = useState(ZoomDrawerController());

    return ZoomDrawer(
      controller: controller.value,
      borderRadius: 40,
      angle: -7,
      mainScreenScale: 0.2,
      showShadow: true,
      slideWidth: size.width * 0.8,
      menuBackgroundColor: AppColor.primary,
      menuScreen: AppDrawer(
        selectedItem: selectedItem,
        onSelected: (item) {
          currentItem.value = item;
          _navigateToPage(item, context, controller.value);
        },
      ),
      mainScreen: const MainView(),
    );
  }

  _navigateToPage(
    DrawerMenuItem item,
    BuildContext context,
    ZoomDrawerController controller,
  ) {
    switch (item) {
      case DrawerMenuItems.home:
        controller.toggle!();
        break;
      case DrawerMenuItems.profile:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const PatientProfilePage(),
          ),
        );
        break;
      default:
        break;
    }
  }
}
