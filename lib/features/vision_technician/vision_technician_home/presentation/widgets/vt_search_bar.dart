import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_search_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTSearchBar extends ConsumerWidget {
  const VTSearchBar({
    super.key,
    required this.readOnly,
    this.onSearched,
  });
  final bool readOnly;

  final Function(String)? onSearched;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      readOnly: readOnly,
      onChanged: (data) {
        onSearched?.call(data);
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
        }
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(
          CupertinoIcons.search,
          color: AppColor.primary,
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
    );
  }
}
