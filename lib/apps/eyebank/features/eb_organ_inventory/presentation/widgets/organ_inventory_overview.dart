import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class OrganInventoryOverview extends StatelessWidget {
  const OrganInventoryOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final inventoryStats = [
      {'title': 'Total Corneas', 'count': 232, 'icon': Icons.visibility},
      {'title': 'Available Corneas', 'count': 30, 'icon': Icons.check_circle},
      {'title': 'Pending Requests', 'count': 10, 'icon': Icons.pending},
      {'title': 'Completed Requests', 'count': 10, 'icon': Icons.done_all},
    ];

    return Scaffold(
      body: Padding(
        padding: () {
          if (Responsive.isMobile(context)) {
            return const EdgeInsets.all(8.0);
          } else {
            return const EdgeInsets.all(16.0);
          }
        }(),
        child: CustomScrollView(
          slivers: [
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: () {
                  if (Responsive.isMobile(context)) {
                    return 2;
                  } else if (Responsive.isTablet(context)) {
                    return 3;
                  } else {
                    return 4;
                  }
                }(),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: () {
                  if (Responsive.isMobile(context)) {
                    return 1.5;
                  } else if (Responsive.isTablet(context)) {
                    return 1.0;
                  } else {
                    return 1.0;
                  }
                }(),
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final stat = inventoryStats[index];
                  return Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          " ${stat['count']}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: applyRobotoFont(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Flexible(
                          child: Text(
                            " ^ 15%",
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: applyRobotoFont(
                              fontSize: 12.0,
                              color: AppColor.altGreen,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Flexible(
                          child: Text(
                            stat['title'] as String? ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: applyRobotoFont(
                              fontSize: 12.0,
                              color: AppColor.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: inventoryStats.length,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          backgroundColor: Colors.black45,
                          child: Text(
                            '#$index',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cornea Request #$index',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Doctor: Dr. Smith',
                              style: TextStyle(color: Colors.black54),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Details about cornea request #$index',
                              style: const TextStyle(color: Colors.black45),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
