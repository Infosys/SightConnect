import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        text: loc.vgServicesCreateEvent,
        icon: Icons.event_available,
        color: AppColor.paleYellow,
      ),
      VGServiceItem(
        id: VGServiceId.register_patient,
        text: loc.vgServicesRegisterPatient,
        icon: Icons.person_add_alt_outlined,
        color: AppColor.orangeCream,
      ),
      VGServiceItem(
        id: VGServiceId.eye_assessment,
        text: loc.vgServicesEyeAssessment,
        icon: AppIcon.navTriage,
        color: AppColor.cyan,
      ),
    ];
  }
}
