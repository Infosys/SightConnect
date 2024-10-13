/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/pages/pulsar_effect_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeSearchBar extends ConsumerWidget {
  final VoidCallback onSearchButtonPressed;
  final VoidCallback onProfileButtonPressed;
  final String selectedProfileName;
  final bool isAvailabilityVisible;
  final bool isAvailable;
  final String searchText;

  const HomeSearchBar({
    super.key,
    required this.onSearchButtonPressed,
    required this.onProfileButtonPressed,
    required this.selectedProfileName,
    required this.isAvailabilityVisible,
    required this.isAvailable,
    required this.searchText,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = Responsive.isMobile(context);

    return Row(
      children: [
        const SizedBox(width: AppSize.ks),
        Image.asset(
          AppImages.logo,
          width: Responsive.isMobile(context) ? 150 : 210,
          colorBlendMode: BlendMode.srcIn,
          color: AppColor.white,
        ),
        isMobile ? const Spacer() : const SizedBox(width: AppSize.ks),
        isMobile
            ? IconButton(
                onPressed: onSearchButtonPressed,
                icon: const Icon(
                  Icons.search,
                  color: AppColor.white,
                ),
              )
            : Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: InkWell(
                    onTap: onSearchButtonPressed,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            color: AppColor.primary,
                          ),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              searchText,
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
        isAvailabilityVisible
            ? InkWell(
                onTap: onProfileButtonPressed,
                child: Badge(
                  offset: Offset(isMobile ? -1 : -4, 0),
                  backgroundColor: Colors.transparent,
                  label: Pulsar(
                    child: Container(
                      padding: EdgeInsets.all(isMobile ? 6 : 8),
                      decoration: BoxDecoration(
                        color:
                            isAvailable ? AppColor.altGreen : AppColor.darkGrey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  child: AppNameAvatar(
                    name: ref.read(globalVTProvider).name,
                    radius: isMobile ? 20 : 24,
                    fontSize: isMobile ? 16 : 20,
                  ),
                ),
              )
            : AppNameAvatar(
                name: selectedProfileName,
                radius: isMobile ? 20 : 24,
                fontSize: isMobile ? 16 : 20,
              ),
      ],
    );
  }
}
