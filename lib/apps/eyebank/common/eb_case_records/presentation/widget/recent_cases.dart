import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/pages/eb_case_records_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/case_register_tile.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/pages/eb_case_time_line_page.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/respositories/contracts/eb_repository.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class RecentCases extends StatelessWidget {
  const RecentCases({super.key});

  @override
  Widget build(BuildContext context) {
    final newItems = List.generate(
      1,
      (index) => EncounterBriefModel(
        encounterId: 0,
        encounterStatus: AssessmentName.INTIMATION,
        donorBrief: const DonorBrief(
          id: 0,
          name: "George Soros",
          contact: "9363476747",
        ),
        intimateDate: DateTime.parse('2024-08-13T07:41:19.691Z'),
        performerId: 0,
        deathDate: DateTime.parse('2024-08-13T07:41:19.691Z'),
        bodyLocation: const BodyLocation(
          addressLine1: "42 Avenue Street",
          addressLine2: "New York City",
          street: "42 Avenue Street",
          city: "New York City",
          state: "New York",
          zipCode: "10001",
          country: "USA",
          landmark: "string",
          village: "string",
          district: "string",
          latitude: "string",
          longitude: "string",
        ),
        organExtracted: ["Heart"],
        lastModifiedDate: DateTime.parse('2024-08-13T07:41:19.692Z'),
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
