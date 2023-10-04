import 'dart:io';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/models/drawer_menu_item.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var items = DrawerMenuItems.all;
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSize.klheight * 2),
            Consumer(
              builder: (context, ref, child) {
                return ListTile(
                  onTap: () {
                    ref.read(patientDashboardProvider).changeIndex(0);
                  },
                  leading: Icon(
                    Icons.adaptive.arrow_back,
                    color: AppColor.white,
                  ),
                  title: Text(
                    "Menu",
                    style: applyFiraSansFont(
                      color: AppColor.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                );
              },
            ),
            ...items.map(
              (item) => ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                selectedColor: AppColor.white,
                onTap: () {},
                leading: Icon(
                  item.icon,
                  color: AppColor.white,
                ),
                title: Text(
                  item.title,
                  style: applyFiraSansFont(
                    color: AppColor.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const Spacer(flex: 2),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: AppColor.white,
              ),
              title: Text(
                "Sign Out",
                style: applyRobotoFont(
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ),
            const Divider(
              color: AppColor.white,
            ),
            ListTile(
              title: Text(
                "App Version 1.0.0",
                style: applyRobotoFont(
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
