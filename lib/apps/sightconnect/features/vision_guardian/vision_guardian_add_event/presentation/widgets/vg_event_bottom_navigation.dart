import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianEventBottomNavigationBar extends ConsumerWidget {
  const VisionGuardianEventBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.km,
        vertical: AppSize.km,
      ),
      decoration: const BoxDecoration(
        color: AppColor.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: AppSize.width(context) * 0.4,
            child: OutlinedButton(
              onPressed: () {
                ref.watch(addEventDetailsProvider).resetFields();
                Navigator.pop(context);
              },
              child: Text(
                loc.vgCancel,
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.primary,
                ),
              ),
            ),
          ),
          SizedBox(
            width: AppSize.width(context) * 0.4,
            child: ElevatedButton(
              onPressed: () async {
                final navigator = Navigator.of(context);
                if ((ref.read(addEventDetailsProvider).formKey)
                    .currentState!
                    .validate()) {
                  try {
                    // if (ref.watch(addEventDetailsProvider).image == null) {
                    //   Fluttertoast.showToast(msg: loc.vgAddEventImage);
                    // }

                    await ref.read(addEventDetailsProvider).addEventDetails();
                    navigator.pop();
                    Fluttertoast.showToast(msg: loc.vgEventAdded);
                  } catch (e) {
                    Fluttertoast.showToast(msg: loc.vgEventNotAdded);
                  }
                }
              },
              child: Text(
                loc.vgSave,
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
