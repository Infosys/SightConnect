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
          data: (json) => CreateNewCaseSection(
            onPressed: () {
              showCustomWoltSheet(
                context,
                DynamicFormPage(json: json),
              );
            },
            buttonTxt: 'Create New Case',
          ),
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) {
            Fluttertoast.showToast(msg: 'Error Loading Case Registration JSON');
            return CreateNewCaseSection(
              onPressed: () {
                ref.invalidate(ebCaseCreationProvider);
              },
              buttonTxt: 'Retry',
            );
          },
        );
  }
}

class CreateNewCaseSection extends StatelessWidget {
  const CreateNewCaseSection({
    super.key,
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
