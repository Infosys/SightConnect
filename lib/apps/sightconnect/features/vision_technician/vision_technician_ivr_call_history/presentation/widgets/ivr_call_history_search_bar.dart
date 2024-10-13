/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IvrCallHistorySearchBarVT extends ConsumerWidget {
  const IvrCallHistorySearchBarVT({super.key, required this.readOnly});

  final bool readOnly;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Expanded(
      child: TextField(
        readOnly: readOnly,
        onTap: () {},
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
              color: AppColor.primary,
            ),
          ),
          suffixIcon: Container(
            decoration: BoxDecoration(
              color: AppColor.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppSize.kl),
            ),
            child: const Icon(
              CupertinoIcons.mic,
              color: AppColor.grey,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: AppSize.ks),
          filled: true,
          fillColor: AppColor.white,
          hintText: loc.vtSearchText,
          hintStyle: applyRobotoFont(
            color: AppColor.grey,
            fontSize: 14,
          ),
          border: OutlineInputBorder(
            // borderSide: BorderSide.none,
            borderSide: const BorderSide(color: AppColor.primary),
            borderRadius: BorderRadius.circular(AppSize.kl * 3),
          ),
        ),
      ),
    );
  }
}
