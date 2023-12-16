import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_dashboard/presentation/provider/vision_technician_dashboard_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/widgets/ivr_call_history_search_bar.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/widgets/ivr_call_history_table_view.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianIvrCallHistory extends ConsumerWidget {
  const VisionTechnicianIvrCallHistory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppbar(
        // backgroundColor: Colors.red,
        leadingIcon: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            ref.read(visionTechnicianDashboardProvider).changeIndex(0);
          },
        ),
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
      body:const SingleChildScrollView(
        child:  Padding(
          padding: EdgeInsets.all(AppSize.kmpadding),
          child:  IvrCallHistoryTableView(),),
      ),
    );
  }
}
