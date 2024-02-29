import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfileToggleButton extends StatelessWidget {
  const ProfileToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: kDebugMode,
      child: ActionChip(
        onPressed: () async {
          final navigator = Navigator.of(context);
          await PersistentAuthStateService.authState.setActiveRole(null);
          navigator.pushNamedAndRemoveUntil(
              InitializationPage.routeName, (route) => false);
        },
        label: Text(
          'Switch Profile',
          style: applyRobotoFont(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        avatar: const Icon(
          Icons.person,
          size: 16,
        ),
      ),
    );
  }
}
