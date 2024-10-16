/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_slide_1.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_slide_2.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_slide_3.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VGCarousel extends HookConsumerWidget {
  const VGCarousel({super.key, required this.data});
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CarouselController controller = CarouselController();

    var current = useState<int>(0);

    final List<Widget> slides = [
      VGSlide1(
        eyeAssessment: data["eyeAssessment"],
        byGender: data["byGender"],
      ),
      VGSlide2(dataMapAge: data["byAge"]),
      VGSlide3(
        values: data["symptoms"],
      ),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: CarouselSlider(
            items: slides,
            carouselController: controller,
            options: CarouselOptions(
              height: 140,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                current.value = index;
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: slides.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                width: AppSize.km - 2,
                height: AppSize.km - 2,
                margin:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColor.white,
                    width: 1.8,
                  ),
                  color: current.value == entry.key
                      ? AppColor.primary
                      : AppColor.primary.withOpacity(0.5),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
