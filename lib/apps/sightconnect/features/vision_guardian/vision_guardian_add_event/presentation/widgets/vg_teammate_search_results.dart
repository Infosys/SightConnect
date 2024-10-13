/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_member_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_empty_result_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_teammates_data_cards.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VgEventTeammateSearchResult extends ConsumerWidget {
  const VgEventTeammateSearchResult({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(visionGuadianAddMemberProvider);
    List teammates = model.searchResults;
    var loading = model.loading;

    if (loading) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }
    if (teammates.isEmpty) {
      return const VisionGuardianEmptyResultCard(type: "teammates");
    }

    return Padding(
      padding: const EdgeInsets.all(AppSize.km),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        ...teammates.map((e) {
          return TeammatesDataCards(data: e[0], type: "Search");
        })
      ]),
    );
  }
}
