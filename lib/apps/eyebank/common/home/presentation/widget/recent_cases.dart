import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class RecentCases extends StatelessWidget {
  const RecentCases({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Recent Cases',
                style: applyRobotoFont(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                'View All',
                style: applyRobotoFont(
                  fontSize: 14,
                  color: AppColor.primary,
                ),
              ),
            ],
          ),

          // Recent cases list
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Case $index'),
                subtitle: const Text('Case details'),
              );
            },
          ),
        ],
      ),
    );
  }
}
