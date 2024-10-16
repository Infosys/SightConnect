/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyConnectionsCard extends HookWidget {
  const MyConnectionsCard({
    Key? key,
    required this.image,
    required this.name,
    required this.index,
    this.isPrimary = false,
    this.onTap,
  }) : super(key: key);

  final String? image;
  final String name;
  final int index;
  final bool isPrimary;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      padding: const EdgeInsets.only(left: AppSize.km),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: onTap,
              child: CircleAvatar(
                radius: 26,
                backgroundColor:
                    isPrimary ? AppColor.primary : AppColor.lightGrey,
                child: image != null
                    ? AppNetworkImage(
                        imageUrl: image!,
                        radius: 24,
                      )
                    : AppNameAvatar(
                        name: name,
                        radius: 24,
                      ),
              ),
            ),
          ),
          const SizedBox(height: AppSize.ks),
          Text(
            name.capitalize(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
