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
      child: InkWell(
        onTap: () async {
          final navigator = Navigator.of(context);
          await PersistentAuthStateService.authState.setActiveRole(null);
          navigator.pushNamedAndRemoveUntil(
              InitializationPage.routeName, (route) => false);
        },
        child: Container(
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              'Switch Profile',
              style: applyRobotoFont(
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
