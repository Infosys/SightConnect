import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vision_technician_eye_scan_page_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CameraPreviewCard extends ConsumerWidget {
  const CameraPreviewCard({super.key, required this.controller});
  final CameraController controller;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(AppSize.klradius),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.klradius),
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: CameraPreview(controller),
            ),
            Positioned(
              top: AppSize.klpadding,
              right: AppSize.klpadding,
              child: Container(
                width: AppSize.klwidth * 2,
                height: AppSize.klheight * 2,
                margin: const EdgeInsets.only(right: AppSize.klpadding),
                decoration: BoxDecoration(
                  color: AppColor.white.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.flash_on),
                ),
              ),
            ),
            Positioned(
              bottom: AppSize.klpadding,
              left: AppSize.width(context) / 4,
              right: AppSize.width(context) / 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: AppSize.klwidth * 2,
                    height: AppSize.klheight * 2,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColor.white.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.photo),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      try {
                        final XFile image = await controller.takePicture();
                        // setState(() {
                        //   imagePath = image.path;
                        // });
                        ref
                            .read(visionTechnicianEyeScanProvider.notifier)
                            .saveImage(image);
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: Container(
                      width: AppSize.klwidth * 2,
                      height: AppSize.klheight * 2,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColor.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Container(
                    width: AppSize.klwidth * 2,
                    height: AppSize.klheight * 2,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColor.white.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.camera_rotate),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
