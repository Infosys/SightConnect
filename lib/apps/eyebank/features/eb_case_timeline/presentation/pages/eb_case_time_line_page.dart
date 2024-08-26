import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/presentation/pages/eb_form_manage_page.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_timeline_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/provider/eb_case_time_line_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/widget/case_time_line_widget.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/desktop_clipper.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EbCaseTimeLinePage extends ConsumerWidget {
  final String? encounterID;
  final String? timlineVersion;

  const EbCaseTimeLinePage({
    super.key,
    required this.encounterID,
    this.timlineVersion,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(ebCaseTimeLineProvider);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Case Timeline'),
          actions: [
            TextButton(
              onPressed: () {
                // showCustomWoltSheet(
                //   context,
                //   const EBRejectCaseSheet(
                //     caseID: 1234,
                //   ),
                // );

                Fluttertoast.showToast(msg: 'Soon to be implemented');
              },
              style: TextButton.styleFrom(
                foregroundColor: AppColor.red,
              ),
              child: Text(
                'Reject Case',
                style: applyRobotoFont(
                  fontSize: 14,
                  color: AppColor.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        body: ref
            .watch(ebCaseTimeLineProvider(
              EbTimlineParams(
                encounterID: encounterID,
                timelineVersion: timlineVersion,
              ),
            ))
            .when(
              data: (data) {
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
      ),
    );
  }

  _handleCaseSelected(BuildContext context, EBTimelineEntity event) {
    // if (event.serviceRequestId == null) {
    //   return;
    // }
    final navigator = Navigator.of(context);
    navigator.push(
      MaterialPageRoute(
        builder: (context) => EBFormManagePage(
          title: event.title ?? "",
          stageName: event.stage?.value,
          stageVersion: event.stageVersion,
          serviceRequestId: event.serviceRequestId,
          encounterId: encounterID,
          timelineName: event.timelineName,
          timelineVersion: event.timelineVersion,
          status: event.status,
        ),
      ),
    );
  }
}
