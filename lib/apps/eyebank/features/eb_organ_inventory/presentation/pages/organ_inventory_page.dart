import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/presentation/modals/organ_tissue_search_delegate.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/presentation/widgets/organ_inventory_overview.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/presentation/widgets/organ_request_button.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:flutter/material.dart';

import '../widgets/organ_request_overview.dart';

class OrganInventoryPage extends StatelessWidget {
  const OrganInventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
                    builder: (context) => const OrganTissueSearchScreen(),
                  ),
                );
              },
            ),
          ],
          bottom: const TabBar(
            dividerHeight: 1,
            enableFeedback: true,
            automaticIndicatorColorAdjustment: true,
            mouseCursor: MouseCursor.defer,
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
                child: Tab(text: 'Requests'),
              ),
              Tab(text: 'Statistics'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            OrganRequestOverview(),
            OrganInventoryOverview(),
          ],
        ),
        floatingActionButton: const OrganRequestButton(),
      ),
    );
  }
}
