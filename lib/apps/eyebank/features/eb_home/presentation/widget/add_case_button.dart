import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/provider/eb_case_record_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_submit_form_data_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/respositories/eb_repository_impl.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/modals/form_preview_sheet.dart';
import 'package:eye_care_for_all/main.dart';
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
            data: (json) {
              return DynamicFormPage(
                json: json,
                backButtonIcon: Icons.close,
                onSubmit: (data, mode) async {
                  try {
                    final repo = ref.read(ebRepositoryProvider);
                    final submitData = EBSubmitFormDataRequestModel(
                      formData: data,
                      timelineName: "CORNEA_DONATION",
                      timelineVersion: "0.0.1",
                      // performerId: "902",
                      // performerRole: "TECHNICIAN",
                    );
                    logger.f(submitData.toJson());
                    final res = await repo.saveIntimationForm(submitData);

                    res.fold((l) {
                      logger.e(l);
                      Fluttertoast.showToast(msg: l.errorMessage);
                    }, (r) {
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
                      ref.invalidate(ebIntimationFormProvider);
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
            style: applyRobotoFont(
              fontSize: 12,
            ),
          ),
          ElevatedButton.icon(
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
