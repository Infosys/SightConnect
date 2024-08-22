import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/pages/eb_case_records_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/provider/eb_case_record_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/case_register_tile.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/pages/eb_case_time_line_page.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RecentCases extends ConsumerWidget {
  const RecentCases({super.key});

  static final params = GetRecordsParams(
    filters: [],
    pageNumber: 0,
    pageSize: 10,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(ebGetRecordsProvider(params)).when(
          data: (data) {
            return Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
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
                    itemCount: data.content?.length,
                    padding: const EdgeInsets.all(0),
                    itemBuilder: (context, index) {
                      final item = data.content?[index];
                      return EBCaseCard(
                        item: item!,
                        isCompact: true,
                        onTap: () {
                          final navigator = Navigator.of(context);
                          navigator.push(
                            MaterialPageRoute(
                              builder: (context) => const EbCaseTimeLinePage(
                                encounterID: 12,
                                timelineVersion: "",
                              ),
                            ),
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            );
          },
          error: (error, s) => Center(child: Text('Error: $error')),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
  }
}
