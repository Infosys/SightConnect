import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/mobile_case_search_widget.dart';
import 'package:flutter/material.dart';

class EBCaseRecordsPage extends StatelessWidget {
  const EBCaseRecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Case Records'),
        ),
        body: () {
          return const MobileCaseSearchWidget();

          // return WebCaseSearchWidget(
          //   data: data,
          //   pageSize: 10,
          //   searchFunction: searchFunction,
          //   onTap: (item) => _onTap(context, item),
          // );
        }(),
      ),
    );
  }
}
