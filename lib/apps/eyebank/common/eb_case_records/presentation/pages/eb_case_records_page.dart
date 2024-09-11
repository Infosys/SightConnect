import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/mobile_case_search_widget.dart';
import 'package:flutter/material.dart';

class EBCaseRecordsPage extends StatelessWidget {
  const EBCaseRecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Recipients Records"),
        ),
        body: () {
          return const MobileCaseSearchWidget();
          // return const WebCaseSearchWidget();
        }(),
      ),
    );
  }
}
