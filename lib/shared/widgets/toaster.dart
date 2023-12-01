import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToastMessage(String message, BuildContext context, int type) {
  FToast fToast = FToast();
  fToast.init(context);
  fToast.showToast(
      child: Container(
    padding: const EdgeInsets.all(AppSize.kmpadding),
    decoration: const BoxDecoration(
        color: AppColor.darkCharcoal,
        borderRadius: BorderRadius.all(Radius.circular(5))),
    child: RichText(
      text: TextSpan(
        children: [
          const WidgetSpan(
            child: Icon(
              Icons.check_circle_outline,
              size: AppSize.kmwidth,
              color: AppColor.green,
            ),
          ),
          const WidgetSpan(child: SizedBox(width: AppSize.kswidth)),
          TextSpan(
            text: message,
            style: applyRobotoFont(fontSize: 14, color: AppColor.white),
          ),
          const WidgetSpan(child: SizedBox(width: AppSize.klwidth * 2)),
          WidgetSpan(
            child: InkWell(
              onTap: () {
                fToast.removeCustomToast();
              },
              child: type == 0
                  ? const Icon(
                      Icons.close,
                      size: AppSize.kmwidth,
                      color: AppColor.white,
                    )
                  : Text(
                      "View",
                      style: applyRobotoFont(
                          fontWeight: FontWeight.w400, color: AppColor.blue),
                    ),
            ),
          ),
        ],
      ),
    ),
    // toastDuration: const Duration(seconds: 3),
  ));
}
