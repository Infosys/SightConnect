import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_network_image.dart';

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
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: [
              Visibility(
                visible: getLeftEyeImageUrl(eyeScanData) != null,
                child: _EyeScanImage(
                  image: getLeftEyeImageUrl(eyeScanData),
                  name: loc.leftEyeString,
                ),
              ),
              Visibility(
                visible: getRightEyeImageUrl(eyeScanData) != null,
                child: _EyeScanImage(
                  image: getRightEyeImageUrl(eyeScanData),
                  name: loc.rightEyeString,
                ),
              ),
            ],
          ),
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
    logger.d({"image": image});
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
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
          const SizedBox(height: AppSize.ks),
          image == null
              ? const Center(child: Text("No Image"))
              : Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.ks),
                    child: AppNetworkImage(
                      imageUrl: image!,
                      shapeCircle: false,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
