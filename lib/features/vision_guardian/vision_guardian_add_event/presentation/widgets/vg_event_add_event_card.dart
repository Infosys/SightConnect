import 'dart:io';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:image_picker/image_picker.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianAddEventCard extends ConsumerWidget {
  const VisionGuardianAddEventCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(addEventDetailsProvider);
    final loc = context.loc!;
    return Container(
      padding: const EdgeInsets.all(AppSize.kmpadding),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.kmradius - 5),
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
            padding: const EdgeInsets.only(top: 40, left: 20, bottom: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                data.image == null
                    ? InkWell(
                        onTap: () async {},
                        child: const Icon(
                          Icons.add_a_photo_outlined,
                          color: AppColor.grey,
                          size: 45,
                        ),
                      )
                    : Image.file(
                        File(data.image!.path),
                        fit: BoxFit.cover,
                        height: 110,
                        width: 110,
                      ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () async {
                        try {
                          final ImagePicker picker = ImagePicker();
                          data.image = await picker.pickImage(
                              source: ImageSource.gallery);
                        } catch (e) {
                          Fluttertoast.showToast(msg: e.toString());
                        }
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            side: const BorderSide(color: AppColor.primary),
                            borderRadius:
                                BorderRadius.circular(AppSize.klradius),
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.file_upload_outlined,
                            color: AppColor.primary,
                            size: 20,
                          ),
                          const SizedBox(width: AppSize.kswidth),
                          Text(
                            loc.vgUploadImage,
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.primary,
                            ),
                          ),
                          const SizedBox(width: AppSize.kswidth),
                        ],
                      ),
                    ),
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
