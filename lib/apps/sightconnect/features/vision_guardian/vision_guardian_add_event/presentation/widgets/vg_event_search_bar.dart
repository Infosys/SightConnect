/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_member_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianEventSearchBar extends ConsumerWidget {
  const VisionGuardianEventSearchBar(
      {super.key, required this.readOnly, required this.searchType});
  final bool readOnly;
  final String searchType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(addEventDetailsProvider).resetSearchFeild();
    final loc = context.loc!;
    return TextField(
      readOnly: readOnly,
      controller: ref.read(addEventDetailsProvider).searchController,
      onChanged: (data) {
        if (searchType == "teammate") {
          ref.read(visionGuadianAddMemberProvider).setSearchTeammateList(data);
        } else if (searchType == "patient") {
          ref.read(addEventDetailsProvider).setSearchPatientList(data);
        }
      },
      onTap: () {
        if (readOnly) {}
      },
      onSubmitted: (value) {
        if (searchType == "event") {
          ref.read(addEventDetailsProvider).setSearchEventList(value);
        }
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(
          CupertinoIcons.search,
          color: AppColor.primary,
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
        hintText: loc.vgSearchByIdName(searchType),
        hintStyle: applyRobotoFont(
          color: AppColor.grey,
          fontSize: 14,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primary),
          borderRadius: BorderRadius.circular(AppSize.kl * 3),
        ),
      ),
    );
  }
}
