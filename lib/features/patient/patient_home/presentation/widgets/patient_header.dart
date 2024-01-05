import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
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
    return Container(
      margin: EdgeInsets.only(
        top: AppSize.height(context) * 0.11,
        left: AppSize.kmpadding,
        right: AppSize.kmpadding,
      ),
      decoration: BoxDecoration(
        boxShadow: applyLightShadow(),
      ),
      child: Column(
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
                // var data = carouselData[index];
                var data = getCarouselData(context.loc!)[index];
                var textColor = index == 0 ? AppColor.black : AppColor.white;
                var buttonColor =
                    index == 0 ? AppColor.primary : AppColor.white;
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppSize.klradius),
                      child: Image.asset(
                        data["image"],
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSize.kmpadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            data["title"],
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: applyFiraSansFont(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: textColor,
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
                              data["description"],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: applyRobotoFont(
                                fontSize: 14,
                                color: textColor,
                                height: 1.4,
                              ),
                            ),
                          ),
                          const SizedBox(height: AppSize.kmheight),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 0.0),
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  visualDensity:
                                      const VisualDensity(vertical: -1),
                                  side: BorderSide(
                                    color: buttonColor,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                context.loc!.knowMoreButton,
                                style: applyRobotoFont(
                                  color: buttonColor,
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
          Transform.translate(
            offset: const Offset(0, -20),
            child: AnimatedSmoothIndicator(
              onDotClicked: (index) {},
              activeIndex: activeIndex.value,
              count: 3,
              effect: WormEffect(
                paintStyle: PaintingStyle.fill,
                activeDotColor: AppColor.primary,
                dotColor: AppColor.lightBlue.withOpacity(0.4),
                strokeWidth: 2,
                radius: 10,
                dotHeight: 10,
                dotWidth: 10,
                spacing: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
