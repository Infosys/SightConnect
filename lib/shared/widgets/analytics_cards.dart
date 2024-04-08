import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/pages/pulsar_effect_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AnalyticsCardData extends StatelessWidget {
  const AnalyticsCardData({
    super.key,
    required this.value,
    required this.description,
    required this.color,
    this.isLoading = false,
  });

  final String value;
  final String description;
  final Color color;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        value.contains("%")
            ? Pulsar(
                disable: isLoading ? false : true,
                animationCurve: Curves.easeOut,
                highOpacity: 0.8,
                lowOpacity: 0.1,
                child: Text.rich(
                  TextSpan(
                    text: value.replaceAll("%", ""),
                    style: applyFiraSansFont(
                      fontWeight: FontWeight.w500,
                      fontSize: isMobile ? 16 : 28,
                      color: color,
                    ),
                    children: [
                      TextSpan(
                        text: " %",
                        style: applyRobotoFont(
                          fontWeight: FontWeight.w400,
                          fontSize: isMobile ? 12 : 14,
                          color: color,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Pulsar(
                disable: isLoading ? false : true,
                animationCurve: Curves.easeOut,
                highOpacity: 0.8,
                lowOpacity: 0.1,
                child: AutoSizeText(
                  value,
                  maxLines: 1,
                  style: applyFiraSansFont(
                    fontWeight: FontWeight.w500,
                    fontSize: isMobile ? 16 : 32,
                    color: color,
                  ),
                ),
              ),
        AutoSizeText(
          description,
          maxLines: 1,
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
    this.isLoading = false,
  });
  final String title;
  final String firstValue;
  final String secondValue;
  final String firstAnalyticsDescription;
  final String secondAnalyticsDescription;
  final bool pieChart;
  final Color firstValueColor;
  final Color secondValueColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.km),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.km),
        boxShadow: applycustomShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(
            title,
            maxLines: 1,
            style: applyFiraSansFont(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.ks),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: AppSize.ks,
            spacing: AppSize.ks,
            children: [
              AnalyticsCardData(
                value: firstValue,
                description: firstAnalyticsDescription,
                color: firstValueColor,
                isLoading: isLoading,
              ),
              AnalyticsCardData(
                value: secondValue,
                description: secondAnalyticsDescription,
                color: secondValueColor,
                isLoading: isLoading,
              ),
            ],
          ),
          if (pieChart) const SizedBox()
        ],
      ),
    );
  }
}

class AnalyticsTriageStats extends StatelessWidget {
  const AnalyticsTriageStats({
    super.key,
    required this.title,
    required this.earlyValue,
    required this.urgentValue,
    required this.routineValue,
    this.isLoading = false,
  });
  final String title;
  final String earlyValue;
  final String urgentValue;
  final String routineValue;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.km),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.km),
        boxShadow: applycustomShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyFiraSansFont(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.ks),
          Flexible(
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: AppSize.ks,
              spacing: AppSize.ks,
              children: [
                AnalyticsCardData(
                  value: routineValue,
                  description: "Routine",
                  color: AppColor.green,
                  isLoading: isLoading,
                ),
                AnalyticsCardData(
                  value: earlyValue,
                  description: "Early",
                  color: AppColor.orange,
                  isLoading: isLoading,
                ),
                AnalyticsCardData(
                  value: urgentValue,
                  description: "Urgent",
                  color: AppColor.red,
                  isLoading: isLoading,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
