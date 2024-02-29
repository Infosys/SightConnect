import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vt_home_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/list_of_filter_chips.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_patient_list.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentTable extends ConsumerWidget {
  const AssessmentTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(vtHomeHelperProvider);
    final loc = context.loc!;
    return Padding(
      padding: const EdgeInsets.all(AppSize.kmpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            loc.vtAssessments,
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.kmheight),
          const ListOfFilterChips(),
          const SizedBox(height: AppSize.kmheight),
          PatientAssessmentPaginatedTable(data: model.listOfAssessments),
        ],
      ),
    );
  }
}
