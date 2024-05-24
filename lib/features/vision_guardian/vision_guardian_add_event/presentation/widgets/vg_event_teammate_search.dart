import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_member_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_search_bar.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_teammate_search_results.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianSearchTeammate extends ConsumerWidget {
  const VisionGuardianSearchTeammate({super.key, required this.search});
  final String search;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            ref.read(visionGuadianAddMemberProvider).resetSearch();
            Navigator.pop(context);
          },
        ),
        toolbarHeight: AppSize.kl * 3,
        title: const VisionGuardianEventSearchBar(
            readOnly: false, searchType: "teammate"),
        actions: const [],
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: VgEventTeammateSearchResult(),
        ),
      ),
    );
  }
}
