import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/presentation/provider/eb_case_time_line_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/presentation/widget/case_time_line_widget.dart';
import 'package:eye_care_for_all/apps/eyebank/features/screening/presentation/pages/eb_screening_page.dart';
import 'package:eye_care_for_all/shared/widgets/desktop_clipper.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EbCaseTimeLinePage extends ConsumerWidget {
  final String caseID;
  const EbCaseTimeLinePage({
    super.key,
    required this.caseID,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Case Timeline'),
      ),
      body: DesktopClipper(
        widget: ref.watch(ebCaseTimeLineProvider(caseID)).when(
              data: (data) {
                return CaseTimeLineWidget(
                  caseTimeLine: data,
                  onCaseSelected: (event) =>
                      _handleCaseSelected(context, event),
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error, stackTrace) => Center(
                child: Text('Error: $error'),
              ),
            ),
      ),
    );
  }

  _handleCaseSelected(BuildContext context, dynamic event) {
    final String name = event['serviceRequestCode'];
    if (name == 'PRELIMINARY ASSESSMENT') {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const EbScreeningPage(
            caseID: '123',
            title: 'Screening',
          ),
        ),
      );
    }
  }
}
