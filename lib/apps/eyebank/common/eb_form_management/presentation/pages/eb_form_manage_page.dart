import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/data/models/eb_form_action_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/presentation/provider/eb_form_manage_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/provider/eb_case_time_line_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_eb_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EBFormManagePage extends ConsumerWidget {
  final String title;
  final String? stageName;
  final String? stageVersion;
  final String? serviceRequestId;
  final String? encounterId;
  final String? timelineName;
  final String? timelineVersion;
  final EBStatus? status;

  const EBFormManagePage({
    super.key,
    this.title = "",
    required this.stageName,
    required this.stageVersion,
    required this.serviceRequestId,
    required this.encounterId,
    required this.timelineName,
    required this.timelineVersion,
    this.status,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // logger.f({'stageName': stageName, 'stageVersion': stageVersion});
    if (stageName == null) {
      return const Scaffold(
        body: Center(
          child: Text('Stage name is required'),
        ),
      );
    }
    return SafeArea(
      child: Scaffold(
        body: ref
            .watch(
              ebFormManageProvider(
                EbStageParams(
                  stageName: stageName,
                  stageVersion: stageVersion,
                  encounterId: encounterId,
                  serviceRequestId: serviceRequestId,
                ),
              ),
            )
            .when(
              data: (json) {
                final data = json.displayFormData;
                final initialVal = json.formData;

                return DynamicFormPage(
                  readOnly: _openInReadMode(status),
                  canPop: _openInReadMode(status) ? false : true,
                  enableDraft: true,
                  json: data,
                  initialValue: initialVal,
                  onSubmit: (data, mode) {
                    _handleSubmit(
                      ref: ref,
                      stageVersion: stageVersion,
                      encounterId: encounterId,
                      serviceRequestId: serviceRequestId,
                      stageName: stageName,
                      data: data,
                      mode: mode,
                      timelineName: timelineName,
                      timelineVersion: timelineVersion,
                      context: context,
                    );
                  },
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

  _openInReadMode(EBStatus? status) {
    if (status == EBStatus.ACCEPTED) {
      return true;
    } else {
      return false;
    }
  }

  void _handleSubmit({
    required WidgetRef ref,
    required String? stageName,
    required String? stageVersion,
    required String? serviceRequestId,
    required String? encounterId,
    required Map<String, dynamic>? data,
    required DynamicFormSavingType mode,
    required String? timelineName,
    required String? timelineVersion,
    required BuildContext context,
  }) async {
    logger.d('FORMDATA: $data');

    try {
      final profile = ref.read(globalEBProvider);
      final response = await ref.read(ebSaveOrDraftProvider).saveOrDraft(
            ebFormActionRequestModel: EBFormActionRequestModel(
              timelineName: timelineName,
              timelineVersion: timelineVersion,
              eBformData: data,
              performerId: profile.userId.toString(),
              performerRole: PersistentAuthStateService.authState.activeRole,
            ),
            serviceRequestId: serviceRequestId,
            stageName: stageName,
            stageVersion: stageVersion,
            encounterId: encounterId,
            action: mode,
            formData: data,
          );
      response.fold(
        (failure) {
          EyeBankErrorCard.showErrorToast(failure, context);
        },
        (success) {
          ref.invalidate(ebCaseTimeLineProvider);
          final navigator = Navigator.of(context);
          navigator.pop();
          Fluttertoast.showToast(
            msg: 'Form saved successfully',
          );
        },
      );
    } catch (e) {
      logger.f('Error: $e');
      Fluttertoast.showToast(
        msg: 'Failed to save form',
      );
    }
  }
}
