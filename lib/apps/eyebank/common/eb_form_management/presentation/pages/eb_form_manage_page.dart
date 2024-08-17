import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/presentation/provider/eb_form_manage_provider.dart';
import 'package:eye_care_for_all/shared/widgets/desktop_clipper.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
                    canPop: true,
                    enableDraft: true,
                    json: json,
                    onSubmit: (data, mode) {
                      _handleSubmit(ref, data, mode);
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
      ),
    );
  }

  void _handleSubmit(
    WidgetRef ref,
    Map<String, dynamic>? data,
    DynamicFormSavingType mode,
  ) async {
    try {
      final response = await ref.read(ebSaveOrDraftProvider).saveOrDraft(
            encounterId: 1234,
            action: mode,
            formData: data,
          );
      response.fold(
        (failure) {
          Fluttertoast.showToast(
            msg: failure.errorMessage,
          );
        },
        (success) {
          Fluttertoast.showToast(
            msg: 'Form saved successfully',
          );
        },
      );
    } catch (e) {
      Fluttertoast.showToast(
        msg: 'Failed to save form',
      );
    }
  }
}
