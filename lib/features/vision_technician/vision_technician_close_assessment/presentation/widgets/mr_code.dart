import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MRCode extends ConsumerWidget {
  const MRCode({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Container(
      padding: const EdgeInsets.all(AppSize.kmpadding),
      margin: const EdgeInsets.all(AppSize.kspadding),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: BorderRadius.circular(AppSize.kmradius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            loc.vtMrCode,
            style: applyFiraSansFont(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: AppSize.kmpadding,
          ),
          TextField(
            onChanged: (value) {
              ref.read(vtCloseAssessmentHelperProvider).setMrCode(value);
            },
            decoration: InputDecoration(
              hintText: loc.vtEnterMrCode,
              hintStyle: applyRobotoFont(fontSize: 14),
              error: ref
                          .watch(vtCloseAssessmentHelperProvider)
                          .mrCodeController
                          .text
                          .length <
                      4
                  ? Text(
                      loc.vtPleaseEnterMrCode,
                      style: applyRobotoFont(
                        fontSize: 12,
                        color: AppColor.red,
                      ),
                    )
                  : null,
            ),
          )
        ],
      ),
    );
  }
}
