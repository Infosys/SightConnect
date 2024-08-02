import 'package:eye_care_for_all/apps/eyebank/common/dashboard/widgets/eye_bank_add_case_button.dart';
import 'package:eye_care_for_all/apps/eyebank/features/admin/dashboard/presentation/widgets/admin_donor_table.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class EyeBankDashboardBody extends StatelessWidget {
  const EyeBankDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cases',
                    style: applyRobotoFont(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const AddCaseButton()
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(),
              const SizedBox(
                height: 16,
              ),
              const AdminDonorTable()
            ],
          ),
        ),
      ),
    );
  }
}
