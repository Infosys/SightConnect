import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';

class EbScreeningPage extends StatelessWidget {
  final String title;
  final String caseID;

  const EbScreeningPage({
    super.key,
    required this.title,
    required this.caseID,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screening CaseID : $caseID'),
      ),
      body: DynamicFormPage(
        json: '',
        onSubmit: (value) {
          logger.i(value);
        },
      ),
    );
  }
}
