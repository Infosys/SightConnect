import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class UploadPhotoBottomSheet extends StatelessWidget {
  const UploadPhotoBottomSheet({super.key, required this.pickFile});

  final VoidCallback pickFile;

  @override
  Widget build(BuildContext context) {
    Color iconBackColor = const Color(0xFFECF2FE);
    Color iconColor = const Color(0xFF14367A);
    return SizedBox(
      height: AppSize.height(context) * .24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: AppSize.ksheight),
          Center(
            child: Container(
              margin: const EdgeInsets.only(
                top: 6.0,
                bottom: 8.0,
              ),
              width: 32, // 10.w
              height: 4, // 0.8.h
              decoration: BoxDecoration(
                color: AppColor.lightGrey,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          const SizedBox(height: AppSize.kmheight),
          Row(
            children: [
              const SizedBox(width: AppSize.klwidth),
              Text(
                "Add Recipient Picture",
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.klheight),
          Row(
            children: [
              const SizedBox(width: AppSize.klwidth),
              Column(
                children: [
                  GestureDetector(
                    onTap: pickFile,
                    child: Container(
                      decoration: BoxDecoration(
                        color: iconBackColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: AppSize.klheight * 2,
                      width: AppSize.klwidth * 2,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: iconColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  const Text("Camera")
                ],
              ),
              const SizedBox(
                width: AppSize.klwidth,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: pickFile,
                    child: Container(
                      decoration: BoxDecoration(
                        color: iconBackColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: AppSize.klheight * 2,
                      width: AppSize.klwidth * 2,
                      child: Icon(
                        Icons.collections_outlined,
                        color: iconColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  const Text("Gallery"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
