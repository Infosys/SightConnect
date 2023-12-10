import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_create_event_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../vision_guardian_add_member/presentation/pages/vg_add_member_page.dart';

class VisionGuardianServicesCard extends ConsumerWidget {
  const VisionGuardianServicesCard({Key? key, required this.data})
      : super(key: key);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSize.kmheight),
      child: SizedBox(
        width: 100,
        child: InkWell(
          onTap: () {
            if (data["text"] == "Event") {
              ref.read(globalProvider).setHideTumblingElement = true;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const VisionGuardianEventPage(),
                ),
              );
            } else if (data["text"] == "New Patient") {
              ref.read(globalProvider).setHideTumblingElement = false;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VisionGuardianMemberPage(),
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
                      '${data["textPrefix"]}\n${data["text"]}',
                      maxLines: 2,
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
