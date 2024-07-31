import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class IVRCallsAnalytics extends StatelessWidget {
  const IVRCallsAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IVRCallsAnalyticsTile(
                icon: Icons.add_ic_call_outlined,
                title: 'Incoming',
                value: '5K',
                color: AppColor.green,
              ),
              IVRCallsAnalyticsTile(
                icon: Icons.file_download_done_outlined,
                title: 'Completed',
                value: '45',
                color: AppColor.green,
              ),
              IVRCallsAnalyticsTile(
                icon: Icons.close,
                title: 'Completed',
                value: '12',
                color: AppColor.red,
              ),
              IVRCallsAnalyticsTile(
                icon: Icons.question_mark_sharp,
                title: 'Completed',
                value: '89',
                color: AppColor.yellow,
              ),
            ],
          ),
        ),
        Container(
          height: 200,
          width: 0.5,
          color: AppColor.grey,
          margin: const EdgeInsets.symmetric(horizontal: AppSize.kl),
        ),
        const Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IVRCallsAnalyticsTile(
                icon: Icons.call_outlined,
                title: 'Outgoing',
                value: '6K',
                color: AppColor.red,
              ),
              IVRCallsAnalyticsTile(
                icon: Icons.file_download_done_outlined,
                title: 'Completed',
                value: '45',
                color: AppColor.green,
              ),
              IVRCallsAnalyticsTile(
                icon: Icons.close,
                title: 'Completed',
                value: '12',
                color: AppColor.red,
              ),
              IVRCallsAnalyticsTile(
                icon: Icons.question_mark_sharp,
                title: 'Completed',
                value: '89',
                color: AppColor.yellow,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class IVRCallsAnalyticsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color color;

  const IVRCallsAnalyticsTile({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        dense: true,
        minLeadingWidth: 10,
        contentPadding: const EdgeInsets.only(
          left: 0.0,
          right: 0.0,
        ),
        leading: Icon(
          icon,
          color: color,
          size: 22,
        ),
        title: Text(
          title,
          style: applyRobotoFont(fontSize: 12),
        ),
        trailing: Text(value,
            style:
                applyFiraSansFont(fontSize: 14, fontWeight: FontWeight.w500)));
  }
}
