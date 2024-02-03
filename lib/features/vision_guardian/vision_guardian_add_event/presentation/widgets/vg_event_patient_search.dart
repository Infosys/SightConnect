import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_patient_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianEventPatientSearch extends ConsumerWidget {
  const VisionGuardianEventPatientSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      onSubmitted: (value) {
        if (RegExp(r'^[0-9]{10}$').hasMatch(value)) {
          ref.read(addPatientEventProvider).setPatientSearchQuery(value);
        } else {
          Fluttertoast.showToast(msg: "Enter Phone Number");
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
        hintText: 'Search Patient by Phone Number',
        hintStyle: applyRobotoFont(
          color: AppColor.grey,
          fontSize: 14,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primary),
          borderRadius: BorderRadius.circular(AppSize.klradius),
        ),
      ),
    );
  }
}
