import 'package:dynamic_form/data/enums/enums.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/data/models/eb_form_action_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/presentation/pages/eb_form_manage_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/presentation/provider/eb_form_manage_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_timeline_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/widget/case_time_line_widget.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/presentation/modals/organ_tissue_search_delegate.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/presentation/providers/organ_timeline_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_eb_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrganInventoryTimline extends ConsumerWidget {
  final String? encounterID;
  final String? timlineVersion;

  const OrganInventoryTimline({
    super.key,
    required this.encounterID,
    this.timlineVersion,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(ebOrganTimelineProvider);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tissue Timeline'),
        ),
        body: ref
            .watch(ebOrganTimelineProvider(
              EbOrganTimlineParams(
                encounterID: encounterID,
                timelineVersion: timlineVersion,
              ),
            ))
            .when(
              data: (data) {
                final List<EBTimelineEntity> caseTimeLine = data;
                return CaseTimeLineWidget(
                  caseTimeLine: caseTimeLine,
                  onCaseSelected: (EBTimelineEntity event) =>
                      _handleCaseSelected(context, event, ref),
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

  void showAssignmentFlow(
    BuildContext context,
    String? serviceRequestId,
    EBTimelineEntity event,
    WidgetRef ref,
  ) async {
    final navigator = Navigator.of(context);
    navigator.push(
      MaterialPageRoute(
        builder: (context) {
          return OrganTissueSearchScreen(
            onAssignToRequest: (content) {
              _submitTissueForm(
                ref: ref,
                context: context,
                event: event,
                tissueId: content.tissueId,
              );
            },
          );
        },
      ),
    );
  }

  _handleCaseSelected(
    BuildContext context,
    EBTimelineEntity event,
    WidgetRef ref,
  ) {
    if (event.stage == EBStageName.CORNEA_ASSIGNMENT &&
        event.status != EBStatus.ACCEPTED) {
      showAssignmentFlow(context, event.serviceRequestId, event, ref);
      return;
    } else {
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

  _submitTissueForm({
    required WidgetRef ref,
    required BuildContext context,
    required EBTimelineEntity event,
    required String? tissueId,
  }) async {
    try {
      final profile = ref.read(globalEBProvider);
      // final performedID = profile.userId.toString();
      // final performedRole = PersistentAuthStateService.authState.activeRole;
      final Map<String, dynamic> data = {
        "corneaAssignment.tissueId": tissueId,
      };

      const performedID = "123";
      const performedRole = "TECHNICIAN";

      final response = await ref.read(ebSaveOrDraftProvider).saveOrDraft(
            ebFormActionRequestModel: EBFormActionRequestModel(
              timelineName: event.timelineName,
              timelineVersion: event.timelineVersion,
              eBformData: data,
              performerId: performedID,
              performerRole: performedRole,
            ),
            serviceRequestId: event.serviceRequestId,
            stageName: event.stage?.value,
            stageVersion: event.stageVersion,
            encounterId: encounterID,
            action: DynamicFormSavingType.SAVE,
            formData: data,
          );

      response.fold(
        (failure) {
          EyeBankErrorCard.showErrorToast(failure, context);
        },
        (success) {
          ref.invalidate(ebOrganTimelineProvider);
          final navigator = Navigator.of(context);
          navigator.pop();
          Fluttertoast.showToast(msg: 'Form saved successfully');
        },
      );
    } catch (e) {
      logger.f('Error: $e');
      Fluttertoast.showToast(msg: 'Failed to save form');
    }
  }
}
