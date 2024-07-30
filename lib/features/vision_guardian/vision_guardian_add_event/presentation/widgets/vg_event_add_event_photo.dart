import 'dart:io';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class VisionGuardianAddEventPhoto extends ConsumerWidget {
  const VisionGuardianAddEventPhoto({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(addEventDetailsProvider);
    final loc = context.loc!;
    return Container(
      padding: const EdgeInsets.all(AppSize.km),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.km - 5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            loc.vgAddEventPhoto,
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSize.km,
              horizontal: AppSize.km,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                data.image == null
                    ? Container(
                        padding: const EdgeInsets.all(8),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: AppColor.lightGrey,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Uploaded Image will appear here',
                            softWrap: true,
                            style: applyRobotoFont(
                              color: AppColor.grey,
                              fontSize: 12,
                            ),
                          ),

                          //  Icon(
                          //   Icons.add_a_photo_outlined,
                          //   color: AppColor.grey,
                          //   size: 45,
                          // ),
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.file(
                          File(data.image!.path),
                          fit: BoxFit.cover,
                          height: 110,
                          width: 110,
                        ),
                      ),
                Column(
                  children: [
                    OutlinedButton.icon(
                      onPressed: () async {
                        try {
                          final ImagePicker picker = ImagePicker();
                          data.image = await picker.pickImage(
                              source: ImageSource.gallery);
                        } catch (e) {
                          Fluttertoast.showToast(msg: e.toString());
                        }
                      },
                      icon: const Icon(
                        Icons.file_upload_outlined,
                        color: AppColor.primary,
                        size: 20,
                      ),
                      label: Text(
                        loc.vgUploadImage,
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.primary,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSize.km),
                    Text(
                      loc.vgAddPhotoInstruction,
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
