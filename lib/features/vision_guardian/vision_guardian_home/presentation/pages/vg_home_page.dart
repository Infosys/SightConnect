import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_create_event_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_list_details.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/providers/vg_analytics_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_carousel.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../widgets/vg_services_cards_list.dart';

class VisionGuardianHomePage extends ConsumerWidget {
  const VisionGuardianHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.white,
              ),
              child: SvgPicture.asset(
                AppIcon.logo,
                height: 20,
                width: 20,
              ),
            ),
            const SizedBox(width: AppSize.kmwidth),
            Text(
              AppText.appName,
              style: applyFiraSansFont(
                color: AppColor.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                final navigator = Navigator.of(context);
                ref.read(initializationProvider).logout().then(
                  (value) async {
                    navigator.pushNamedAndRemoveUntil(
                      LoginPage.routeName,
                      (route) => false,
                    );
                    ref.invalidate(initializationProvider);
                  },
                ).catchError((e) {
                  Fluttertoast.showToast(
                    msg: e.toString(),
                  );
                });
              },
              icon: const Icon(
                Icons.logout,
                color: AppColor.white,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: AppSize.height(context) / 4,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.kmpadding,
                vertical: AppSize.kmpadding,
              ),
              decoration: const BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: applyFiraSansFont(
                          color: AppColor.scaffold,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(height: AppSize.ksheight - 5),
                      Text(
                        ref.watch(globalVGProvider).name,
                        style: applyFiraSansFont(
                          fontSize: 24,
                          color: AppColor.white,
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: -1 * (AppSize.height(context) / 7.5),
                    left: (AppSize.kswidth * 2) * -1,
                    child: SizedBox(
                      width: AppSize.width(context),
                      child: ref.watch(getAnalyticsProvider).when(
                        data: (data) {
                          return VGCarousel(data: data);
                        },
                        error: (error, stackTrace) {
                          return Container();
                        },
                        loading: () {
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSize.klheight * 3),
            Padding(
              padding: const EdgeInsets.only(
                left: AppSize.kmpadding,
                right: AppSize.kmpadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Services",
                    style: applyFiraSansFont(
                      fontSize: 18,
                    ),
                  ),
                  const VisionGuardianServicesCardList(),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Events',
                        style: applyFiraSansFont(
                          fontSize: 18,
                          color: AppColor.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Consumer(
                        builder: (context, ref, child) {
                          return TextButton(
                            child: Text(
                              'View All',
                              style: applyFiraSansFont(
                                fontSize: 14,
                                color: AppColor.primary,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onPressed: () async {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const VisionGuardianEventPage(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  const VisionEventListDetails(
                    eventType: "default",
                  ),
                  const SizedBox(height: AppSize.klheight * 4)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
