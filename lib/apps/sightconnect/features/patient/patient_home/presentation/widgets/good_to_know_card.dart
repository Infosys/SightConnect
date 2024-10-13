/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class GoodToKnowCards extends StatelessWidget {
  const GoodToKnowCards({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: AppSize.km),
      width: AppSize.width(context) * 0.85,
      child: Stack(
        children: [
          data["image"] != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(AppSize.km),
                  child: Image.asset(
                    data["image"]!,
                    fit: BoxFit.cover,
                    height: 180,
                    colorBlendMode: BlendMode.darken,
                    color: Colors.black.withOpacity(0.1),
                  ),
                )
              : const SizedBox(),
          Padding(
            padding: const EdgeInsets.all(AppSize.kl),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data["name"] ?? "",
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w500,
                    color: AppColor.white,
                  ),
                ),
                const SizedBox(height: AppSize.ks),
                Container(
                  padding: const EdgeInsets.all(AppSize.ks),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColor.white,
                    ),
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: AppColor.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
