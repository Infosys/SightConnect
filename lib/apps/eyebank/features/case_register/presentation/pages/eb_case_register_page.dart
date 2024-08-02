import 'package:eye_care_for_all/apps/eyebank/features/case_register/presentation/widget/add_case_button.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_register/presentation/widget/case_register_table.dart';
import 'package:flutter/material.dart';

class EBCaseRegisterPage extends StatelessWidget {
  const EBCaseRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AddCaseButton(),
        SizedBox(height: 8),
        Expanded(child: SingleChildScrollView(child: CaseRegisterTable())),
      ],
    );
  }
}
