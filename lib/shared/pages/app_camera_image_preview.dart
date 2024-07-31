import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_cropper/image_cropper.dart';

class AppCameraImagePreview extends HookWidget {
  const AppCameraImagePreview({super.key, required this.imageFile});
  final XFile imageFile;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    var displayedImage = useState<XFile?>(null);
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColor.white),
        backgroundColor: AppColor.black,
        actions: [
          IconButton(
            color: AppColor.white,
            onPressed: () async {
              try {
                final image = await _cropImage(context, imageFile);
                if (image != null) {
                  displayedImage.value = _convertImage(image);
                }
                logger.d(image);
              } on Exception catch (e) {
                logger.d("$e");
              }
            },
            icon: const Icon(Icons.crop),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Image.file(
              displayedImage.value != null
                  ? File(displayedImage.value!.path)
                  : File(imageFile.path),
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: AppColor.black.withOpacity(0.5),
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(context) * 0.05,
                vertical: AppSize.height(context) * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).pop(null);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: AppColor.red,
                      ),
                      icon: const Icon(Icons.cancel, size: 22),
                      label: Text(
                        loc.discardButton,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        if (displayedImage.value == null) {
                          Navigator.of(context).pop(imageFile);
                        } else {
                          Navigator.of(context).pop(displayedImage.value);
                        }
                      },
                      icon: const Icon(Icons.check_circle, size: 22),
                      label: Text(
                        loc.confirmButton,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<CroppedFile?> _cropImage(
    BuildContext context,
    XFile imageFile,
  ) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: imageFile.path,
      compressFormat: ImageCompressFormat.jpg,
      compressQuality: 100,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Cropper',
          toolbarColor: AppColor.primary,
          toolbarWidgetColor: AppColor.white,
          initAspectRatio: CropAspectRatioPreset.original,
          statusBarColor: AppColor.primary,
          activeControlsWidgetColor: AppColor.primary,
          lockAspectRatio: false,
        ),
        IOSUiSettings(
          title: 'Cropper',
        ),
        WebUiSettings(
          context: context,
          presentStyle: CropperPresentStyle.dialog,
          boundary: const CroppieBoundary(
            width: 520,
            height: 520,
          ),
          viewPort:
              const CroppieViewPort(width: 480, height: 480, type: 'circle'),
          enableExif: true,
          enableZoom: true,
          showZoomer: true,
        ),
      ],
    );
    return croppedFile;
  }

  _convertImage(CroppedFile file) {
    return XFile(file.path);
  }
}
