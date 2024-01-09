import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../data/source/local/fake_data_source.dart';

class PatientHeader extends HookWidget {
  const PatientHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var carouselController = useState<CarouselController>(CarouselController());
    var activeIndex = useState<int>(0);
    var initialPage = useState<int>(0);
    final displayData = getCarouselData(context.loc!);
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSize.kmpadding,
        vertical: AppSize.kmpadding,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CarouselSlider.builder(
              carouselController: carouselController.value,
              itemCount: 3,
              options: CarouselOptions(
                aspectRatio: 1.5,
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
                var data = displayData[index];

                return Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppSize.kmradius),
                      child: Image.asset(
                        "assets/images/banner_one.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: AppSize.kmpadding,
                        top: AppSize.kmpadding,
                        right: AppSize.kmpadding * 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            data["title"],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: applyFiraSansFont(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: AppColor.white,
                            ),
                          ),
                          const SizedBox(height: AppSize.ksheight),
                          Text(
                            data["description"],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: applyRobotoFont(
                              fontSize: 14,
                              color: AppColor.white,
                              height: 1.4,
                            ),
                          ),
                          const SizedBox(height: AppSize.ksheight),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 0.0),
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  visualDensity:
                                      const VisualDensity(vertical: -1),
                                  side: const BorderSide(
                                    color: AppColor.white,
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  context.loc!.knowMoreButton,
                                  style: applyRobotoFont(
                                    color: AppColor.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              }),
          const SizedBox(height: 10),
          AnimatedSmoothIndicator(
            onDotClicked: (index) {},
            activeIndex: activeIndex.value,
            count: 3,
            effect: WormEffect(
              paintStyle: PaintingStyle.fill,
              activeDotColor: AppColor.primary,
              dotColor: AppColor.lightBlue.withOpacity(0.4),
              strokeWidth: 2,
              radius: 10,
              dotHeight: 8,
              dotWidth: 8,
              spacing: 10,
            ),
          )
        ],
      ),
    );
  }
}
