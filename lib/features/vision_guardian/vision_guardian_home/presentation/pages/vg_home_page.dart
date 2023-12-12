import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_data_cards.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/follow_up_cases_cards_list.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_carousel.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_services_cards.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../widgets/critical_cases_cards_list.dart';
import '../widgets/vg_services_cards_list.dart';

class VisionGuardianHomePage extends StatelessWidget {
  const VisionGuardianHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: AppSize.klheight * 9,
                  width: double.infinity,
                  padding: const EdgeInsets.all(AppSize.kmpadding),
                  color: AppColor.primary,
                  // decoration: const BoxDecoration(
                  //   borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(AppSize.klradius),
                  //     bottomRight: Radius.circular(AppSize.klradius),
                  //   ),
                  // ),
                ),
                Container(
                  padding: const EdgeInsets.all(AppSize.klpadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: AppSize.klheight * 1.2),
                      Row(
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
                          const SizedBox(
                            width: AppSize.kmwidth,
                          ),
                          Text(
                            'Eye Care For All',
                            style: applyFiraSansFont(
                              color: AppColor.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSize.klheight * 1.5),
                      Text(
                        "Welcome",
                        style: applyFiraSansFont(
                          color: AppColor.scaffold,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(height: AppSize.ksheight - 5),
                      Text(
                        "Anupama Bansal",
                        style: applyFiraSansFont(
                          fontSize: 24,
                          color: AppColor.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: AppSize.klheight * 3,
                  width: AppSize.width(context),
                  decoration: const BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppSize.klradius),
                      bottomRight: Radius.circular(AppSize.klradius),
                    ),
                  ),
                ),
                VGCarousel()
              ],
            ),
            SizedBox(
              height: AppSize.height(context) * 0.04,
            ),
            const CriticalCasesCardList(),
            SizedBox(
              height: AppSize.height(context) * 0.02,
            ),
            const FollowUpCasesCardList(),
            SizedBox(
              height: AppSize.height(context) * 0.02,
            ),
            const VisionGuardianServicesCardList(),
            SizedBox(
              height: AppSize.height(context) * 0.02,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
              child: Row(
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
                  Text(
                    'View All',
                    style: applyFiraSansFont(
                      fontSize: 14,
                      color: AppColor.primary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppSize.height(context) * 0.02,
            ),
            vgEventDataCards(context),
            SizedBox(
              height: AppSize.height(context) * 0.2,
            ),
          ],
        ),
      ),
    );
  }
}
