import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/provider/eye_scan_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EyeResultImageCard extends ConsumerWidget {
  const EyeResultImageCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.kspadding + 4),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSize.kmpadding, vertical: AppSize.kspadding),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppSize.kspadding),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: AppSize.kmpadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Scan Date: 30 June, 2023",
                        style: applyRobotoFont(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "09:00 AM",
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.kGrey,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSize.kspadding,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ref.read(patientEyeScanProvider).rightEyeImage == null
                        ? const CircleAvatar()
                        : CircleAvatar(
                            radius: 40,
                            child: ClipOval(
                              child: Image.file(
                                ref.read(patientEyeScanProvider).rightEyeImage!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    const SizedBox(
                      width: AppSize.kmpadding,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Right Eye",
                                style: applyFiraSansFont(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "20/20",
                                style: applyFiraSansFont(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.kGreen,
                                ),
                              ),
                            ],
                          ),
                         const Spacer(),
                          Text(
                            "No loss of transparency of the lens of the eye. No fogging is detected.",
                            style: applyRobotoFont(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSize.klheight),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ref.read(patientEyeScanProvider).leftEyeImage == null
                        ? const CircleAvatar()
                        : CircleAvatar(
                            radius: 40,
                            child: ClipOval(
                              child: Image.file(
                                ref.read(patientEyeScanProvider).leftEyeImage!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    const SizedBox(
                      width: AppSize.kmpadding,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Left Eye",
                                style: applyFiraSansFont(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "6/20",
                                style: applyFiraSansFont(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.kRed,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: AppSize.height * 0.012,
                          ),
                          Text(
                            "There is loss of transparency of the lens of the left eye. Fogging is detected.",
                            style: applyRobotoFont(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
