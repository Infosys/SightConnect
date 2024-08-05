import 'package:eye_care_for_all/apps/eyebank/features/case_register/presentation/widget/add_case_button.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_register/presentation/widget/case_register_table.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class EBCaseRegisterPage extends StatelessWidget {
  const EBCaseRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!Responsive.isMobile(context)) const AddCaseButton(),
        const SizedBox(height: 8),
        const Expanded(
          child: SingleChildScrollView(
            child: CaseRegisterTable(),
          ),
        ),
      ],
    );
  }
}
