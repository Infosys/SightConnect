import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class GenderAnalytics extends StatelessWidget {
  const GenderAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: IVRCallsHelperCard(
            color: AppColor.blue,
            title: 'Telephonic',
            icon: Icons.video_call,
            value: '5.3K',
            percentage: "+21%",
          ),
        ),
        Container(
          height: 130,
          width: 0.5,
          color: AppColor.grey,
          margin: const EdgeInsets.symmetric(horizontal: AppSize.ks),
        ),
        const Expanded(
          child: IVRCallsHelperCard(
            color: AppColor.pink,
            title: 'In-Clinic',
            icon: Icons.local_hospital,
            value: '7.5K',
            percentage: "-11%",
          ),
        ),
        Container(
          height: 130,
          width: 0.5,
          color: AppColor.grey,
          margin: const EdgeInsets.symmetric(horizontal: AppSize.ks),
        ),
        const Expanded(
          child: IVRCallsHelperCard(
            color: AppColor.pink,
            title: 'In-Clinic',
            icon: Icons.local_hospital,
            value: '7.5K',
            percentage: "-11%",
          ),
        ),
      ],
    );
  }
}

class IVRCallsHelperCard extends StatelessWidget {
  final Color color;
  final String title;
  final IconData icon;
  final String value;
  final String percentage;

  const IVRCallsHelperCard({
    super.key,
    required this.color,
    required this.title,
    required this.icon,
    required this.value,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.ks),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            minLeadingWidth: 10,
            contentPadding: const EdgeInsets.only(
              left: 0.0,
              right: 0.0,
            ),
            leading: CircleAvatar(
              backgroundColor: color.withOpacity(0.1),
              radius: 20,
              child: Icon(
                icon,
                size: 24,
                color: color,
              ),
            ),
            title: Text('5.3K',
                style: applyFiraSansFont(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                )),
            subtitle: Text(
              title,
              style: applyRobotoFont(
                fontSize: 12,
                color: AppColor.grey,
              ),
            ),
          ),
          const SizedBox(height: AppSize.km),
          Text(percentage,
              style: applyRobotoFont(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: percentage.contains('+') ? AppColor.green : AppColor.red,
              )),
        ],
      ),
    );
  }
}
