import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_cataract_eye_scan/presentation/provider/eye_scan_provider.dart';
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
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: ref.read(patientEyeScanProvider).rightEyeImage ==
                              null
                          ? const CircleAvatar()
                          : ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(AppSize.klradius * 10),
                              child: Image.file(
                                ref.read(patientEyeScanProvider).rightEyeImage!,
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                    const SizedBox(width: AppSize.kmpadding),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Right Eye",
                                  style: applyFiraSansFont(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Text(
                                "20/20",
                                style: applyFiraSansFont(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.green,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSize.kspadding / 2),
                          Text(
                            "No loss of transparency of the lens of the eye. No fogging is detected.",
                            style: applyRobotoFont(
                              fontSize: 14,
                              color: AppColor.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.klheight),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: ref.read(patientEyeScanProvider).leftEyeImage ==
                              null
                          ? const CircleAvatar()
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(320),
                              child: Image.file(
                                ref.read(patientEyeScanProvider).leftEyeImage!,
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                    const SizedBox(width: AppSize.kmpadding),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Left Eye",
                                  style: applyFiraSansFont(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Text(
                                "6/20",
                                style: applyFiraSansFont(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.red,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSize.kspadding / 2),
                          Text(
                            "There is loss of transparency of the lens of the left eye. Fogging is detected.",
                            style: applyRobotoFont(
                              fontSize: 14,
                              color: AppColor.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
