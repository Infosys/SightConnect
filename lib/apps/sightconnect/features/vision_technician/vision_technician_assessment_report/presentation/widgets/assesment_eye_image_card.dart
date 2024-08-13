import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/pages/app_photo_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

class AssessmentEyeImageCard extends StatelessWidget {
  const AssessmentEyeImageCard({
    super.key,
    required this.imageBriefEntity,
  });
  final List<ImageBriefEntity>? imageBriefEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Eye Images",
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: AppSize.km),
        () {
          if (imageBriefEntity?.isEmpty ?? true) {
            return const Center(
              child: Text(
                "No Eye Image Available",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            );
          }
          return GridView.builder(
            shrinkWrap: true,
            itemCount: imageBriefEntity!.length,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Responsive.isMobile(context) ? 2 : 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              final e = imageBriefEntity?[index];

              if (e == null) {
                return const SizedBox();
              }

              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AppPhotoPage(
                        image: e.imageUrl,
                        title: e.bodySite
                            .replaceAll("_", " ")
                            .capitalizeFirstOfEach(),
                      ),
                    ),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      e.bodySite.replaceAll("_", " ").capitalizeFirstOfEach(),
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: AppSize.km),
                    Expanded(
                      child: AppCard(
                        child: AppNetworkImage(
                          shapeCircle: false,
                          imageUrl: e.imageUrl,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }()
      ],
    );
  }
}
