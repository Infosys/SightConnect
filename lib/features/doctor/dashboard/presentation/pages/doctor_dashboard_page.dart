import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/doctor/adverse_reaction_report/presentation/pages/adverse_reaction_report_page.dart';
import 'package:eye_care_for_all/features/doctor/post_acceptance_details/presentation/pages/post_acceptance_details_page.dart';
import 'package:eye_care_for_all/features/doctor/surgery/presentation/pages/doctor_surgery_details_page.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/pages/doctor_tissue_detail_form.dart';
import 'package:flutter/material.dart';

class DoctorDashBoardPage extends StatelessWidget {
  const DoctorDashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            TabBar(
              labelColor: AppColor.primary,
              unselectedLabelColor: AppColor.grey,
              indicatorColor: AppColor.primary,
              tabs: [
                Tab(
                  text: 'Tissue Request',
                ),
                Tab(
                  text: 'Tissue Details',
                ),
                Tab(
                  text: 'Post Acceptance Details',
                ),
                Tab(
                  text: 'Adverse Reaction Report',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  DoctorSurgeryDetailsPage(),
                  DoctorTissueDetailForm(),
                  PostAcceptanceDetailsPage(),
                  AdverseReactionReportPage()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
