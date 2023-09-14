import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_drawer/data/model/menu_item.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class PatientDrawerPage extends StatelessWidget {
  const PatientDrawerPage({
    super.key,
    required this.mainScreen,
    required this.onSelected,
    required this.selectedItem,
  });

  final Widget mainScreen;
  final MenuItem selectedItem;
  final Function(MenuItem) onSelected;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ZoomDrawer(
      borderRadius: 40,
      angle: -7,
      mainScreenScale: 0.2,
      showShadow: true,
      slideWidth: size.width * 0.8,
      menuBackgroundColor: AppColor.kPrimary,
      menuScreen: Scaffold(
        backgroundColor: AppColor.kPrimary,
        body: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const SizedBox(height: AppSize.klheight),
              Text(
                "Menu",
                style: applyFiraSansFont(
                  color: AppColor.kWhite,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: AppSize.klheight),
              ...MenuItems.all.map(
                (item) => ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  selectedTileColor: item == selectedItem
                      ? AppColor.kWhite.withOpacity(0.2)
                      : null,
                  selected: item == selectedItem,
                  selectedColor: AppColor.kWhite,
                  onTap: () {
                    onSelected(item);
                  },
                  leading: Icon(
                    item.icon,
                    color: AppColor.kWhite,
                  ),
                  title: Text(
                    item.title,
                    style: applyFiraSansFont(
                      color: AppColor.kWhite,
                      fontWeight: item == selectedItem
                          ? FontWeight.w500
                          : FontWeight.normal,
                      fontSize: item == selectedItem ? 18 : 14,
                    ),
                  ),
                ),
              ),
              const Spacer(flex: 2),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: AppColor.kWhite,
                ),
                title: Text(
                  "Sign Out",
                  style: applyRobotoFont(
                    color: AppColor.kWhite,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
              const Divider(
                color: AppColor.kWhite,
              ),
              ListTile(
                title: Text(
                  "App Version 1.0.0",
                  style: applyRobotoFont(
                    color: AppColor.kWhite,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      mainScreen: mainScreen,
    );
  }
}
