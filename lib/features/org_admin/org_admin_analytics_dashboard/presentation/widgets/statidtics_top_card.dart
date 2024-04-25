import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class StatisticsTopCard extends StatelessWidget {
  const StatisticsTopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.kl),
      width: AppSize.width(context) - AppSize.ks * 2,
      decoration: BoxDecoration(
        color: AppColor.pureBlue,
        borderRadius: BorderRadius.circular(AppSize.ks),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cases Attended',
            style: applyFiraSansFont(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: AppSize.km),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildColumn('1,58,790', 'OverAll', context, isSelected: true),
              _buildColumn('80/200', 'Today', context),
              _buildColumn('1400', 'Today', context),
              _buildColumn('6200', 'Today', context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildColumn(String number, String? text, BuildContext context,
      {bool isSelected = false}) {
    return Container(
      width: AppSize.width(context) / 4.5,
      padding: const EdgeInsets.all(AppSize.km),
      decoration: BoxDecoration(
          color: isSelected ? AppColor.primary : AppColor.pureBlue,
          borderRadius: BorderRadius.circular(AppSize.ks)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (text != null)
            Text(
              text,
              style: applyRobotoFont(
                fontSize: 14,
                color: isSelected ? AppColor.white : AppColor.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          Text(
            number,
            style: applyFiraSansFont(
              fontSize: 28,
              color: isSelected ? AppColor.white : AppColor.primary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
