import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RegisterSearchBar extends HookWidget {
  const RegisterSearchBar({
    super.key,
    this.onSearched,
  });
  final Function(String)? onSearched;

  @override
  Widget build(BuildContext context) {
    var error = useState<bool>(false);

    final loc = context.loc!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
      child: TextField(
        onChanged: (data) {
          final regex =
              RegExp(r'^\d{10}$'); // Replace with your regular expression
          bool matches = regex.hasMatch(data);

          logger.d("matches $matches");

          if (matches) {
            error.value = false;
            onSearched?.call(data);
          } else {
            error.value = true;
          }
        },
        decoration: InputDecoration(
          isDense: true,
          prefixIcon:
              const Icon(CupertinoIcons.search, color: AppColor.primary),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: AppSize.kspadding),
          filled: true,
          fillColor: AppColor.white,
          hintText: loc.vtSearchByMobileNo,
          hintStyle: applyRobotoFont(
            color: AppColor.grey,
            fontSize: 14,
          ),
          error: error.value
              ? Text(
                  loc.vtInvalidMobileNo,
                  style: applyRobotoFont(color: AppColor.red),
                )
              : null,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.primary),
            borderRadius: BorderRadius.circular(AppSize.klradius * 3),
          ),
        ),
      ),
    );
  }
}
