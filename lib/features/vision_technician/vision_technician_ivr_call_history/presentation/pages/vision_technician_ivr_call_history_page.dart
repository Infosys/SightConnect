import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/widgets/ivr_call_history_search_bar.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/widgets/ivr_call_history_table_view.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class VisionTechnicianIvrCallHistory extends StatelessWidget {
  const VisionTechnicianIvrCallHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(
          // backgroundColor: Colors.red,
          title: Row(
            children: [
              Text(
                "IVR Call History",
                style: applyFiraSansFont(
                    fontWeight: FontWeight.w500, fontSize: 16),
              ),
              SizedBox(
                width: AppSize.klwidth,
              ),
              const IvrCallHistorySearchBarVT(readOnly: false),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppSize.klpadding),
          child: IvrCallHistoryTableView(),
        ));
  }
}
