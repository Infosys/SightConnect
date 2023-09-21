import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/provider/eye_scan_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AdviceCards extends ConsumerWidget {
  const AdviceCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(patientEyeScanProvider);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
          child: Card(
            elevation: 2,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.kmpadding, vertical: AppSize.kmpadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "General Advice:",
                    style: applyFiraSansFont(
                        color: AppColor.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: AppSize.kspadding,
                  ),
                  ...model.generalAdvice.asMap().entries.map(
                        (entry) => Text(
                          entry.value,
                          style: applyRobotoFont(
                              color: AppColor.darkCharcoal,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                ],
              ),
            ),
          ),
        ),

        const SizedBox(
          height: AppSize.kspadding + 2,
        ),

        //Watch what you eat

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
          child: Card(
            elevation: 2,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.kmpadding, vertical: AppSize.kmpadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Watch what you eat",
                    style: applyFiraSansFont(
                        color: AppColor.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: AppSize.kspadding,
                  ),
                  ...model.watchWhatYouEat.map(
                    (e) => Text(
                      e,
                      style: applyRobotoFont(
                          color: AppColor.darkCharcoal,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
