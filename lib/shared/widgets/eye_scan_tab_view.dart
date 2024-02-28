import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'app_network_image.dart';

class EyeScanTabView extends StatelessWidget {
  const EyeScanTabView({
    super.key,
    this.eyeScanData,
  });
  final List<ImageBriefEntity>? eyeScanData;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: ExpansionTile(
        initiallyExpanded: true,
        title: Text(
          loc.eyeScanTitle,
          style: applyRobotoFont(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        children: [
          Visibility(
            visible: getLeftEyeImageUrl(eyeScanData) != null ||
                getRightEyeImageUrl(eyeScanData) != null,
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 200,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: _EyeScanImage(
                      image: getLeftEyeImageUrl(eyeScanData),
                      name: "Left Eye",
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _EyeScanImage(
                      image: getRightEyeImageUrl(eyeScanData),
                      name: "Right Eye",
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  String? getLeftEyeImageUrl(List<ImageBriefEntity>? imageBriefEntity) {
    if (imageBriefEntity == null) return null;

    List<String> leftEyeImageUrl = [];

    for (ImageBriefEntity imageBrief in imageBriefEntity) {
      if (imageBrief.bodySite == "LEFT_EYE") {
        leftEyeImageUrl.add(imageBrief.imageUrl);
      }
    }
    return leftEyeImageUrl.isEmpty ? null : leftEyeImageUrl.first;
  }

  String? getRightEyeImageUrl(List<ImageBriefEntity>? imageBriefEntity) {
    if (imageBriefEntity == null) return null;

    List<String> rightEyeImageUrl = [];

    for (ImageBriefEntity imageBrief in imageBriefEntity) {
      if (imageBrief.bodySite == "RIGHT_EYE") {
        rightEyeImageUrl.add(imageBrief.imageUrl);
      }
    }
    return rightEyeImageUrl.isEmpty ? null : rightEyeImageUrl.first;
  }
}

class _EyeScanImage extends StatelessWidget {
  const _EyeScanImage({
    required this.image,
    required this.name,
    // ignore: unused_element
    super.key,
  });

  final String? image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          name,
          style: applyRobotoFont(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: AppSize.kmheight),
        image == null
            ? const Center(child: Text("No Image"))
            : Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppSize.ksradius),
                  child: AppNetworkImage(
                    imageUrl: image!,
                    shapeCircle: false,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
      ],
    );
  }
}
