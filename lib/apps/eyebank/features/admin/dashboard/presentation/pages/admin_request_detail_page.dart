import 'package:eye_care_for_all/apps/eyebank/features/admin/dashboard/presentation/widgets/admin_doctor_details_card.dart';
import 'package:eye_care_for_all/apps/eyebank/features/admin/dashboard/presentation/widgets/admin_donor_table.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AdminRequestDetailPage extends StatelessWidget {
  const AdminRequestDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Requests - REQ-RIEB2024-0035'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Doctor/Requestor',
                style: applyFiraSansFont(fontSize: 18),
              ),
              const SizedBox(height: 16),
              const AdminDoctorDetailsCard(),
              const SizedBox(height: 16),
              const AdminDonorTable(),
            ],
          ),
        ),
      ),
    );
  }
}
