import 'package:eye_care_for_all/apps/eyebank/features/case_search/data/models/table_data.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_search/presentation/pages/eb_case_search_page.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_search/presentation/widget/case_register_tile.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class RecentCases extends StatelessWidget {
  const RecentCases({super.key});

  @override
  Widget build(BuildContext context) {
    final newItems = List.generate(
      1,
      (index) => TableData(
        eye: "Eye ${1 + index + 1}",
        category: "Category ${1 + index + 1}",
        date: DateTime.now(),
        donor: "Donor ${1 + index + 1}",
        sampleID: "Sample ID ${1 + index + 1}",
        status: "Status ${1 + index + 1}",
        tissue: "Tissue ${1 + index + 1}",
      ),
    );

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
                style: applyFiraSansFont(
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  final navigator = Navigator.of(context);
                  navigator.push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const EbCaseSearchPage();
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
              return CaseRegisterTile(
                item: newItems.first,
                isCompact: true,
              );
            },
          ),
        ],
      ),
    );
  }
}
