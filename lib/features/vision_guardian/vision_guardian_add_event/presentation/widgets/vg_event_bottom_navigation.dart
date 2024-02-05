import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianEventBottomNavigationBar extends ConsumerWidget {
  const VisionGuardianEventBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        children: [
          SizedBox(width: AppSize.width(context) * 0.05),
          Expanded(
            child: TextButton(
              onPressed: () {
                ref.watch(addEventDetailsProvider).resetFields();
                Navigator.pop(context);
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    side: const BorderSide(color: AppColor.primary),
                    borderRadius: BorderRadius.circular(AppSize.klradius),
                  ),
                ),
              ),
              child: Text(
                "Cancel",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.primary,
                ),
              ),
            ),
          ),
          SizedBox(width: AppSize.width(context) * 0.05),
          Expanded(
            child: TextButton(
              onPressed: () async {
                final navigator = Navigator.of(context);
                if ((ref.read(addEventDetailsProvider).formKey)
                    .currentState!
                    .validate()) {
                  try {
                    if (ref.watch(addEventDetailsProvider).image == null) {
                      Fluttertoast.showToast(msg: "Add Event Image");
                    } else {
                      await ref.read(addEventDetailsProvider).addEventDetails();
                      navigator.pop();
                      Fluttertoast.showToast(msg: "Event added");
                    }
                  } catch (e) {
                    Fluttertoast.showToast(msg: "Event not added");
                  }
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColor.primary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    side: const BorderSide(color: AppColor.primary),
                    borderRadius: BorderRadius.circular(AppSize.klradius),
                  ),
                ),
              ),
              child: Text(
                "Save",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
            ),
          ),
          SizedBox(width: AppSize.width(context) * 0.05),
        ],
      ),
    );
  }
}
