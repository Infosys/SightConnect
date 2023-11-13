import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/pages/triage_questionnaire_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../triage_member_selection/pages/triage_member_selection_page.dart';

class TriagePage extends ConsumerWidget {
  const TriagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(triageProvider);
    return const TriageQuestionnairePage();
  }
}
