/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class InviteCard extends StatelessWidget {
  const InviteCard({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSize.km,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            loc.inviteCardTitle,
            style: applyFiraSansFont(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: AppSize.km),
          SizedBox(
            height: AppSize.height(context) * 0.2,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/invite_others.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: AppSize.width(context) * 0.3,
                    right: AppSize.width(context) * 0.02,
                    top: AppSize.width(context) * 0.01,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          loc.inviteCardDescription,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: applyRobotoFont(
                            fontSize: 14,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      InkWell(
                        onTap: onPressed,
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: AppColor.white,
                              maxRadius: 14,
                              child: Icon(
                                Icons.share,
                                color: AppColor.primary,
                                size: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              loc.inviteCardInvitation,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
