import 'package:eye_care_for_all/apps/eyebank/features/case_search/presentation/widget/case_search_widget.dart';
import 'package:flutter/material.dart';

class EbCaseSearchPage extends StatelessWidget {
  const EbCaseSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Case Records'),
        ),
        body: const CaseSearchWidget(),
      ),
    );
  }
}
