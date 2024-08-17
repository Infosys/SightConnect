import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RecentCases extends ConsumerWidget {
  const RecentCases({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SizedBox();

    // return Container(
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(8.0),
    //   ),
    //   padding: const EdgeInsets.symmetric(horizontal: 16),
    //   child: Column(
    //     children: [
    //       Row(
    //         children: [
    //           Text(
    //             'Recent Cases',
    //             style: applyFiraSansFont(
    //               fontSize: 16,
    //             ),
    //           ),
    //           const Spacer(),
    //           TextButton(
    //             onPressed: () {
    //               final navigator = Navigator.of(context);
    //               navigator.push(
    //                 MaterialPageRoute(
    //                   builder: (context) {
    //                     return const EBCaseRecordsPage();
    //                   },
    //                 ),
    //               );
    //             },
    //             child: Text(
    //               'View All',
    //               style: applyRobotoFont(
    //                 fontSize: 14,
    //                 color: AppColor.primary,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //       const SizedBox(height: 8),
    //       ListView.builder(
    //         physics: const NeverScrollableScrollPhysics(),
    //         shrinkWrap: true,
    //         itemCount: 5,
    //         padding: const EdgeInsets.all(0),
    //         itemBuilder: (context, index) {
    //           return EBCaseCard(
    //             item: newItems.first,
    //             isCompact: true,
    //             onTap: () {
    //               final navigator = Navigator.of(context);
    //               navigator.push(
    //                 MaterialPageRoute(
    //                   builder: (context) =>
    //                       const EbCaseTimeLinePage(caseID: "1234"),
    //                 ),
    //               );
    //             },
    //           );
    //         },
    //       ),
    //     ],
    //   ),
    // );
  }
}
