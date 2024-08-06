import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/apps/eyebank/features/screening/presentation/provider/eb_screening_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/modals/case_close_sheet.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/modals/form_preview_sheet.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/desktop_clipper.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EbScreeningPage extends ConsumerWidget {
  final String title;
  final String caseID;

  const EbScreeningPage({
    super.key,
    required this.title,
    required this.caseID,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: AppBar(
            title: Row(
              children: [
                Text(
                  "Case ID: $caseID",
                  style: applyRobotoFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () {
                    showCustomWoltSheet(context, const CaseCloseSheet());
                  },
                  style: TextButton.styleFrom(foregroundColor: AppColor.red),
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
            ),
          ),
        ),
        body: DesktopClipper(
          widget: ref.watch(ebScreeningProvider).when(
                data: (json) {
                  return DynamicFormPage(json: json);
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
