import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/presentation/provider/eb_form_manage_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/modals/form_exit_dialog.dart';
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
                    enableDraft: true,
                    json: json,
                    onSubmit: (data, mode) async {
                      try {
                        final response = await ref
                            .read(ebSaveOrDraftProvider)
                            .saveOrDraft(1234, mode, data);
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
                    },
                    onPopInvoked: () {
                      showFormExitDialog(
                        context,
                        onSave: () {},
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
      ),
    );
  }
}
