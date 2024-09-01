import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/provider/eb_case_record_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_submit_form_data_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/respositories/eb_repository_impl.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/modals/form_preview_sheet.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_eb_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddCaseButton extends StatelessWidget {
  const AddCaseButton({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return _CreateNewCaseSection(
        onPressed: () => _handleButtonPress(context),
        buttonTxt: 'Create Case',
      );
    } else {
      return FloatingActionButton.extended(
        onPressed: () => _handleButtonPress(context),
        icon: const Icon(Icons.add),
        label: Text(
          'Create Case',
          style: applyRobotoFont(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _handleButtonPress(BuildContext context) {
    showCustomWoltSheet(
      context,
      Consumer(
        builder: (context, ref, child) {
          final asyncValue = ref.watch(ebIntimationFormProvider);

          return asyncValue.when(
            data: (intimationData) {
              return DynamicFormPage(
                json: intimationData.stage,
                backButtonIcon: Icons.close,
                onSubmit: (formResponse, mode) async {
                  try {
                    logger.f(formResponse);
                    final repo = ref.read(ebRepositoryProvider);
                    final profile = ref.read(globalEBProvider);
                    // final performId = profile.userId.toString();
                    // final performRole = PersistentAuthStateService.authState.activeRole;

                    const performId = "1223";
                    const performRole = "TECHNICIAN";

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
                      EBStageName.DEATH_INTIMATION.value,
                    );
                    res.fold((l) {
                      logger.e(l);
                      EyeBankErrorCard.showErrorToast(l, context);
                    }, (r) {
                      // invalidating recent cases provider to refresh the list
                      ref.invalidate(ebGetRecordsProvider);
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
              logger.e(error);
              String msg = "";
              if (error is EBFailure) {
                msg = error.errorMessage;
              } else {
                msg = "An error occurred. Please try again later.";
              }
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(msg),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        ref.invalidate(ebIntimationFormProvider);
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _CreateNewCaseSection extends StatelessWidget {
  const _CreateNewCaseSection({
    required this.onPressed,
    required this.buttonTxt,
  });

  final VoidCallback onPressed;
  final String buttonTxt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Create New Case',
            style: applyFiraSansFont(
              fontSize: 16,
            ),
          ),
          ElevatedButton.icon(
            style: kIsWeb
                ? ElevatedButton.styleFrom(padding: const EdgeInsets.all(18))
                : null,
            onPressed: onPressed,
            label: Text(
              buttonTxt,
              style: applyRobotoFont(
                color: AppColor.white,
                fontSize: 12,
              ),
            ),
            icon: const Icon(
              Icons.add,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
