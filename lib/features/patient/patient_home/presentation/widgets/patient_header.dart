import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PatientHeader extends HookWidget {
  const PatientHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var carouselController = useState<CarouselController>(CarouselController());
    var activeIndex = useState<int>(0);
    var initialPage = useState<int>(0);
    return Column(
      children: [
        CarouselSlider.builder(
            carouselController: carouselController.value,
            itemCount: 3,
            options: CarouselOptions(
              aspectRatio: 1.3,
              viewportFraction: 1,
              initialPage: 0,
              enlargeCenterPage: false,
              enlargeFactor: 0,
              enableInfiniteScroll: false,
              onPageChanged: (index, _) {
                activeIndex.value = index;
                initialPage.value = index;
              },
            ),
            itemBuilder: (context, index, _) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  // margin: const EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(),
                  height: Responsive.isMobile(context)
                      ? AppSize.height(context) * 0.33
                      : AppSize.height(context) * 0.3,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(AppSize.klradius),
                        child: Image.asset(
                          AppImages.patientCover,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(AppSize.kmpadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cataract Prevalence and Its Associated Factors among Adult Aged 40 Years and above",
                              style: applyFiraSansFont(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: AppSize.ksheight),
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: Responsive.isMobile(context)
                                    ? AppSize.width(context) * 0.6
                                    : AppSize.width(context) * 0.5,
                              ),
                              child: Text(
                                "Schematic presentation of sampling procedure on prevalence of cataract and associated factors",
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.darkGrey,
                                  height: 1.4,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(height: AppSize.kmheight),
                            Flexible(
                              child: OutlinedButton(
                                onPressed: () {},
                                child: const Text("Know More"),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
        Transform.translate(
          offset: const Offset(0, -30),
          child: AnimatedSmoothIndicator(
            onDotClicked: (index) {},
            activeIndex: activeIndex.value,
            count: 3,
            effect: const WormEffect(
              activeDotColor: AppColor.primary,
              radius: 10,
              dotColor: AppColor.lightGrey,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 8,
            ),
          ),
        )
      ],
    );
  }
}
