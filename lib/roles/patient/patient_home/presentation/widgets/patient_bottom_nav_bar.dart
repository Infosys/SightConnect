import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/pages/patient_home_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eye_care_for_all/roles/patient/patient_notification/presentation/pages/patient_notification_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_services/presentation/pages/patient_services_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_test_initiate_page.dart';

class PatientBottomNavBar extends HookWidget {
  const PatientBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final initialScale = useState<List<double>>(
      Responsive.isMobile(context)
          ? [1.2, 1.0, 1.0, 1.0, 1.0]
          : [1.4, 1.2, 1.2, 1.2, 1.2],
    );

    void updateScale(int index) {
      initialScale.value = List.generate(5, (i) {
        if (i == index && Responsive.isMobile(context)) {
          return 1.2;
        } else if (i == index && !Responsive.isMobile(context)) {
          return 1.4;
        }
        return 1.0;
      });
    }

    final icons = [
      AppIcon.navHome,
      AppIcon.navService,
      AppIcon.navAcuity,
      AppIcon.navNotification,
      AppIcon.navProfile,
    ];

    final primaryColor = Theme.of(context).primaryColor;

    var currentIndex = useState(0);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isMobile(context)
            ? AppSize.width(context) * 0.1
            : AppSize.width(context) * 0.15,
        vertical: AppSize.height(context) * 0.02,
      ),
      child: Card(
        elevation: 8,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.klradius * 8),
        ),
        child: Padding(
          padding: Responsive.isMobile(context)
              ? const EdgeInsets.all(AppSize.kspadding)
              : const EdgeInsets.all(AppSize.kmpadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              5,
              (index) {
                final isSelected = currentIndex.value == index;
                final colorFilter = isSelected
                    ? ColorFilter.mode(primaryColor, BlendMode.srcIn)
                    : const ColorFilter.mode(AppColor.kGrey, BlendMode.srcIn);

                return InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {
                    currentIndex.value = index;

                    updateScale(index);
                    _navigateToPage(index, context);
                  },
                  child: ColorFiltered(
                    colorFilter: colorFilter,
                    child: AnimatedScale(
                      scale: initialScale.value[index],
                      duration: const Duration(milliseconds: 200),
                      child: Container(
                        padding: Responsive.isMobile(context)
                            ? const EdgeInsets.all(AppSize.kspadding)
                            : const EdgeInsets.all(AppSize.kmpadding - 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              isSelected ? primaryColor.withOpacity(0.1) : null,
                        ),
                        child: SvgPicture.asset(
                          icons[index],
                          height: Responsive.isMobile(context) ? 16 : 20,
                          width: Responsive.isMobile(context) ? 16 : 20,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  _navigateToPage(int index, BuildContext context) {
    switch (index) {
      case 0:
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const PatientServicesPage(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const TumblingTestInitiatePage(),
          ),
        );
        break;

      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const PatientNotificationPage(),
          ),
        );
        break;
      case 4:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const PatientProfilePage(),
          ),
        );
        break;

      default:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const PatientHomePage(),
          ),
        );
    }
  }
}
