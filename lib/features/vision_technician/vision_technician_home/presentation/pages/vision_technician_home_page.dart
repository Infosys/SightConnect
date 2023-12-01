import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_search_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/assessments_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/search_bar_vt.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vision_technician_header.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VisionTechnicianHomePage extends StatelessWidget {
  const VisionTechnicianHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(
              top: AppSize.kspadding, left: AppSize.kmpadding,),
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.white,
          ),
          child: SvgPicture.asset(
            AppIcon.logo,
            height: 10,
            width: 10,
          ),
        ),
        backgroundColor: AppColor.primary,
        title: Row(
          children: [
            Text(
              'Eye Care For All',
              style: applyFiraSansFont(
                color: AppColor.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: AppSize.kswidth),
            const SearchBarVT(readOnly: true),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          const CircleAvatar(
            backgroundColor: AppColor.darkGrey,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Container(
                    height: AppSize.klheight * 8,
                    decoration: const BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(AppSize.klradius),
                        bottomRight: Radius.circular(AppSize.klradius),
                      ),
                    ),
                  ),
                  const VisionTechnicianHeader()
                ],
              ),
            ),
            const AssessmentCard(),
          ],
        ),
      ),
    );
  }
}
