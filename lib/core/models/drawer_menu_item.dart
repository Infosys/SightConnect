import 'package:eye_care_for_all/core/constants/app_icon.dart';

import '../../l10n/app_localizations.dart';

enum DrawerMenuItemId {
  switchProfile,
  language,
  accessibilities,
  assessments,
  scanner,
  about,
  privacyPolicy,
  help,
  chatbot,
  tenant,
  feedback,
  referral,
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
    DrawerMenuItem switchProfile = DrawerMenuItem(
      id: DrawerMenuItemId.switchProfile,
      title: loc.switchRole,
      icon: "assets/drawer_icons/switch.svg",
    );
    DrawerMenuItem language = DrawerMenuItem(
      id: DrawerMenuItemId.language,
      title: loc.appDrawerLanguageSelection,
      icon: "assets/drawer_icons/language.svg",
    );
    DrawerMenuItem accessibilities = DrawerMenuItem(
      id: DrawerMenuItemId.accessibilities,
      title: loc.appDrawerAccessibility,
      icon: "assets/drawer_icons/accessibility.svg",
    );
    DrawerMenuItem assessments = DrawerMenuItem(
      id: DrawerMenuItemId.assessments,
      title: loc.appDrawerAssessmentsAndTests,
      icon: AppIcon.drawerAssessmentsAndTest,
    );
    DrawerMenuItem scanner = DrawerMenuItem(
      id: DrawerMenuItemId.scanner,
      title: loc.appDrawerScanner,
      icon: AppIcon.scanner,
    );
    DrawerMenuItem feedback = const DrawerMenuItem(
      id: DrawerMenuItemId.feedback,
      title: "Add Review",
      icon: "assets/drawer_icons/feedback.svg",
    );

    DrawerMenuItem about = DrawerMenuItem(
      id: DrawerMenuItemId.about,
      title: loc.appDrawerAboutUs,
      icon: AppIcon.drawerAboutUs,
    );
    DrawerMenuItem privacyPolicy = DrawerMenuItem(
      id: DrawerMenuItemId.privacyPolicy,
      title: loc.appDrawerPrivacyPolicy,
      icon: "assets/drawer_icons/dpo.svg",
    );
    DrawerMenuItem tenant = DrawerMenuItem(
      id: DrawerMenuItemId.tenant,
      title: loc.switchTenant,
      icon: "assets/drawer_icons/accessibility.svg",
    );
    DrawerMenuItem refferal = const DrawerMenuItem(
      id: DrawerMenuItemId.referral,
      title: "Referral",
      icon: "assets/drawer_icons/referral.svg",
    );

    // DrawerMenuItem chatbot = const DrawerMenuItem(
    //   id: DrawerMenuItemId.chatbot,
    //   title: "SightConnect Assistant",
    //   icon: AppIcon.drawerHelpAndSupport,
    // );

    return [
      tenant,
      switchProfile,
      language,
      accessibilities,
      assessments,
      scanner,
      feedback,
      about,
      privacyPolicy,
      refferal,

      // chatbot
    ];
  }
}
