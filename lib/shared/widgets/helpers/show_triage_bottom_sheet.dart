import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/pages/triage_member_selection_page.dart';
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
