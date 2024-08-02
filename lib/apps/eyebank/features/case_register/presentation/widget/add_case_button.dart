import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_register/presentation/provider/eb_case_register_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/modals/form_preview_sheet.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddCaseButton extends ConsumerWidget {
  const AddCaseButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(ebCaseCreationProvider).when(
          data: (json) => OutlinedButton(
            onPressed: () async {
              showCustomWoltSheet(
                context,
                DynamicFormPage(
                  json: json,
                ),
              );
            },
            child: Text(
              'Create New Case',
              style: applyRobotoFont(
                color: AppColor.black,
                fontSize: 12,
              ),
            ),
          ),
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) {
            Fluttertoast.showToast(msg: 'Error Loading Case Registration JSON');
            return OutlinedButton.icon(
              onPressed: () {
                ref.invalidate(ebCaseCreationProvider);
              },
              icon: const Icon(Icons.refresh),
              label: Text(
                'Retry',
                style: applyRobotoFont(
                  color: AppColor.black,
                  fontSize: 12,
                ),
              ),
            );
          },
        );
  }
}
