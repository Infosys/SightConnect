import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
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
        const SizedBox(height: AppSize.kmheight),
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
          return AppCard(
            padding: 16,
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: imageBriefEntity!.length,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isMobile(context) ? 2 : 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: Responsive.isMobile(context) ? 1 : 1,
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
                        ),
                      ),
                    );
                  },
                  child: AppNetworkImage(
                    shapeCircle: false,
                    imageUrl: e.imageUrl,
                  ),
                );
              },
            ),
          );
        }()
      ],
    );
  }
}
