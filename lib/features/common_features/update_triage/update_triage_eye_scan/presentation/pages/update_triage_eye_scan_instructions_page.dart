import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_eye_scan/presentation/pages/update_triage_eye_scan_carousel_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UpdateTriageEyeScanInstructions extends ConsumerWidget {
  final int diagnosticReportId;
  const UpdateTriageEyeScanInstructions(
      {super.key, required this.diagnosticReportId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          AppLocalizations.of(context)!.eyeScanTitle,
          style: applyFiraSansFont(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.km),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppLocalizations.of(context)!.eyeScanDescription,
              softWrap: true,
              style: applyRobotoFont(
                fontSize: 14,
              ),
            ),
            const SizedBox(height: AppSize.ks),
            Text(
              AppLocalizations.of(context)!.eyeScanHowToPerform,
              style: applyRobotoFont(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: AppSize.ks),
            Expanded(
              child: UpdateTriageEyeScanCarouselPage(
                diagnosticReportId: diagnosticReportId,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
