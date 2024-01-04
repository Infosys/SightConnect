import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/bottom_nav_item.dart';
import 'package:eye_care_for_all/features/patient/patient_services/presentation/widgets/patient_service_category.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientServicesPage extends ConsumerWidget {
  const PatientServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    Map<String, List<String>> services = {
      loc.servicesPatientCare: [
        loc.recentServicesVisualAcuityTest,
        loc.recentServicesEyeAssessment,
      ],
    };

    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSize.klradius),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.klradius),
        ),
        child: DefaultTabController(
          length: 5,
          initialIndex: 1,
          child: Scaffold(
            body: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: applyLightShadow(),
                    color: AppColor.white.withOpacity(0.5),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 8,
                        width: 70,
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black45,
                        ),
                      ),
                      TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        enableFeedback: true,
                        onTap: (index) {
                          if (index != 1) {
                            Navigator.of(context).pop();
                          }
                        },
                        isScrollable: false,
                        tabs: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child:
                                SvgPicture.asset(BottomNavItems.home.svgImage),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SvgPicture.asset(
                                BottomNavItems.service.svgImage,
                                colorFilter: const ColorFilter.mode(
                                  AppColor.primary,
                                  BlendMode.srcIn,
                                )),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.primary,
                            ),
                            child: SvgPicture.asset(
                              BottomNavItems.triage.svgImage,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SvgPicture.asset(
                                BottomNavItems.notification.svgImage,
                                colorFilter: const ColorFilter.mode(
                                  AppColor.grey,
                                  BlendMode.srcIn,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child:
                                SvgPicture.asset(BottomNavItems.drawer.svgImage,
                                    colorFilter: const ColorFilter.mode(
                                      AppColor.grey,
                                      BlendMode.srcIn,
                                    )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(),
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(AppSize.kmpadding),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: services.keys
                                .map((e) => PatientServiceCategory(
                                      title: e,
                                      services: services[e]!,
                                    ))
                                .toList(),
                          ),
                        ),
                      ),
                      const SizedBox(),
                      const SizedBox(),
                      const SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
