import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_search_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarVT extends StatelessWidget {
  const SearchBarVT({super.key, required this.readOnly});

  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        readOnly: readOnly,
        onTap: () {
          if (readOnly) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VisionTechnicianSearchPage(),
              ),
            );
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
