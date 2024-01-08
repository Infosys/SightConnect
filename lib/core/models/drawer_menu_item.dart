import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum DrawerMenuItemId {
  // home,
  // profile,
  // // appointments,
  // prescriptions,
  // scanner,
  // // accessibilities,
  // about,
  // // termOfUse,
  // privacyPolicy,
  // help,
  language,
  accessibilities,
  assessments,
  scanner,
  about,
  privacyPolicy,
  help,
}

class DrawerMenuItem {
  final DrawerMenuItemId id;
  final String title;
  final String icon;
  const DrawerMenuItem({
    required this.id,
    required this.title,
    required this.icon,
  });
}

class DrawerMenuItems {
  static List<DrawerMenuItem> getAll(AppLocalizations loc) {
    // DrawerMenuItem home = DrawerMenuItem(
    //   id: DrawerMenuItemId.home,
    //   title: loc.appDrawerHome,
    //   icon: AppIcon.drawerHome,
    // );
    // DrawerMenuItem profile = DrawerMenuItem(
    //   id: DrawerMenuItemId.profile,
    //   title: loc.appDrawerMyProfile,
    //   icon: AppIcon.navProfile,
    // );
    DrawerMenuItem language = const DrawerMenuItem(
      id: DrawerMenuItemId.language,
      // title: loc.appDrawerMyProfile,
      title: "Language Selection",
      icon: "assets/drawer_icons/language.svg",
    );
    DrawerMenuItem accessibilities = const DrawerMenuItem(
      id: DrawerMenuItemId.accessibilities,
      // title: loc.appDrawerMyProfile,
      title: "Accessibility Settings",
      icon: "assets/drawer_icons/accessibility.svg",
    );
    DrawerMenuItem assessments = DrawerMenuItem(
      id: DrawerMenuItemId.assessments,
      title: loc.appDrawerAssessmentsAndTests,
      icon: AppIcon.drawerAssessmentsAndTest,
    );
    DrawerMenuItem scanner = const DrawerMenuItem(
      id: DrawerMenuItemId.scanner,
      // title: loc.appDrawerScanner,
      title: "QR Code Scanner",
      icon: AppIcon.scanner,
    );
    DrawerMenuItem about = DrawerMenuItem(
      id: DrawerMenuItemId.about,
      title: loc.appDrawerAboutUs,
      icon: AppIcon.drawerAboutUs,
    );
    DrawerMenuItem privacyPolicy = const DrawerMenuItem(
      id: DrawerMenuItemId.privacyPolicy,
      // title: loc.appDrawerPrivacyPolicy,
      title: "Privacy & Data Protection",
      icon: "assets/drawer_icons/dpo.svg",
    );
    DrawerMenuItem help = DrawerMenuItem(
      id: DrawerMenuItemId.help,
      title: loc.appDrawerHelpAndSupport,
      icon: AppIcon.drawerHelpAndSupport,
    );

    return [
      // // home,
      // // profile,
      // // appointments,
      // language,
      // prescriptions,
      // scanner,
      // // accessibilities,
      // about,
      // // termOfUse,
      // privacyPolicy,
      // help,
      language,
      accessibilities,
      assessments,
      scanner,
      about,
      privacyPolicy,
      help,
    ];
  }
}
