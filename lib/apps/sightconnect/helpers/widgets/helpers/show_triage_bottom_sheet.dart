/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_member_selection/pages/triage_member_selection_page.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

Future<T?> showTriageBottomSheet<T>({required BuildContext context}) {
  return showModalBottomSheet(
    context: context,
    isDismissible: false,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    builder: (context) {
      MatomoTracker.instance.trackEvent(
          eventInfo: EventInfo(
            category: 'Main',
            action: 'Click',
            name: 'Triage member selection page click',
          ),
          dimensions: {
            'dimension1': '${PersistentAuthStateService.authState.activeRole}'
          });
      return const TriageMemberSelectionPage();
    },
  );
}
