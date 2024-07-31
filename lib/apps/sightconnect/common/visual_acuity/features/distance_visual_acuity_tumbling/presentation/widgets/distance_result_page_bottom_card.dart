import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_icon.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/services/app_info_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../shared/constants/app_size.dart';
import '../pages/distance_visual_acuity_instructional_video_page.dart';
import '../providers/distance_visual_acuity_test_provider.dart';

class DistanceTumblingResultPageBottomCards extends ConsumerWidget {
  const DistanceTumblingResultPageBottomCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Column(
      children: [
        ListTile(
          tileColor: AppColor.white,
          onTap: () async {},
          leading: SvgPicture.asset(
            AppIcon.tollFree,
          ),
          trailing: SvgPicture.asset(
            AppIcon.call,
          ),
          title: Text(loc.tollFreeNumber),
          subtitle: Text(
            AppInfoService.tollFreeNumber,
            style: const TextStyle(
              color: AppColor.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.km,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(distanceTumblingTestProvider).reset();
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: Text(loc.homeButton),
                ),
              ),
              const SizedBox(
                width: AppSize.km,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    ref.read(distanceTumblingTestProvider).reset();
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const DistanceVisualAcuityInstructionalVideoPage(),
                      ),
                    );
                  },
                  child: Text(loc.testAgainButton),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
