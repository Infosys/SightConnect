import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';

import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/camera_helper.dart';

import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianAddEventCard extends ConsumerWidget {
  const VisionGuardianAddEventCard({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
       var data = ref.watch(addEventDetailsProvider);
    return Container(
      padding:const EdgeInsets.all(AppSize.kmpadding),
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
            "Add Event Photo",
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
                        onTap: () async {
                          try {
                            var navigator = Navigator.of(context);
                            var cameras = await availableCameras();
                            if (cameras.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "camera found ${cameras.length}");
                              return;
                            }
                            navigator.push(
                              MaterialPageRoute(
                                builder: (context) => CameraHelper(
                                  cameras: cameras,
                                  provider: addEventDetailsProvider,
                                ),
                              ),
                            );
                          } catch (e) {
                            Fluttertoast.showToast(msg: e.toString());
                          }
                        },
                        child: const Icon(
                          Icons.add_a_photo_outlined,
                          color: AppColor.grey,
                          size: 45,
                        ),
                      )
                    : Image.file(
                        File(data.image!.path),
                        fit: BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),
                Column(
                  children: [
                    if (data.image != null)
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          // backgroundColor: MaterialStateProperty.all(AppColor.primary),
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
                              "Upload Image",
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
                      "Add a photo of the Event which\nwill be shown as thumbnail",
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
