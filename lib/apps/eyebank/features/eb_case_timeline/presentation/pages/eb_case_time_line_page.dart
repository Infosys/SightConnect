import 'dart:developer';

import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/presentation/pages/eb_form_manage_page.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_timeline_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/provider/eb_case_time_line_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/widget/case_time_line_widget.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/widgets/desktop_clipper.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EbCaseTimeLinePage extends ConsumerWidget {
  final int encounterID;
  final String timelineVersion;
  const EbCaseTimeLinePage({
    super.key,
    required this.encounterID,
    required this.timelineVersion,
  });

  static final Map<String, dynamic> _params = {
    'encounterID': "1",
    'timelineVersion': "1",
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Case Timeline'),
      ),
      body: ref.watch(ebCaseTimeLineProvider(_params)).when(
            data: (data) {
              log('data: $data');
              final List<EBTimelineEntity> caseTimeLine = data;
              return DesktopClipper(
                widget: CaseTimeLineWidget(
                  caseTimeLine: caseTimeLine,
                  onCaseSelected: (EBTimelineEntity event) =>
                      _handleCaseSelected(context, event),
                ),
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

  _handleCaseSelected(BuildContext context, EBTimelineEntity event) {
    final navigator = Navigator.of(context);
    navigator.push(
      MaterialPageRoute(
        builder: (context) => EBFormManagePage(
          title: event.stageName!,
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
