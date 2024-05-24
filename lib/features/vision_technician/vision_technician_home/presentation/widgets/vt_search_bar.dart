import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTSearchBar extends HookConsumerWidget {
  const VTSearchBar({
    super.key,
    this.onSearched,
  });

  final Function(String)? onSearched;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final loc = context.loc!;
    final focusNode = useFocusNode();
    final isMobile = Responsive.isMobile(context);
    var textController = useTextEditingController();

    return Container(
      margin: isMobile
          ? const EdgeInsets.symmetric(
              horizontal: AppSize.km,
              vertical: AppSize.km,
            )
          : EdgeInsets.symmetric(
              horizontal: AppSize.width(context) * 0.1,
              vertical: AppSize.km,
            ),
      child: TextField(
        focusNode: focusNode,
        controller: textController,
        onChanged: (data) {
          onSearched?.call(data);
        },
        decoration: InputDecoration(
          prefixIcon:
              const Icon(CupertinoIcons.search, color: AppColor.primary),
          suffixIcon: InkWell(
            onTap: () {
              textController.clear();
            },
            child: const Icon(
              Icons.close,
              color: AppColor.primary,
            ),
          ),
          hintText: "Search by name, mobile number, or assessment ID",
          hintStyle: applyRobotoFont(
            color: AppColor.grey,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
