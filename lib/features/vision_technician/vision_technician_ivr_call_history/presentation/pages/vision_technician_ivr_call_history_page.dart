import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/widgets/ivr_call_history_search_bar.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/widgets/ivr_call_history_table_view.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/ivr_call_history_search_helper_provider.dart';

class VisionTechnicianIvrCallHistory extends ConsumerWidget {
  const VisionTechnicianIvrCallHistory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Row(
          children: [
            Text(
              "IVR Call History",
              style:
                  applyFiraSansFont(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            const SizedBox(
              width: AppSize.klwidth,
            ),
            const IvrCallHistorySearchBarVT(readOnly: false),
          ],
        ),
      ),
      body: ref.watch(getIvrCallHistoryDetailsProvider).when(
            data: (data) {
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(AppSize.kmpadding),
                  child: IvrCallHistoryTableView(
                    ivrCallHistoryDetails: data,
                  ),
                ),
              );
              return null;
            },
            error: (e, s) {
              return const Center(
                child: Text("No Data available"),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}
