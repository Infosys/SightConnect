import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/patient_clinical_test_reports.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/patient_self_test_reports.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PatientSelfAndClinicalReportPage extends StatelessWidget {
  const PatientSelfAndClinicalReportPage({
    super.key,
    required this.encounterId,
  });
  final int encounterId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Patient Assessment and Test"),
      ),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              TabBar(
                labelStyle: applyFiraSansFont(
                  color: AppColor.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelStyle: applyFiraSansFont(
                  color: AppColor.grey,
                  fontSize: 16,
                ),
                tabs: const [
                  Tab(
                    text: "Self Test Report",
                  ),
                  Tab(
                    text: "Clinical Report",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    PatientSelfTestReports(encounterId: encounterId),
                    PatientClinicalTestReports(encounterId: encounterId)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
