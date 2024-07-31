import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_member_selection/pages/triage_member_selection_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/core/models/bottom_nav_item.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_notification/presentation/pages/patient_notification_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_services/presentation/widgets/patient_service_category.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/services/persistent_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import "../../domain/enum/mini_app.dart";

class PatientServicesPage extends ConsumerWidget {
  const PatientServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    Map<String, List<MiniApp>> services = {
      loc.servicesPatientCare: [
        // loc.recentServicesVisualAcuityTest,
        // loc.recentServicesEyeAssessment,
        MiniApp.APPOINTMENT,
        MiniApp.VISUAL_ACUITY_TEST,
        // MiniApp.IPLEDGE,
        // MiniApp.EYE_ASSESSMENT,
        MiniApp.CATARACT_EYE_TEST,
        MiniApp.RED_EYE_TEST,
      ],
    };
    final isMobile = Responsive.isMobile(context);

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(AppSize.kl),
        topRight: Radius.circular(AppSize.kl),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.kl),
        ),
        child: DefaultTabController(
          length: 5,
          initialIndex: 1,
          child: Scaffold(
            body: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.black.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: const Offset(0, 5),
                      )
                    ],
                    color: AppColor.white.withOpacity(0.5),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 4,
                        width: 40,
                        margin: const EdgeInsets.only(top: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      TabBar(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSize.km,
                          vertical: AppSize.km,
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        enableFeedback: true,
                        onTap: (index) {
                          switch (index) {
                            case 0:
                              Navigator.of(context).pop();
                              break;
                            case 1:
                              // Do nothing
                              break;
                            case 2:
                              Navigator.of(context).pop();
                              showModalBottomSheet(
                                context: context,
                                isDismissible: false,
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                barrierLabel: MaterialLocalizations.of(context)
                                    .modalBarrierDismissLabel,
                                builder: (context) {
                                  MatomoTracker.instance.trackEvent(
                                      eventInfo: EventInfo(
                                        category: 'Main',
                                        action: 'Click',
                                        name:
                                            'Triage member selection page click',
                                      ),
                                      dimensions: {
                                        'dimension1':
                                            '${PersistentAuthStateService.authState.activeRole}'
                                      });
                                  return const TriageMemberSelectionPage();
                                },
                              );
                              break;
                            case 3:
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const PatientProfilePage();
                                  },
                                ),
                              );
                              break;
                            case 4:
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const PatientNotificationPage();
                                  },
                                ),
                              );
                              break;
                            default:
                              Navigator.of(context).pop();
                              break;
                          }
                        },
                        isScrollable: false,
                        tabs: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SvgPicture.asset(
                              height: isMobile ? 16 : 20,
                              width: isMobile ? 16 : 20,
                              BottomNavItems.home(loc).svgImage,
                              colorFilter: const ColorFilter.mode(
                                AppColor.grey,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SvgPicture.asset(
                              height: isMobile ? 16 : 20,
                              width: isMobile ? 16 : 20,
                              BottomNavItems.service(loc).svgImage,
                              colorFilter: const ColorFilter.mode(
                                AppColor.primary,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SvgPicture.asset(
                              height: isMobile ? 16 : 20,
                              width: isMobile ? 16 : 20,
                              BottomNavItems.triage(loc).svgImage,
                              colorFilter: const ColorFilter.mode(
                                AppColor.grey,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SvgPicture.asset(
                              height: isMobile ? 16 : 20,
                              width: isMobile ? 16 : 20,
                              BottomNavItems.notification(loc).svgImage,
                              colorFilter: const ColorFilter.mode(
                                AppColor.grey,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SvgPicture.asset(
                              height: isMobile ? 16 : 20,
                              width: isMobile ? 16 : 20,
                              BottomNavItems.drawer(loc).svgImage,
                              colorFilter: const ColorFilter.mode(
                                AppColor.grey,
                                BlendMode.srcIn,
                              ),
                            ),
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
                          padding: const EdgeInsets.all(AppSize.km),
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
