import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/enums/enums.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/models/eb_time_line_case_model.dart';
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
              data: (List<EBTimeLineCaseModel> data) {
                return CaseTimeLineWidget(
                  caseTimeLine: data,
                  onCaseSelected: (EBTimeLineCaseModel event) =>
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

  _handleCaseSelected(BuildContext context, EBTimeLineCaseModel event) {
    final navigator = Navigator.of(context);
    switch (event.stageName) {
      case CaseTimeLineSteps.INTIMATION:
        navigator.push(
          MaterialPageRoute(
            builder: (context) => EbScreeningPage(
              title: event.stageName.name,
              caseID: '',
            ),
          ),
        );
        break;
      default:
        break;
    }
  }
}
