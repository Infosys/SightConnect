import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/table_data.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/pages/eb_case_records_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/case_register_tile.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/pages/eb_case_time_line_page.dart';
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
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
                        return const EBCaseRecordsPage();
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
          const SizedBox(height: 8),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            padding: const EdgeInsets.all(0),
            itemBuilder: (context, index) {
              return EBCaseCard(
                item: newItems.first,
                isCompact: true,
                onTap: () {
                  final navigator = Navigator.of(context);
                  navigator.push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const EbCaseTimeLinePage(caseID: "1234"),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
