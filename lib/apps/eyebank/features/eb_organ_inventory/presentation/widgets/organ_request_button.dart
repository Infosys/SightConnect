import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/provider/eb_case_record_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/modals/form_preview_sheet.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrganRequestButton extends ConsumerWidget {
  const OrganRequestButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(ebCaseCreationProvider).when(
          data: (json) => _buildContent(context, json),
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => _buildErrorContent(context, ref, error),
        );
  }

  Widget _buildContent(BuildContext context, dynamic json) {
    return FloatingActionButton.extended(
      onPressed: () => _showFormSheet(context, json),
      icon: const Icon(Icons.add),
      label: _buildButtonLabel('Add Request'),
    );
  }

  Widget _buildErrorContent(BuildContext context, WidgetRef ref, Object error) {
    Fluttertoast.showToast(msg: 'Error Loading Case Registration JSON');
    return FloatingActionButton.extended(
      onPressed: () => ref.invalidate(ebCaseCreationProvider),
      icon: const Icon(Icons.refresh),
      label: _buildButtonLabel('Retry'),
    );
  }

  void _showFormSheet(BuildContext context, dynamic json) {
    showCustomWoltSheet(
      context,
      DynamicFormPage(
        json: json,
        backButtonIcon: Icons.close,
      ),
    );
  }

  Text _buildButtonLabel(String text) {
    return Text(
      text,
      style: applyRobotoFont(
        fontSize: 12,
        color: Colors.white,
      ),
    );
  }
}
