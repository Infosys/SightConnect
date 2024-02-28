import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../core/models/keycloak.dart';
import '../theme/text_theme.dart';

class ChooseRoleDialog extends HookWidget {
  const ChooseRoleDialog({super.key, required this.roles});

  final List<Role?> roles;

  @override
  Widget build(BuildContext context) {
    var selectedRole = useState<Role?>(
        roles.contains(Role.ROLE_PATIENT) ? Role.ROLE_PATIENT : roles.first);

    final loc = context.loc!;

    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5,
        sigmaY: 5,
      ),
      child: AlertDialog(
        backgroundColor: AppColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              loc.roleChooseYourRole,
              style: applyFiraSansFont(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              loc.roleNote,
              style: applyFiraSansFont(
                fontSize: 10,
              ),
            ),
            const Divider(
              color: AppColor.primary,
              thickness: 1.4,
            )
          ],
        ),
        content: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: SingleChildScrollView(
            child: ListBody(
              children: roles
                  .map(
                    (role) => InkWell(
                      onTap: () {
                        selectedRole.value = role;
                      },
                      child: AnimatedContainer(
                        transform: Matrix4.translationValues(
                          selectedRole.value == role ? 0 : 10,
                          0,
                          0,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        duration: const Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: selectedRole.value == role
                              ? AppColor.primary.withOpacity(0.8)
                              : null,
                        ),
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: InkWell(
                          onTap: () {
                            selectedRole.value = role;
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _formateRoleName(role!, context),
                                textAlign: TextAlign.center,
                                style: applyRobotoFont(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: selectedRole.value == role
                                      ? AppColor.white
                                      : AppColor.black,
                                ),
                              ),
                              Visibility(
                                visible: selectedRole.value == role,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColor.green,
                                  ),
                                  child: const Icon(
                                    Icons.check,
                                    color: AppColor.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(selectedRole.value);
            },
            child: Text(
              loc.roleConfirm,
              style: applyFiraSansFont(
                color: AppColor.primary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _formateRoleName(Role role, BuildContext context) {
    final loc = context.loc!;
    return switch (role) {
      Role.ROLE_OPTOMETRIST => loc.roleEyeCareProfessional,
      Role.ROLE_VISION_TECHNICIAN => loc.roleVisionTechnician,
      Role.ROLE_PATIENT => loc.rolePatient,
      Role.ROLE_VISION_GUARDIAN => loc.roleVisionGuardian,
    };
  }
}
