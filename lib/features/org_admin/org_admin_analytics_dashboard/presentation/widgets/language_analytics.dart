import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class LanguageAnalytics extends StatelessWidget {
  const LanguageAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 10,
      children: [
        const LanguageAnalyticsTile(
          title: 'English',
          subtitle: '200',
          icon: Icons.language,
        ),
        const LanguageAnalyticsTile(
          title: 'Hindi',
          subtitle: '15.5K',
          icon: Icons.abc,
        ),
        const LanguageAnalyticsTile(
          title: 'Tamil',
          subtitle: '560',
          icon: Icons.language,
        ),
        const LanguageAnalyticsTile(
          title: 'Telugu',
          subtitle: '1.3K',
          icon: Icons.language,
        ),
        SizedBox(
          width: 140,
          child: ListTile(
            minLeadingWidth: 10,
            contentPadding: const EdgeInsets.only(
              left: 0.0,
              right: 0.0,
            ),
            leading: CircleAvatar(
              backgroundColor: AppColor.green.withOpacity(0.1),
              radius: 28,
              child: const Icon(
                Icons.abc,
                size: 30,
                color: AppColor.green,
              ),
            ),
            title: Text(
              '12k',
              style: applyFiraSansFont(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            subtitle: Text('Others',
                style: applyRobotoFont(
                  fontSize: 12,
                  color: AppColor.grey,
                )),
          ),
        ),
      ],
    );
  }
}

class LanguageAnalyticsTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const LanguageAnalyticsTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 140,
          child: ListTile(
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
              subtitle,
              style: applyFiraSansFont(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            subtitle: Text(title,
                style: applyRobotoFont(
                  fontSize: 12,
                  color: AppColor.grey,
                )),
          ),
        ),
        Container(
          height: 80,
          width: 0.5,
          color: AppColor.grey,
        )
      ],
    );
  }
}
