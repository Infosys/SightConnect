/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToastMessage(String message, BuildContext context, int type) {
  FToast fToast = FToast();
  fToast.init(context);
  fToast.showToast(
      child: Container(
    padding: const EdgeInsets.all(AppSize.km),
    decoration: const BoxDecoration(
        color: AppColor.darkCharcoal,
        borderRadius: BorderRadius.all(Radius.circular(5))),
    child: RichText(
      text: TextSpan(
        children: [
          const WidgetSpan(
            child: Icon(
              Icons.check_circle_outline,
              size: AppSize.km,
              color: AppColor.green,
            ),
          ),
          const WidgetSpan(child: SizedBox(width: AppSize.ks)),
          TextSpan(
            text: message,
            style: applyRobotoFont(fontSize: 14, color: AppColor.white),
          ),
          const WidgetSpan(child: SizedBox(width: AppSize.kl * 2)),
          WidgetSpan(
            child: InkWell(
              onTap: () {
                fToast.removeCustomToast();
              },
              child: type == 0
                  ? const Icon(
                      Icons.close,
                      size: AppSize.km,
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
