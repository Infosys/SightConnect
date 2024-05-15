import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../shared/theme/text_theme.dart';

class AnalyticsCard extends StatelessWidget {
  const AnalyticsCard({
    super.key,
    required this.title,
    required this.total,
    required this.ongoing,
  });
  final String title;
  final String total;
  final String ongoing;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: AppColor.lightBlue.withOpacity(0.4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: applyFiraSansFont(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ongoing,
                      style: applyRobotoFont(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: AppColor.red,
                      ),
                    ),
                    Text(
                      "Ongoing",
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
