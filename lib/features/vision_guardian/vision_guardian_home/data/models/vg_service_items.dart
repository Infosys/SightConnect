import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

enum VGServiceId { create_event, register_patient, eye_assessment }

class VGServiceItem {
  final VGServiceId id;
  final String text;
  final dynamic icon; // Can be a string or IconData
  final Color color;

  VGServiceItem({
    required this.id,
    required this.text,
    required this.icon,
    required this.color,
  });
}

class VGServiceItems {
  static List<VGServiceItem> getAll(AppLocalizations loc) {
    return [
      VGServiceItem(
        id: VGServiceId.create_event,
        text:
            PersistentAuthStateService.authState.activeRole == "ROLE_VOLUNTEER"
                ? "Events\r\n"
                : loc.vgServicesCreateEvent,
        icon: Icons.event_available,
        color: AppColor.paleYellow,
      ),
      VGServiceItem(
        id: VGServiceId.register_patient,
        text: 'Register\r\nNew Patient',
        //loc.vgServicesRegisterPatient
        icon: Icons.person_add_alt_outlined,
        color: AppColor.orangeCream,
      ),
      VGServiceItem(
        id: VGServiceId.eye_assessment,
        text: 'Eye\r\nAssessment',
        //loc.vgServicesEyeAssessment
        icon: AppIcon.navTriage,
        color: AppColor.cyan,
      ),
    ];
  }
}
