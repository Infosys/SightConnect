import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/list_of_filter_chips.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_patient_list.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_search_page/presentation/pages/vision_technician_search_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentTable extends HookConsumerWidget {
  const AssessmentTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var textController = useTextEditingController();
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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VisionTechnicianSearchPage(),
                ),
              );
            },
            child: TextField(
              readOnly: true,
              enabled: false,
              controller: textController,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColor.white,
                isDense: true,
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: AppColor.grey,
                ),
                hintText: loc.vtSearchText,
                hintStyle: applyRobotoFont(
                  color: AppColor.grey,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSize.kmheight),
          const ListOfFilterChips(),
          const SizedBox(height: AppSize.kmheight),
          const PatientAssessmentPaginatedTable(),
        ],
      ),
    );
  }
}
