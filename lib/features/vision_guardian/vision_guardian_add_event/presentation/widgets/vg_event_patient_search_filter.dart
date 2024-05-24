import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_patients_tab.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_search_bar.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianSearchPatient extends ConsumerWidget {
  const VisionGuardianSearchPatient({super.key, required this.search});
  final String search;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            ref.read(addEventDetailsProvider).resetSearchFeild();
            ref.read(addEventDetailsProvider).setSearchPatientList("");
            Navigator.pop(context);
          },
        ),
        toolbarHeight: AppSize.kl * 3,
        title: const VisionGuardianEventSearchBar(
            readOnly: false, searchType: "patient"),
        actions: const [],
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: EventPatientsTab(patientsType: "search"),
        ),
      ),
    );
  }
}
