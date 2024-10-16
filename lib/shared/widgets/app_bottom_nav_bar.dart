/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_notification/presentation/pages/patient_notification_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_services/presentation/pages/patient_services_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/bottom_nav_item.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/widgets/helpers/show_triage_how_to_proceed_bottom_sheet.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBottomNavBar extends HookConsumerWidget {
  const AppBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final primaryColor = Theme.of(context).primaryColor;
    final loc = context.loc!;
    var selectedIndex = useState(0);

    var isMobile = Responsive.isMobile(context);
    var items = BottomNavItems.all(loc);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColor.white,
      currentIndex: selectedIndex.value,
      selectedIconTheme: const IconThemeData(size: 24),
      onTap: (index) {
        selectedIndex.value = index;
        switch (index) {
          case 0:
            break;
          case 1:
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return const PatientServicesPage();
              },
            ).then((value) => selectedIndex.value = 0);
            break;
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return const AppointmentBooking();
          //     },
          //   ),
          // );
          // break;

          case 2:
            showTriageHowToProceedBottomSheet(context: context)
                .then((value) => selectedIndex.value = 0);

            break;
          case 3:
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const PatientProfilePage();
                },
              ),
            ).then((value) => selectedIndex.value = 0);
            break;
          case 4:
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const PatientNotificationPage();
                },
              ),
            ).then((value) => selectedIndex.value = 0);
            break;
          default:
            break;
        }
      },
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: AppColor.primary,
      unselectedItemColor: AppColor.grey,
      unselectedLabelStyle: applyRobotoFont(fontSize: 10),
      selectedLabelStyle:
          applyRobotoFont(fontSize: 10, fontWeight: FontWeight.w600),
      items: List.generate(
        items.length,
        (index) {
          return BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                items[index].svgImage,
                height: isMobile ? 16 : 20,
                width: isMobile ? 16 : 20,
                colorFilter: index == selectedIndex.value
                    ? ColorFilter.mode(primaryColor, BlendMode.srcIn)
                    : const ColorFilter.mode(AppColor.grey, BlendMode.srcIn),
              ),
            ),
            label: items[index].name,
          );
        },
      ),
    );
  }
}
