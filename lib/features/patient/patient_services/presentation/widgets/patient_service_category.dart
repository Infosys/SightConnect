import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/pages/triage_member_selection_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_instructional_video_page.dart';
import 'package:eye_care_for_all/features/patient/patient_services/data/data/local_source.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../core/constants/app_color.dart';
import '../../domain/enum/mini_app.dart';

class PatientServiceCategory extends ConsumerWidget {
  const PatientServiceCategory({
    Key? key,
    required this.services,
    required this.title,
  }) : super(key: key);
  final List<MiniApp> services;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Container(
      margin: Responsive.isMobile(context)
          ? const EdgeInsets.only(bottom: AppSize.klpadding)
          : const EdgeInsets.only(bottom: AppSize.klpadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: applyFiraSansFont(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Responsive.isMobile(context)
              ? const SizedBox(height: AppSize.kmheight)
              : const SizedBox(height: AppSize.klheight),
          Wrap(
            runSpacing: Responsive.isMobile(context) ? 10 : 20,
            spacing: Responsive.isMobile(context) ? 10 : 20,
            alignment: WrapAlignment.start,
            children: services
                .map(
                  (miniapp) => InkWell(
                    onTap: () {
                      if (miniapp == MiniApp.VISUAL_ACUITY_TEST) {
                        ref.read(globalProvider).setVAMode =
                            VisionAcuityMode.STANDALONE;
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const VisualAcuityInstructionalVideoPage(),
                          ),
                        );
                      } else if (miniapp == MiniApp.EYE_ASSESSMENT) {
                        ref.read(globalProvider).setVAMode =
                            VisionAcuityMode.TRIAGE;
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const TriageMemberSelectionPage(),
                          ),
                        );
                      }
                    },
                    child: SizedBox(
                      width: Responsive.isMobile(context) ? 80 : 120,
                      child: Column(
                        children: [
                          MINIAPP_LOGO_MAPPER[miniapp] != null
                              ? SvgPicture.asset(
                                  MINIAPP_LOGO_MAPPER[miniapp]!,
                                  height:
                                      Responsive.isMobile(context) ? 24 : 32,
                                  width: Responsive.isMobile(context) ? 24 : 32,
                                  colorFilter: const ColorFilter.mode(
                                    AppColor.primary,
                                    BlendMode.srcIn,
                                  ),
                                  fit: BoxFit.contain,
                                )
                              : const CircleAvatar(),
                          const SizedBox(
                            height: AppSize.ksheight,
                          ),
                          Text(
                            _getMiniAppText(miniapp, loc),
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: applyRobotoFont(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

String _getMiniAppText(
  MiniApp miniApp,
  AppLocalizations loc,
) =>
    {
      MiniApp.EYE_ASSESSMENT: loc.recentServicesEyeAssessment,
      MiniApp.VISUAL_ACUITY_TEST: loc.recentServicesVisualAcuityTest
    }[miniApp] ??
    "App";
