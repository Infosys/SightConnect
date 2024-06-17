import 'package:eye_care_for_all/features/admin/dashboard/presentation/widgets/admin_home_analytics.dart';
import 'package:eye_care_for_all/features/admin/dashboard/presentation/widgets/admin_request_table.dart';
import 'package:eye_care_for_all/features/admin/dashboard/presentation/widgets/admin_return_request_table.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class AdminReturnRequestPage extends StatelessWidget {
  const AdminReturnRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) const AdminHomeAnalytics(),
            const Expanded(
                child: Padding(
              padding: EdgeInsets.all(12.0),
              child: AdminReturnRequestTable(),
            )),
          ],
        ),
      ),
    );
  }
}
