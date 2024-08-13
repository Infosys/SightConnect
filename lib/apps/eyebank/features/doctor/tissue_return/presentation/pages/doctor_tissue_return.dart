import 'package:eye_care_for_all/apps/eyebank/features/doctor/tissue_return/presentation/widgets/final_approval_section.dart';
import 'package:eye_care_for_all/apps/eyebank/features/doctor/tissue_return/presentation/widgets/reevaluation_section.dart';
import 'package:eye_care_for_all/apps/eyebank/features/doctor/tissue_return/presentation/widgets/tissue_receipt_checklist.dart';
import 'package:eye_care_for_all/apps/eyebank/features/doctor/tissue_return/presentation/widgets/tissue_return_trId.dart';
import 'package:eye_care_for_all/apps/eyebank/features/doctor/tissue_return/presentation/widgets/tissue_tracking.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class DoctorTissueReturn extends StatelessWidget {
  const DoctorTissueReturn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.scaffold,
        appBar: AppBar(
          title: const Text('Tissue Return'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: AppColor.grey,
              ),
            ),
          ],
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TissueReturnDashboard(),
                SizedBox(height: 10),
                TissueTrackingSection(),
                TissueReceiptChecklist(),
                ReevaluationSection(),
                FinalApproval(),
                SizedBox(height: 10),
                Text(
                    '*Note: Re-evaluation has to be done if the tissue is returned to the Eye Bank after 24 hours of its distribution A copy of this form must accompany the tissue at the time of redistribution.'),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: Responsive.isMobile(context)
              ? const EdgeInsets.all(AppSize.km)
              : EdgeInsets.fromLTRB(AppSize.km, AppSize.km,
                  AppSize.width(context) / 1.1, AppSize.km),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Submit'),
          ),
        ));
  }
}
