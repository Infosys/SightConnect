import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AnalyticsCard extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final String? titleTrailing;
  final bool showDivider;
  final Widget body;

  const AnalyticsCard({
    super.key,
    required this.width,
    required this.title,
    required this.body,
    this.titleTrailing,
    this.showDivider = false,
    this.height = 290,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.km),
      ),
      child: Container(
        constraints: BoxConstraints(
          maxWidth:
              Responsive.isMobile(context) ? AppSize.width(context) : width,
        ),
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: AppSize.km,
                left: AppSize.km,
                right: AppSize.km,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,
                      style: applyFiraSansFont(
                        fontSize: 16,
                      )),
                  titleTrailing != null
                      ? Text(
                          titleTrailing!,
                          style: applyFiraSansFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
            showDivider
                ? const SizedBox(height: AppSize.ks)
                : const SizedBox(height: AppSize.kl),
            showDivider
                ? const Divider(
                    color: Colors.grey,
                  )
                : const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.only(
                bottom: AppSize.km,
                left: AppSize.km,
                right: AppSize.km,
              ),
              child: body,
            ),
          ],
        ),
      ),
    );
  }
}
