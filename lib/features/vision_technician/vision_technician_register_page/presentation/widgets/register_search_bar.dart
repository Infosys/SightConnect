import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RegisterSearchBar extends HookWidget {
  const RegisterSearchBar({
    super.key,
    this.onSearched,
    this.regex,
  });
  final Function(String)? onSearched;
  final String? regex;

  @override
  Widget build(BuildContext context) {
    var error = useState<bool>(false);
    var textController = useTextEditingController();

    final loc = context.loc!;
    final isMobile = Responsive.isMobile(context);
    return Container(
      margin: isMobile
          ? const EdgeInsets.symmetric(
              horizontal: AppSize.kmpadding,
              vertical: AppSize.kmpadding,
            )
          : EdgeInsets.symmetric(
              horizontal: AppSize.width(context) * 0.1,
              vertical: AppSize.kmpadding,
            ),
      child: TextField(
        controller: textController,
        onChanged: (data) {
          if (regex != null) {
            if (data.isNotEmpty && !RegExp(regex!).hasMatch(data)) {
              error.value = true;
              return;
            }
          }
          error.value = false;
          onSearched?.call(data);
        },
        decoration: InputDecoration(
          isDense: true,
          fillColor: AppColor.white,
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: AppColor.primary,
          ),
          suffixIcon: InkWell(
            onTap: () {
              textController.clear();
            },
            child: const Icon(
              Icons.close,
              color: AppColor.primary,
            ),
          ),
          filled: true,
          hintText: loc.vtSearchByMobileNo,
          hintStyle: applyRobotoFont(color: AppColor.grey, fontSize: 14),
          error: error.value
              ? Text(
                  loc.vtInvalidMobileNo,
                  style: applyRobotoFont(
                    color: AppColor.red,
                    fontSize: 12,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
