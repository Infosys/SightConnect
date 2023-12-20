import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_search_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/assessments_table.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_search_bar.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_header.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../vision_technician_assessment_report/presentation/pages/vision_technician_assessment_report_page.dart';

class VisionTechnicianHomePage extends ConsumerWidget {
  const VisionTechnicianHomePage({super.key});

  static const routeName = '/vision-technician-home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isMobile = Responsive.isMobile(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const VisionTechnicianAssessmentReportPage(triageResponseModel: TriageResponseModel(),),
              ),
            );
          },
          child: Container(
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
        ),
        backgroundColor: AppColor.primary,
        title: Row(
          children: [
            Text(
              AppText.appName,
              style: applyFiraSansFont(
                color: AppColor.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: AppSize.klwidth),
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
                    icon: const Icon(Icons.search, color: AppColor.white),
                  )
                : const Expanded(
                    child: VTSearchBar(readOnly: true),
                  ),
          ],
        ),
        centerTitle: false,
        actions: [
          const CircleAvatar(
            backgroundColor: AppColor.lightGrey,
          ),
          isMobile
              ? const SizedBox(width: AppSize.kswidth)
              : const SizedBox(width: AppSize.klwidth)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
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
            const AssessmentTable(),
          ],
        ),
      ),
    );
  }
}
