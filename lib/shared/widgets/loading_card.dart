import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class LoadingCard extends StatelessWidget {
  const LoadingCard({
    super.key,
    this.isCardVisible = false,
  });
  final bool isCardVisible;

  @override
  Widget build(BuildContext context) {
    if (!isCardVisible) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Loading...',
              style: applyRobotoFont(
                fontSize: 14,
              ),
            ),
            const SizedBox(height: AppSize.km),
            const CircularProgressIndicator.adaptive(),
          ],
        ),
      );
    } else {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Loading...',
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: AppSize.km),
              const CircularProgressIndicator.adaptive(),
            ],
          ),
        ),
      );
    }
  }
}
