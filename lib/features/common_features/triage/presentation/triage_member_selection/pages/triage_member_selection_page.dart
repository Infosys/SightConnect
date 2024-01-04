import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/pages/triage_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';
import '../providers/triage_member_provider.dart';
import '../widget/change_member_tiles.dart';

class TriageMemberSelectionPage extends StatelessWidget {
  const TriageMemberSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return TraceableWidget(
      actionName: 'TriageMember Selection Page',
      child: Scaffold(
        appBar: CustomAppbar(
          title: Text(loc.eyeAssessmentTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/images/eye_assessment.svg',
                width: AppSize.width(context) * 0.4,
                height: AppSize.height(context) * 0.19,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: AppSize.height(context) * 0.02,
              ),
              Text(
                loc.eyeAssessmentSubtitle,
                style: applyRobotoFont(fontSize: 14),
                softWrap: true,
              ),
              const SizedBox(height: AppSize.ksheight),
              const Divider(thickness: 2),
              Row(
                children: [
                  Text(
                    loc.eyeAssessmentGetMemberLabel,
                    style: applyFiraSansFont(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: AppSize.ksheight),
              const ChangeMemberTiles(),
              const SizedBox(height: AppSize.ksheight),
              Consumer(
                builder: (context, ref, child) {
                  final model = ref.watch(triageMemberProvider);
                  return SizedBox(
                    width: AppSize.width(context) * 0.8,
                    child: ElevatedButton(
                      onPressed: model.testPatientId == null
                          ? null
                          : () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const TriagePage(),
                                ),
                              );
                            },
                      child: Text(loc.proceedButton),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
