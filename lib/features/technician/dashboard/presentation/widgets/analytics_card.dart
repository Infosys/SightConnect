import 'package:flutter/material.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/theme/text_theme.dart';

class AnalyticsCard extends StatelessWidget {
  const AnalyticsCard(
      {super.key,
      required this.title,
      required this.total,
      required this.ongoing});
  final String title;
  final String total;
  final String ongoing;
  @override
  Widget build(BuildContext context) {
    var currentScreenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: AppColor.lightBlue.withOpacity(0.4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(title,
              style: applyFiraSansFont(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    total,
                    style: applyRobotoFont(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: AppColor.altGreen),
                  ),
                  Text(
                    "Total",
                    style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.grey),
                  ),
                ],
              ),
              SizedBox(
                width: currentScreenWidth > 1220
                    ? AppSize.width(context) * 0.05
                    : AppSize.width(context) * 0.03,
              ),
              Column(
                children: [
                  Text(
                    ongoing,
                    style: applyRobotoFont(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: AppColor.red),
                  ),
                  Text(
                    "Ongoing",
                    style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.grey),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
