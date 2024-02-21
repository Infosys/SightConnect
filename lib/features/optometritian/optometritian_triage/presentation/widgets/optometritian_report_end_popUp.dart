// ignore_for_file: file_names

import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void showReportPopUp(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          contentPadding: EdgeInsets.zero,
          actionsPadding: EdgeInsets.zero,
          insetPadding: EdgeInsets.zero,
          clipBehavior: Clip.none,
          content: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.klpadding + 5),
                transform: Matrix4.translationValues(
                    0, AppSize.height(context) * 0.09, 0),
                height: AppSize.height(context) * 0.3,
                width: AppSize.width(context) * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Congratulations!",
                      style: applyFiraSansFont(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.kmheight,
                    ),
                    Text(
                        "You have successfully completed your in-app Assessment.",
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                    const SizedBox(
                      height: AppSize.kmheight,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Close",
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -80,
                left: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.only(bottom: AppSize.klheight),
                  child: ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxHeight: 140, maxWidth: 140),
                    child: SvgPicture.asset(
                      'assets/images/optometritian_success_popup.svg',
                      height: 140,
                      width: 140,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
