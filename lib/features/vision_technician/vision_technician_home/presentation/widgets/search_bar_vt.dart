import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/pages/vision_technician_close_assessment_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/assessment_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/repositories/vision_technician_home_repository_impl.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_search_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_search_filter.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchBarVT extends ConsumerWidget {
  const SearchBarVT({super.key, required this.readOnly});

  final bool readOnly;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: TextField(
        readOnly: readOnly,
        onChanged: (data) {
          ref
              .read(visionTechnicianSearchProvider.notifier)
              .setSearchAssessmentUserList(data);
        },
        onTap: () {
          if (readOnly) {
            //original
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VisionTechnicianSearchPage(),
              ),
            );
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) =>
            //         const VisionTechnicianCloseAssessmentPage(),
            //   ),
            // );
          }
        },
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: () {
              print("search");
            },
            icon: const Icon(
              CupertinoIcons.search,
              color: AppColor.primary,
            ),
          ),
          suffixIcon: Container(
            decoration: BoxDecoration(
              color: AppColor.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppSize.klradius),
            ),
            child: const Icon(
              CupertinoIcons.mic,
              color: AppColor.grey,
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: AppSize.kspadding),
          filled: true,
          fillColor: AppColor.white,
          hintText: 'Search by Patient ID, Mobile No., Name',
          hintStyle: applyRobotoFont(
            color: AppColor.grey,
            fontSize: 14,
          ),
          // border: OutlineInputBorder(
          //   borderSide: BorderSide.none,
          //   borderRadius: BorderRadius.circular(AppSize.klradius * 3),
          // ),
          border: OutlineInputBorder(
            // borderSide: BorderSide.none,
            borderSide: const BorderSide(color: AppColor.primary),
            borderRadius: BorderRadius.circular(AppSize.klradius * 3),
          ),
        ),
      ),
    );
  }
}
