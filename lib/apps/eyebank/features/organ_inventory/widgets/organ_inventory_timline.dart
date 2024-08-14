import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/models/eb_time_line_case_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/presentation/widget/case_time_line_widget.dart';
import 'package:eye_care_for_all/apps/eyebank/features/organ_inventory/providers/organ_timeline_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/features/screening/presentation/pages/eb_screening_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrganInventoryTimline extends ConsumerWidget {
  const OrganInventoryTimline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tissue #123"),
      ),
      body: ref.watch(organInventoryTimlineProvider("")).when(
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
    );
  }

  _handleCaseSelected(BuildContext context, EBTimeLineCaseModel event) {
    final navigator = Navigator.of(context);
    navigator.push(
      MaterialPageRoute(
        builder: (context) => EbScreeningPage(
          title: event.stageName,
          caseID: '',
        ),
      ),
    );
    // switch (event.stageName) {
    //   case CaseTimeLineSteps.INTIMATION:

    //     break;
    //   default:
    //     break;
    // }
  }
}
