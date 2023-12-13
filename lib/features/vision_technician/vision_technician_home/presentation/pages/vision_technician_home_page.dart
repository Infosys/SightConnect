import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_search_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/assessments_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_search_bar.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_header.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VisionTechnicianHomePage extends StatelessWidget {
  const VisionTechnicianHomePage({super.key});

  static const routeName = '/vision-technician-home';

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(
            top: AppSize.kspadding,
            left: AppSize.kmpadding,
          ),
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
            isMobile ? const Spacer() : const SizedBox(),
            isMobile
                ? IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const VisionTechnicianSearchPage(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.search, color: AppColor.white))
                : const Expanded(
                    child: VTSearchBar(readOnly: true),
                  ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: AppColor.white,
            ),
          ),
          const CircleAvatar(
            backgroundColor: AppColor.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              // height: 300,
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
                  const VTHeader()
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
