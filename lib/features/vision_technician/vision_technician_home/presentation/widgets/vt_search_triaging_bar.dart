import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/presentation/pages/vt_profile_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTSearchTriagingBar extends ConsumerWidget {
  const VTSearchTriagingBar({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = Responsive.isMobile(context);
    if (isMobile) {
      return Row(
        children: [
          const SizedBox(width: AppSize.ks),
          Image.asset(
            AppImages.logo,
            width: Responsive.isMobile(context) ? 150 : 250,
            colorBlendMode: BlendMode.srcIn,
            color: AppColor.white,
          ),
          const Spacer(),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.search,
              color: AppColor.white,
            ),
          ),
          InkWell(
            onTap: onPressed,
            child: AppNameAvatar(
              name: ref.watch(globalVTProvider).name,
              radius: 20,
            ),
          ),
        ],
      );
    }

    return Row(
      children: [
        const SizedBox(width: AppSize.km),
        Image.asset(
          AppImages.logo,
          width: Responsive.isMobile(context) ? 150 : 250,
          colorBlendMode: BlendMode.srcIn,
          color: AppColor.white,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: onPressed,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    const Icon(
                      Icons.search,
                      color: AppColor.primary,
                    ),
                    const SizedBox(width: 16),
                    Flexible(
                      child: Text(
                        "Search by name, mobile number, or assessment ID",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VTProfilePage(),
              ),
            );
          },
          child: AppNameAvatar(
            name: ref.watch(globalVTProvider).name,
            radius: 20,
          ),
        ),
      ],
    );
  }
}
