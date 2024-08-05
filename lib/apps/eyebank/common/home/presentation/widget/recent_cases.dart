import 'package:eye_care_for_all/apps/eyebank/features/case_register/presentation/pages/eb_case_register_page.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class RecentCases extends StatelessWidget {
  const RecentCases({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
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
              TextButton(
                onPressed: () {
                  final navigator = Navigator.of(context);
                  navigator.push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const EBCaseRegisterPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'View All',
                  style: applyRobotoFont(
                    fontSize: 14,
                    color: AppColor.primary,
                  ),
                ),
              ),
            ],
          ),

          // Recent cases list
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            padding: const EdgeInsets.all(0),
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
