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
    var model = ref.watch(patientEyeScanProvider);
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Right Eye",
                                style: applyFiraSansFont(
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "${model.rightEyeStatus}",
                                style: applyFiraSansFont(
                                  fontSize: 18,
                                  color: model.rightEyeStatus == "Normal"
                                      ? AppColor.green
                                      : AppColor.red,
                                ),
                              ),
                              Text(
                                "${model.rightEyeScoreValue.toString()}%",
                                style: applyFiraSansFont(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: model.rightEyeStatus == "Normal"
                                      ? AppColor.green
                                      : AppColor.red,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSize.kspadding / 2),
                          Text(
                            textMapper(model.rightEyeStatus??""),
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
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Left Eye",
                                style: applyFiraSansFont(
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "${model.leftEyeStatus}",
                                style: applyFiraSansFont(
                                  fontSize: 18,
                                  color: model.leftEyeStatus == "Normal"
                                      ? AppColor.green
                                      : AppColor.red,
                                ),
                              ),
                              Text(
                                "${model.leftEyeScoreValue.toString()}%",
                                style: applyFiraSansFont(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: model.leftEyeStatus == "Normal"
                                      ? AppColor.green
                                      : AppColor.red,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSize.kspadding / 2),
                          Text(
                            textMapper(model.leftEyeStatus??""),
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

  String textMapper(String status) {
    switch (status) {
      case "Normal":
        return "No loss of transparency of the lens of the eye. No fogging is detected.";
      case "Cataract":
        return "There is loss of transparency of the lens of the eye. Fogging is detected.";
      default:
        return "";
    }
  }
}
