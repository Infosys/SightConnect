import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/pages/triage_member_selection_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_instructional_video_page.dart';
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
      padding: const EdgeInsets.only(left: AppSize.kmheight),
      child: SizedBox(
        width: 100,
        child: InkWell(
          onTap: () {
            if (data["text"] == "Visual Acuity Test") {
              ref.read(globalProvider).setVAMode = VisionAcuityMode.STANDALONE;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const VisualAcuityInstructionalVideoPage(),
                ),
              );
            } else if (data["text"] == "Eye Assessment") {
              ref.read(globalProvider).setVAMode = VisionAcuityMode.TRIAGE;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TriageMemberSelectionPage(),
                ),
              );
            }
          },
          borderRadius: BorderRadius.circular(AppSize.ksradius),
          child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.ksradius),
            ),
            color: data["color"],
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppSize.kmpadding,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    data["icon"],
                    height: AppSize.klpadding,
                    width: AppSize.klpadding,
                    color: AppColor.black,
                  ),
                  const SizedBox(
                    height: AppSize.ksheight,
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
