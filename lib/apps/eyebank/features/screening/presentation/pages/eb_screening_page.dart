import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/apps/eyebank/features/screening/presentation/provider/eb_screening_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
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
              title: Text('Screening CaseID : $caseID'),
              actions: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                    color: AppColor.red,
                  ),
                  label: Text(
                    'Close Case',
                    style: applyRobotoFont(color: AppColor.red),
                  ),
                ),
                const SizedBox(width: 8)
              ],
            ),
          ),
          body: ref.watch(ebScreeningProvider).when(
                data: (json) {
                  return DynamicFormPage(json: json);
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error, stackTrace) => Center(
                  child: Text('Error: $error'),
                ),
              )),
    );
  }
}
