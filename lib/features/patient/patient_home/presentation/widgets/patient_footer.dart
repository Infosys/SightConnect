import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/source/local/fake_data_source.dart';

class PatientFooter extends HookWidget {
  const PatientFooter({super.key});

  @override
  Widget build(BuildContext context) {
    var carouselController = useState<CarouselController>(CarouselController());
    var activeIndex = useState<int>(0);
    var initialPage = useState<int>(0);
    final displayData = getCarouselData(context.loc!);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSize.km),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: AppSize.km,
          ),
          SizedBox(
            child: CarouselSlider.builder(
              carouselController: carouselController.value,
              itemCount: 1,
              options: CarouselOptions(
                initialPage: 0,
                aspectRatio: 2,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, _) {
                  activeIndex.value = index;
                  initialPage.value = index;
                },
              ),
              itemBuilder: (context, index, _) {
                var data = displayData[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(AppSize.km),
                        child: Image.asset(
                          data["image"],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSize.km,
                          vertical: AppSize.km,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AutoSizeText(
                              data["title"],
                              minFontSize: 14,
                              maxLines: 2,
                              style: applyFiraSansFont(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: AppSize.ks),
                            AutoSizeText(
                              data["description"],
                              maxLines: 3,
                              minFontSize: 12,
                              overflow: TextOverflow.ellipsis,
                              style: applyRobotoFont(
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: AppSize.km),
                            AutoSizeText(
                              data["doctor"],
                              maxLines: 3,
                              minFontSize: 12,
                              overflow: TextOverflow.ellipsis,
                              style: applyRobotoFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            AutoSizeText(
                              data["designation"],
                              maxLines: 3,
                              minFontSize: 12,
                              overflow: TextOverflow.ellipsis,
                              style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          AnimatedSmoothIndicator(
            onDotClicked: (index) {},
            activeIndex: activeIndex.value,
            count: 1,
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
