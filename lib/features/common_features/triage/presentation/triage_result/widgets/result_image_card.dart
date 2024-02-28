import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_assessment_usecase.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/mappers/triage_report_detailed_mapper.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/repository/triage_report_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';

import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var eyeImageProviderByReportId =
    FutureProvider.family<TriageReportDetailedEntity, int>((ref, id) async {
  final response = await Future.wait([
    ref.watch(getAssessmentUseCase).call(GetTriageParam()),
    ref.watch(triageReportRepositoryProvider).getTriageReportByReportId(id)
  ]);
  final triageAssessment = response[0].fold(
    (failure) {
      throw failure;
    },
    (triageAssessment) {
      return triageAssessment;
    },
  );
  final triageReport = response[1].fold(
    (failure) {
      throw failure;
    },
    (triageAssessment) {
      return triageAssessment;
    },
  );

  final out = AssessmentDetailedReportMapper.toEntity(
    null,
    triageReport as TriageDetailedReportModel,
    triageAssessment as DiagnosticReportTemplateFHIRModel,
  );
  return out;
});

class ResultImageCard extends ConsumerWidget {
  const ResultImageCard({super.key, required this.reportId});
  final int? reportId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;

    if (reportId == null) {
      return const SizedBox();
    }

    return ref.watch(eyeImageProviderByReportId(reportId!)).when(
      data: (data) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                loc.eyeScanTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: applyFiraSansFont(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: AppSize.kmheight),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: SizedBox(
                  height: 170,
                  child: Row(
                    children: [
                      Expanded(
                        child: _EyeScanImage(
                          image: getLeftEyeImageUrl(data.imageBriefEntity),
                          name: "Left Eye",
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _EyeScanImage(
                          image: getRightEyeImageUrl(data.imageBriefEntity),
                          name: "Right Eye",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      loading: () {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                loc.eyeScanTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: applyFiraSansFont(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: AppSize.kmheight),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: const SizedBox(
                  height: 170,
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Center(
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      error: (error, stack) {
        return const SizedBox();
      },
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
