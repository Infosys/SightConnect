import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_member_selection/pages/triage_member_selection_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/visual_acuity/features/visual_acuity_tumbling/presentation/pages/visual_acuity_instructional_video_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/core/providers/global_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RecentServicesCard extends ConsumerWidget {
  const RecentServicesCard({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSize.km),
      child: SizedBox(
        width: 100,
        child: InkWell(
          onTap: () {
            if (data["id"] == "visual_acuity_test") {
              ref.read(globalProvider).setVAMode = VisionAcuityMode.STANDALONE;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const VisualAcuityInstructionalVideoPage(),
                ),
              );
            } else if (data["id"] == "eye_assessment") {
              ref.read(globalProvider).setVAMode = VisionAcuityMode.TRIAGE;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TriageMemberSelectionPage(),
                ),
              );
            }
          },
          borderRadius: BorderRadius.circular(AppSize.ks),
          child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.ks),
            ),
            color: data["color"],
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppSize.km,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    data["icon"],
                    height: AppSize.kl,
                    width: AppSize.kl,
                    colorFilter: const ColorFilter.mode(
                      AppColor.black,
                      BlendMode.srcATop,
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.ks,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      data["text"],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: applyFiraSansFont(
                        fontSize: 10,
                        color: AppColor.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
