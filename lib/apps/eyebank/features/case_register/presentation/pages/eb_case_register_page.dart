import 'package:eye_care_for_all/apps/eyebank/features/case_register/presentation/widget/add_case_button.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_register/presentation/widget/case_register_table.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class EBCaseRegisterPage extends StatelessWidget {
  const EBCaseRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColor.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Case Registration',
                  style: applyRobotoFont(
                    color: AppColor.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const AddCaseButton()
              ],
            ),
          ),
          const SizedBox(height: 8),
          const CaseRegisterTable(),
        ],
      ),
    );
  }
}
