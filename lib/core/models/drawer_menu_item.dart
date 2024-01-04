import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum DrawerMenuItemId {
  home,
  profile,
  // appointments,
  prescriptions,
  scanner,
  // accessibilities,
  about,
  // termOfUse,
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
    DrawerMenuItem home = DrawerMenuItem(
      id: DrawerMenuItemId.home,
      title: loc.appDrawerHome,
      icon: AppIcon.drawerHome,
    );
    DrawerMenuItem profile = DrawerMenuItem(
      id: DrawerMenuItemId.profile,
      title: loc.appDrawerMyProfile,
      icon: AppIcon.navProfile,
    );
    DrawerMenuItem prescriptions = DrawerMenuItem(
      id: DrawerMenuItemId.prescriptions,
      title: loc.appDrawerAssessmentsAndTests,
      icon: AppIcon.drawerAssessmentsAndTest,
    );
    DrawerMenuItem scanner = DrawerMenuItem(
      id: DrawerMenuItemId.scanner,
      title: loc.appDrawerScanner,
      icon: AppIcon.scanner,
    );
    DrawerMenuItem about = DrawerMenuItem(
      id: DrawerMenuItemId.about,
      title: loc.appDrawerAboutUs,
      icon: AppIcon.drawerAboutUs,
    );
    DrawerMenuItem privacyPolicy = DrawerMenuItem(
      id: DrawerMenuItemId.privacyPolicy,
      title: loc.appDrawerPrivacyPolicy,
      icon: AppIcon.drawerPrivacyPolicy,
    );
    DrawerMenuItem help = DrawerMenuItem(
      id: DrawerMenuItemId.help,
      title: loc.appDrawerHelpAndSupport,
      icon: AppIcon.drawerHelpAndSupport,
    );

    return [
      home,
      profile,
      // appointments,
      prescriptions,
      scanner,
      // accessibilities,
      about,
      // termOfUse,
      privacyPolicy,
      help,
    ];
  }
}
