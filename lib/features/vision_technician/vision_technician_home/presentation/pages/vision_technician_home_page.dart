// import 'dart:io';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_analytics_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/assessments_table.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_header.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_search_triaging_bar.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/presentation/pages/vt_profile_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_search_page/presentation/pages/vision_technician_search_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/app_upgrader.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/vt_home_helper_provider.dart';

class VisionTechnicianHomePage extends ConsumerWidget {
  const VisionTechnicianHomePage({super.key});

  static const routeName = '/vision-technician-home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: AppUpgrader(
          child: RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(visionTechnicianAnalyticsProvider);
              ref.invalidate(vtHomeHelperProvider);
            },
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    height: Responsive.isMobile(context)
                        ? AppSize.height(context) * 0.3
                        : AppSize.height(context) * 0.25,
                    decoration: const BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(AppSize.kl),
                        bottomRight: Radius.circular(AppSize.kl),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSize.km,
                          vertical: AppSize.km,
                        ),
                        child: VTHomeSearchBar(
                          onProfile: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const VTProfilePage(),
                              ),
                            );
                          },
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const VisionTechnicianSearchPage(),
                              ),
                            );
                          },
                        ),
                      ),
                      const VTHeader(),
                      const AssessmentTable(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
