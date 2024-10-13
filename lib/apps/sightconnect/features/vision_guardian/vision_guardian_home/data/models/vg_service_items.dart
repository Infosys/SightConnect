/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/l10n/app_localizations.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_icon.dart';
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
