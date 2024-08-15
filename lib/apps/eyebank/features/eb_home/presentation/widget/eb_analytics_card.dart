import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class EbAnalyticsCard extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final String? titleTrailing;
  final bool showDivider;
  final Widget body;

  const EbAnalyticsCard({
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      // constraints: BoxConstraints(
      //     maxWidth: Responsive.isMobile(context)
      //         ? AppSize.width(context)
      //         : width - 500),
      // height: height,
      padding: const EdgeInsets.all(AppSize.km),
      child: Column(
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
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: AppSize.km,
                left: AppSize.km,
                right: AppSize.km,
              ),
              child: body,
            ),
          ),
        ],
      ),
    );
  }
}
