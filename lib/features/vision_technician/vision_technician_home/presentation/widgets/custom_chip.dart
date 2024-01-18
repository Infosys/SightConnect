import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vt_home_helper_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomChip extends ConsumerWidget {
  const CustomChip({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var watchRef = ref.watch(vtHomeHelperProvider);

    return Flexible(
      child: InkWell(
        onTap: () {
          watchRef.updateCategory(title);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(
              horizontal: AppSize.kspadding / 2,
              vertical: AppSize.kspadding / 2),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSize.kmpadding,
            vertical: AppSize.kspadding,
          ),
          decoration: BoxDecoration(
            color: title == watchRef.category
                ? AppColor.lightBlue
                : AppColor.white,
            border: Border.all(
              color:
                  title == watchRef.category ? AppColor.primary : AppColor.grey,
            ),
            borderRadius: BorderRadius.circular(AppSize.klradius / 2),
          ),
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(fontSize: 14),
          ),
        ),
      ),
    );
  }
}
