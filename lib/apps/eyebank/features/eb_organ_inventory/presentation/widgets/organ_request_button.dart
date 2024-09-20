import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_submit_form_data_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/respositories/eb_repository_impl.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/modals/form_preview_sheet.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_eb_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/organ_timeline_provider.dart';

class OrganRequestButton extends StatelessWidget {
  const OrganRequestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => _handleButtonPress(context),
      icon: const Icon(Icons.add),
      label: Text(
        'Add Request',
        style: applyRobotoFont(
          fontSize: 12,
          color: Colors.white,
        ),
      ),
    );
  }

  void _handleButtonPress(BuildContext context) {
    showCustomWoltSheet(
      context,
      Consumer(
        builder: (context, ref, child) {
          final asyncValue = ref.watch(ebAddRequestProvider);

          return asyncValue.when(
            data: (intimationData) {
              return DynamicFormPage(
                title: intimationData.name ?? '',
                json: intimationData.stage,
                backButtonIcon: Icons.close,
                overrideDio: ref.watch(dioProvider),
                onSubmit: (formResponse, mode) async {
                  try {
                    final repo = ref.read(ebRepositoryProvider);
                    final profile = ref.read(globalEBProvider);
                    final performId = profile.userId.toString();
                    final performRole =
                        PersistentAuthStateService.authState.activeRole;
                    // const performId = "1223";
                    // const performRole = "TECHNICIAN";

                    final submitData = EBSubmitFormDataRequestModel(
                      formData: formResponse,
                      timelineName: intimationData.timelineName,
                      timelineVersion: intimationData.timelineVersion,
                      performerId: performId,
                      performerRole: performRole,
                    );
                    logger.f(submitData.toJson());
                    final res = await repo.saveIntimationForm(
                      submitData,
                      intimationData.stageVersion,
                      intimationData.stageName,
                    );
                    res.fold((l) {
                      logger.e(l);
                      EyeBankErrorCard.showErrorToast(l, context);
                    }, (r) {
                      // invalidating recent cases provider to refresh the list
                      ref.invalidate(organRequestOverviewProvider);
                      Navigator.pop(context);
                      Fluttertoast.showToast(msg: 'Case created successfully');
                    });
                  } catch (e) {
                    logger.e(e);
                  }
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Error loading case registration JSON'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      ref.invalidate(ebAddRequestProvider);
                    },
                    child: const Text('Retry'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
