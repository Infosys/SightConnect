import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/apps/eyebank/features/screening/presentation/provider/eb_screening_provider.dart';
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
    return Scaffold(
        appBar: AppBar(
          title: Text('Screening CaseID : $caseID'),
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
            ));
  }
}
