import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/domain/models/enums/tumbling_enums.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AcuityDistanceTile extends StatelessWidget {
  const AcuityDistanceTile({super.key, required this.distanceInCms});

  final int distanceInCms;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              context.loc!.distanceString,
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.grey,
              ),
            ),
            const SizedBox(width: AppSize.kswidth),
            Text(
              "$distanceInCms cm",
              style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColor.green),
            ),
          ],
        ),
        const Spacer(),
        Consumer(
          builder: (context, ref, child) {
            var model = ref.watch(tumblingTestProvider);
            return Text(
              mapEye(context, model.currentEye!),
              style: applyFiraSansFont(
                fontSize: 18,
              ),
            );
          },
        ),
      ],
    );
  }

  String mapEye(BuildContext context, Eye eye) {
    switch (eye) {
      case Eye.left:
        return context.loc!.leftEyeString;
      case Eye.right:
        return context.loc!.rightEyeString;
      case Eye.both:
        return context.loc!.bothEyeString;
      default:
        return "";
    }
  }
}
