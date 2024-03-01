import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTSearchBar extends ConsumerWidget {
  const VTSearchBar({
    super.key,
    this.onSearched,
  });

  final Function(String)? onSearched;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
      child: TextField(
        onChanged: (data) {
          onSearched?.call(data);
        },
        onTap: () {},
        decoration: InputDecoration(
          prefixIcon:
              const Icon(CupertinoIcons.search, color: AppColor.primary),
          hintText: loc.vtSearchText,
          hintStyle: applyRobotoFont(
            color: AppColor.grey,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
