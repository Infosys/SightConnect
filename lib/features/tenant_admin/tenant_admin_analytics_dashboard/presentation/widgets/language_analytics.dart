import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
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
          width:
              Responsive.isMobile(context) ? 140 : AppSize.width(context) / 6,
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
            title: AutoSizeText(
              '12k',
              maxLines: 1,
              style: applyFiraSansFont(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            subtitle: AutoSizeText(
              'Others',
              style: applyRobotoFont(
                fontSize: 12,
                color: AppColor.grey,
              ),
              maxLines: 1,
            ),
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
          width:
              Responsive.isMobile(context) ? 140 : AppSize.width(context) / 6,
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
            title: AutoSizeText(
              subtitle,
              maxLines: 1,
              style: applyFiraSansFont(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            subtitle: AutoSizeText(
              title,
              maxLines: 1,
              style: applyRobotoFont(
                fontSize: 12,
                color: AppColor.grey,
              ),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 0.5,
          color: AppColor.grey,
        )
      ],
    );
  }
}
