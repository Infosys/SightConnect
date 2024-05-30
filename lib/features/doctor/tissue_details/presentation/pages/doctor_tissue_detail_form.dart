import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/cornea_evaluation_section.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/donor_details_section.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/eye_bank_details_card.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/medical_summary_section.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/pathology_details_section.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/serology_section.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class DoctorTissueDetailForm extends StatelessWidget {
  const DoctorTissueDetailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tissue Detail Form'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.download_sharp,
              color: AppColor.grey,
            ),
            onPressed: () {},
          ),
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
            children: [
              EyeBankDetailsCard(),
              DonorDetailsSection(),
              MedicalSummarySection(),
              PathologyDetailsSection(),
              CorneaEvaluationSection(),
              SerologySection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Accept'),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Reject'),
            ),
          ),
          Expanded(
              flex: Responsive.isMobile(context) ? 0 : 4,
              child: const SizedBox.shrink())
        ],
      ),
    );
  }
}
