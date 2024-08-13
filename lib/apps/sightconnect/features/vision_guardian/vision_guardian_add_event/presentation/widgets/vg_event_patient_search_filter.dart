import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_event_details_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_patients_tab.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_search_bar.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianSearchPatient extends ConsumerWidget {
  const VisionGuardianSearchPatient(
      {super.key, required this.search, this.eventDetails});
  final String search;
  final VisionGuardianEventModel? eventDetails;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              ref.read(addEventDetailsProvider).resetSearchFeild();
              ref.read(addEventDetailsProvider).setSearchPatientList("");
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VisionGuardianEventDetailsPage(
                          eventDetails: eventDetails!)),
                  (route) => false);
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
      ),
    );
  }
}
