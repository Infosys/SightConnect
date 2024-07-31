import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppointmentsAnalytics extends StatelessWidget {
  const AppointmentsAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppSize.kl,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const AppointmentHelperCard(
            color: AppColor.blue,
            title: 'Telephonic',
            icon: Icons.video_call,
            value: '5.3K',
            percentage: "+21%",
          ),
          Container(
            height: 130,
            width: 0.5,
            color: AppColor.grey,
            margin: const EdgeInsets.symmetric(horizontal: AppSize.kl),
          ),
          const AppointmentHelperCard(
            color: AppColor.red,
            title: 'In-Clinic',
            icon: Icons.local_hospital,
            value: '7.5K',
            percentage: "-11%",
          ),
        ],
      ),
    );
  }
}

class AppointmentHelperCard extends StatelessWidget {
  final Color color;
  final String title;
  final IconData icon;
  final String value;
  final String percentage;

  const AppointmentHelperCard({
    super.key,
    required this.color,
    required this.title,
    required this.icon,
    required this.value,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: color.withOpacity(0.1),
              radius: 28,
              child: Icon(
                icon,
                size: 36,
                color: color,
              ),
            ),
            const SizedBox(width: AppSize.ks),
            Text('5.3K',
                style: applyFiraSansFont(
                  fontWeight: FontWeight.w500,
                  fontSize: 32,
                )),
          ],
        ),
        const SizedBox(height: AppSize.ks),
        Text(
          title,
          style: applyRobotoFont(
            fontSize: 12,
            color: AppColor.grey,
          ),
        ),
        const SizedBox(height: AppSize.kl),
        Text(percentage,
            style: applyRobotoFont(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: percentage.contains('+') ? AppColor.green : AppColor.red,
            )),
      ],
    );
  }
}
