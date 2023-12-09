import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class IvrCallHistorySearchBarVT extends ConsumerWidget {
  const IvrCallHistorySearchBarVT({super.key, required this.readOnly});

  final bool readOnly;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: AppSize.klwidth * 25,
      child: TextField(
        readOnly: readOnly,
        onTap: () {},
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: () {

            },
            icon: const Icon(
              CupertinoIcons.search,
              color: AppColor.primary,
            ),
          ),
          suffixIcon: Container(
            decoration: BoxDecoration(
              color: AppColor.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppSize.klradius),
            ),
            child: const Icon(
              CupertinoIcons.mic,
              color: AppColor.grey,
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: AppSize.kspadding),
          filled: true,
          fillColor: AppColor.white,
          hintText: 'Search by Patient ID, Mobile No., Name',
          hintStyle: applyRobotoFont(
            color: AppColor.grey,
            fontSize: 14,
          ),
          border: OutlineInputBorder(
            // borderSide: BorderSide.none,
            borderSide: const BorderSide(color: AppColor.primary),
            borderRadius: BorderRadius.circular(AppSize.klradius * 3),
          ),
        ),
      ),
    );
  }
}
