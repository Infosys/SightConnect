import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/presentation/pages/tissue_display_page.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/presentation/widgets/organ_inventory_overview.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:flutter/material.dart';

class OrganInventoryPage extends StatelessWidget {
  const OrganInventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.pureBlue,
          title: const Text('Organ Inventory'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                final navigator = Navigator.of(context);
                navigator.push(
                  MaterialPageRoute(
                    builder: (context) => const TissueDisplayPage(),
                  ),
                );
              },
            ),
          ],
          bottom: const TabBar(
            dividerColor: AppColor.grey,
            labelColor: AppColor.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 2,
              ),
            ),
            tabs: [
              Badge(
                label: Text("New"),
                child: Tab(text: 'Request'),
              ),
              Tab(text: 'Overview'),
            ],
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            // OrganRequestOverview(),
            SizedBox(),
            OrganInventoryOverview(),
          ],
        ),
        // floatingActionButton: const OrganRequestButton(),
      ),
    );
  }
}
