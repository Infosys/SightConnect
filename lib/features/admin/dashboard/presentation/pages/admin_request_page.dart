import 'package:eye_care_for_all/features/admin/dashboard/presentation/widgets/admin_home_analytics.dart';
import 'package:eye_care_for_all/features/admin/dashboard/presentation/widgets/admin_request_table.dart';
import 'package:eye_care_for_all/features/technician/dashboard/presentation/widgets/technician_home_analytics.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class AdminRequestPage extends StatelessWidget {
  const AdminRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: 
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             if (Responsive.isDesktop(context)) const AdminHomeAnalytics(),
            Expanded(child: AdminRequestTable()),
          ],
        ),
      ),
    );
  }
}