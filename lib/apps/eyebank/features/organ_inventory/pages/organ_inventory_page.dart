import 'package:eye_care_for_all/apps/eyebank/features/organ_inventory/widgets/organ_inventory_overview.dart';
import 'package:eye_care_for_all/apps/eyebank/features/organ_inventory/widgets/organ_request_widget.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrganInventoryPage extends StatelessWidget {
  const OrganInventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppColor.primary,
            statusBarIconBrightness: Brightness.light,
          ),
          titleTextStyle: applyRobotoFont(
            color: AppColor.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          backgroundColor: AppColor.primary,
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: AppColor.white),
              onPressed: () {
                // showSearch(context: context, delegate: null);
              },
            ),
          ],
          title: const Text('Organ Inventory'),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 2,
                color: AppColor.white,
              ),
            ),
            tabs: [
              Tab(text: 'Overview'),
              Badge(
                label: Text("New"),
                child: Tab(text: 'Request (93)'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            OrganInventoryOverview(),
            OrganRequestWidget(),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Add Request'),
        ),
      ),
    );
  }
}
