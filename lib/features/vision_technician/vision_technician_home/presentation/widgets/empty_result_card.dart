import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class EmptyResultCard extends StatelessWidget {
  const EmptyResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
              width: AppSize.width(context) * 0.5,
              child: Image.asset(AppImages.searchEmpty),
            ),
            const SizedBox(height: AppSize.klheight),
            const Text(
              "Sorry we couldn’t find any matches.\nPlease try searching with another Patient ID or Mobile No.",
              textAlign: TextAlign.center,
            ),
      ],
    );
  }
}