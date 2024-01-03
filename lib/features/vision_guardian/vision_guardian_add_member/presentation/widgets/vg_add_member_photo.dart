import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/camera_helper.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/vg_member_details_provider.dart';

class VisionGuardianAddMemberPhoto extends ConsumerWidget {
  const VisionGuardianAddMemberPhoto({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(visionGuardianMemberDetailsProvider);
    return Padding(
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
                            provider: visionGuardianMemberDetailsProvider,
                          ),
                        ),
                      );
                    } catch (e) {
                      Fluttertoast.showToast(msg: e.toString());
                    }
                  },
                  child: const Icon(
                    Icons.camera_alt_outlined,
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
          Text(
            "Click to add Patient’s profile photo",
            style: applyRobotoFont(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColor.grey,
            ),
          ),
        ],
      ),
    );
  }
}
