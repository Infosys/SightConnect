import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/domain/repositories/vt_home_repository_impl.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vt_home_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_patient_list.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentTable extends ConsumerWidget {
  const AssessmentTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.kmpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Assessments",
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.klheight),
          // const Row(
          //   children: [
          //     CustomChip(title: "All"),
          //     CustomChip(title: "Critical"),
          //     CustomChip(title: "IVR Assessments"),
          //   ],
          // ),
          const SizedBox(height: AppSize.kmheight),

          ref.watch(getAssessmentTableProvider).when(
                data: (data) {
                  return VTPatientList(
                    listOfAssessments: data,
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error, stackTrace) => const Center(
                  child: Text("No data available"),
                ),
              ),
        ],
      ),
    );
  }
}
