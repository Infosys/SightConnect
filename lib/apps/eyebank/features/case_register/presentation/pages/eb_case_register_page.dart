import 'package:eye_care_for_all/apps/eyebank/features/case_register/presentation/widget/case_register_table.dart';
import 'package:flutter/material.dart';

class EBCaseRegisterPage extends StatelessWidget {
  const EBCaseRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Case Register'),
        // ),
        body: CaseRegisterTable(),
      ),
    );
  }
}

class Item {
  final String name;
  final String description;

  Item(this.name, this.description);
}
