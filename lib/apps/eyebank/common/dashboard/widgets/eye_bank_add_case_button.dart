import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/modals/form_preview_sheet.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var caseCreationProvider = FutureProvider<String>((ref) async {
  try {
    return await rootBundle.loadString(
      'assets/local_json/survey_js_final.json',
    );
  } catch (e) {
    logger.f('Error Converting json: $e');
    rethrow;
  }
});

class AddCaseButton extends ConsumerWidget {
  const AddCaseButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(caseCreationProvider).when(
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
              'Add Case',
              style: applyRobotoFont(
                color: AppColor.black,
                fontSize: 12,
              ),
            ),
          ),
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Text(
            'Error: $error',
            style: applyRobotoFont(
              color: AppColor.black,
              fontSize: 12,
            ),
          ),
        );
  }
}
