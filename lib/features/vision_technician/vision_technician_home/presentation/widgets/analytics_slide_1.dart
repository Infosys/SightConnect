import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientCasesAnalytics extends StatelessWidget {
  const PatientCasesAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnalyticsCard(
            name: "Total Cases",
            analyticsTitle: "22",
            analyticsDescription: "14",
            width: Responsive.isMobile(context)
                ? AppSize.width(context) * 0.3
                : AppSize.width(context) * 0.3,
          ),
          const SizedBox(width: AppSize.kswidth),
          AnalyticsCard(
            name: "Total Cases",
            analyticsTitle: "22",
            analyticsDescription: "14",
            width: Responsive.isMobile(context)
                ? AppSize.width(context) * 0.3
                : AppSize.width(context) * 0.4,
          ),
          const SizedBox(width: AppSize.kswidth),
          AnalyticsCard(
            name: "Total Cases",
            analyticsTitle: "22",
            analyticsDescription: "14",
            width: Responsive.isMobile(context)
                ? AppSize.width(context) * 0.3
                : AppSize.width(context) * 0.2,
          ),
        ],
      ),
    );
  }
}

class AnalyticsCardData extends StatelessWidget {
  const AnalyticsCardData({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: applyFiraSansFont(
            fontWeight: FontWeight.w500,
            fontSize: 32,
          ),
        ),
        Text(
          description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: applyRobotoFont(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: AppColor.grey,
          ),
        ),
      ],
    );
    //add graph here
  }
}

class AnalyticsCard extends StatelessWidget {
  const AnalyticsCard({
    super.key,
    required this.name,
    required this.analyticsTitle,
    required this.analyticsDescription,
    this.pieChart = false,
    this.activeColor = AppColor.green,
    this.inactiveColor = AppColor.red,
    this.width = 300,
  });
  final String name;
  final String analyticsTitle;
  final String analyticsDescription;
  final bool pieChart;
  final Color activeColor;
  final Color inactiveColor;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(AppSize.kmpadding),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.kmradius),
        boxShadow: applyLightShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyFiraSansFont(
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AnalyticsCardData(
                  title: analyticsTitle,
                  description: analyticsDescription,
                ),
              ),
              Expanded(
                child: AnalyticsCardData(
                  title: analyticsTitle,
                  description: analyticsDescription,
                ),
              ),
            ],
          ),
          if (pieChart) const SizedBox()
        ],
      ),
    );
  }
}
