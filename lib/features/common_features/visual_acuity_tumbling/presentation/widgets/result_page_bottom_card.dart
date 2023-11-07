import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_instructional_video_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../core/constants/app_size.dart';
import '../providers/visual_acuity_test_provider.dart';

class TumblingResultPageBottomCards extends ConsumerWidget {
  const TumblingResultPageBottomCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          title: const Text("Toll Free Number"),
          subtitle: const Text(
            "1800 1800 1800",
            style: TextStyle(
              color: AppColor.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.kmheight,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(tumblingTestProvider).resetTumblingTest();
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: const Text("Home"),
                ),
              ),
              const SizedBox(
                width: AppSize.kmheight,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    ref.read(tumblingTestProvider).resetTumblingTest();
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const VisualAcuityInstructionalVideoPage(),
                      ),
                    );
                  },
                  child: const Text("Test Again"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
