import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_patient_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianEventPatientSearch extends HookConsumerWidget {
  const VisionGuardianEventPatientSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isValid = useState(true);
    final loc = context.loc!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          onChanged: (value) {
            if (RegExp(r'^[0-9]{10}$').hasMatch(value)) {
              isValid.value = true;
            } else {
              isValid.value = false;
            }
            if (isValid.value) {
              ref.read(addPatientEventProvider).setPatientSearchQuery(value);
            }
          },
          decoration: InputDecoration(
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: AppColor.primary,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: AppSize.kspadding),
            filled: true,
            fillColor: AppColor.white,
            hintText: loc.vgSearchPatientByPhoneNumber,
            hintStyle: applyRobotoFont(
              color: AppColor.grey,
              fontSize: 14,
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColor.primary),
              borderRadius: BorderRadius.circular(AppSize.klradius),
            ),
          ),
        ),
        const SizedBox(height: AppSize.kspadding),
        Visibility(
          visible: !isValid.value,
          child: Text(loc.vgInvalidPhoneNumber,
              style: applyRobotoFont(
                color: AppColor.red,
                fontSize: 12,
              ),
              textAlign: TextAlign.center),
        )
      ],
    );
  }
}
