import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/presentation/provider/eb_form_manage_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/modals/case_close_sheet.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/modals/form_exit_dialog.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/modals/form_preview_sheet.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/desktop_clipper.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EBFormManagePage extends ConsumerWidget {
  final String title;
  final String caseID;

  const EBFormManagePage({
    super.key,
    required this.title,
    required this.caseID,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: DesktopClipper(
          widget: ref.watch(ebFormManageProvider).when(
                data: (json) {
                  return DynamicFormPage(
                    json: json,
                    onPopInvoked: () {
                      showFormExitDialog(
                        context,
                        onSave: () {},
                      );
                    },
                    actions: [
                      TextButton.icon(
                        onPressed: () {
                          showCustomWoltSheet(
                            context,
                            const CaseCloseSheet(),
                          );
                        },
                        style:
                            TextButton.styleFrom(foregroundColor: AppColor.red),
                        label: Text(
                          'Reject',
                          style: applyRobotoFont(
                            fontSize: 14,
                            color: AppColor.red,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
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
      ),
    );
  }
}
