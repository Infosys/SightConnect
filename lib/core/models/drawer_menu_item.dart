import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';

class DrawerMenuItem {
  final String title;
  final String icon;
  const DrawerMenuItem({
    required this.title,
    required this.icon,
  });
}

class DrawerMenuItems {
  static const DrawerMenuItem home = DrawerMenuItem(
    title: "Home",
    icon: AppIcon.drawerHome,
  );
  static const DrawerMenuItem profile = DrawerMenuItem(
    title: "My Profile",
    icon: AppImages.profieImage,
  );
  // static const DrawerMenuItem appointments = DrawerMenuItem(
  //   title: "Appointments",
  //   icon: AppIcon.drawerAppoinments,
  // );
  static const DrawerMenuItem prescriptions = DrawerMenuItem(
    title: "Assessments and Tests",
    icon: AppIcon.drawerAssessmentsAndTest,
  );
  // static const DrawerMenuItem accessibilities = DrawerMenuItem(
  //   title: "Accessibility Settings",
  //   icon: AppIcon.drawerAssessibility,
  // );
  static const DrawerMenuItem about = DrawerMenuItem(
    title: "About Us",
    icon: AppIcon.drawerAboutUs,
  );
  static const DrawerMenuItem termOfUse = DrawerMenuItem(
    title: "Terms of Use",
    icon: AppIcon.drawerTermOfUse,
  );
  static const DrawerMenuItem privacyPolicy = DrawerMenuItem(
    title: "Privacy Policy",
    icon: AppIcon.drawerPrivacyPolicy,
  );
  static const DrawerMenuItem help = DrawerMenuItem(
    title: "Help and Support",
    icon: AppIcon.drawerHelpAndSupport,
  );
  static const List<DrawerMenuItem> all = [
    home,
    profile,
    // appointments,
    prescriptions,
    // accessibilities,
    about,
    termOfUse,
    privacyPolicy,
    help,
  ];
}
