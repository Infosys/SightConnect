import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TopSuggestionsPrescriptionsAnalytics extends StatelessWidget {
  const TopSuggestionsPrescriptionsAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Column(
            children: [
              TopSujjestionTile(
                title: '200',
                subtitle: 'Normal',
                icon: Icons.add_ic_call_outlined,
              ),
              TopSujjestionTile(
                title: '15.5K',
                subtitle: 'Medicine',
                icon: Icons.file_download_done_outlined,
              ),
              TopSujjestionTile(
                title: '560',
                subtitle: 'Specialist Recommended',
                icon: Icons.close,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              TopSujjestionTile(
                title: '1.3K',
                subtitle: 'Spectacles',
                icon: Icons.add_ic_call_outlined,
              ),
              TopSujjestionTile(
                title: '50K',
                subtitle: 'Eye Drops',
                icon: Icons.file_download_done_outlined,
              ),
              TopSujjestionTile(
                title: '234',
                subtitle: 'Surgery Recommended',
                icon: Icons.close,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class TopSujjestionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const TopSujjestionTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 10,
      contentPadding: const EdgeInsets.only(
        left: 0.0,
        right: 0.0,
      ),
      leading: CircleAvatar(
        backgroundColor: AppColor.green.withOpacity(0.1),
        radius: 28,
        child: Icon(
          icon,
          size: 30,
          color: AppColor.green,
        ),
      ),
      title: Text(
        title,
        style: applyFiraSansFont(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      subtitle: Text(subtitle,
          style: applyRobotoFont(
            fontSize: 10,
            color: AppColor.grey,
          )),
    );
  }
}
