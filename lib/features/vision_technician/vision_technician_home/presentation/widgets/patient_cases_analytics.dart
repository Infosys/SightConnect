import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientCasesAnalytics extends StatelessWidget {
  const PatientCasesAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnalyticsCard(
            title: loc.vtTotalCases,
            firstValue: "-",
            secondValue: "-",
            firstAnalyticsDescription: loc.vtIvrCalls,
            secondAnalyticsDescription: loc.vtClinicVisits,
            firstValueColor: AppColor.black,
            secondValueColor: AppColor.black,
            width: Responsive.isMobile(context)
                ? AppSize.width(context) * 0.3
                : AppSize.width(context) * 0.45,
          ),
          const SizedBox(width: AppSize.kswidth),
          AnalyticsCard(
            title: loc.vtCasesClosed,
            firstValue: "-",
            secondValue: "-",
            firstAnalyticsDescription: loc.vtCritical,
            secondAnalyticsDescription: loc.vtRegular,
            width: Responsive.isMobile(context)
                ? AppSize.width(context) * 0.3
                : AppSize.width(context) * 0.25,
          ),
          const SizedBox(width: AppSize.kswidth),
          AnalyticsCard(
            title: loc.vtAvgClosureTime,
            firstValue: "-",
            secondValue: "-",
            firstAnalyticsDescription: loc.vtCritical,
            secondAnalyticsDescription: loc.vtRegular,
            width: Responsive.isMobile(context)
                ? AppSize.width(context) * 0.3
                : AppSize.width(context) * 0.25,
          ),
        ],
      ),
    );
  }
}

class AnalyticsCardData extends StatelessWidget {
  const AnalyticsCardData({
    super.key,
    required this.value,
    required this.description,
    required this.color,
  });

  final String value;
  final String description;
  final Color color;
  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: applyFiraSansFont(
            fontWeight: FontWeight.w500,
            fontSize: isMobile ? 20 : 32,
            color: color,
          ),
        ),
        Text(
          description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: applyRobotoFont(
            fontWeight: FontWeight.w400,
            fontSize: isMobile ? 10 : 12,
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
    required this.title,
    required this.firstValue,
    required this.secondValue,
    required this.firstAnalyticsDescription,
    required this.secondAnalyticsDescription,
    this.pieChart = false,
    this.firstValueColor = AppColor.red,
    this.secondValueColor = AppColor.green,
    this.width = 300,
  });
  final String title;
  final String firstValue;
  final String secondValue;
  final String firstAnalyticsDescription;
  final String secondAnalyticsDescription;
  final bool pieChart;
  final Color firstValueColor;
  final Color secondValueColor;
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
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyFiraSansFont(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.ksheight),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: AnalyticsCardData(
                    value: firstValue,
                    description: firstAnalyticsDescription,
                    color: firstValueColor,
                  ),
                ),
                Expanded(
                  child: AnalyticsCardData(
                    value: secondValue,
                    description: secondAnalyticsDescription,
                    color: secondValueColor,
                  ),
                ),
              ],
            ),
          ),
          if (pieChart) const SizedBox()
        ],
      ),
    );
  }
}
