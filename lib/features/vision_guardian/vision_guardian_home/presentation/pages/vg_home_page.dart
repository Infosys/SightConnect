import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_create_event_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_list_details.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/providers/vg_analytics_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_carousel.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
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
        title: Image.asset(
          AppImages.logo,
          height: 40,
          width: 140,
          colorBlendMode: BlendMode.srcIn,
          color: AppColor.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: Responsive.isMobile(context)
                  ? AppSize.klheight * 7.5
                  : AppSize.height(context) / 7.5,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.kmpadding,
                vertical: AppSize.kmpadding,
              ),
              decoration: const BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppSize.kmradius),
                  bottomRight: Radius.circular(AppSize.kmradius),
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
                    bottom: Responsive.isMobile(context)
                        ? -1 * (AppSize.height(context) / 7.5)
                        : -1 * (AppSize.height(context) / 9.5),
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
            SizedBox(height: AppSize.height(context) / 10),
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
                  const SizedBox(height: AppSize.kmheight),
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
