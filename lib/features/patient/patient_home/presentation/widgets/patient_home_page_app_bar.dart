import 'dart:ui';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientHomePageAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PatientHomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.white.withAlpha(350),
      title: Row(
        children: [
          Image.asset(
            AppImages.logo,
            height: 40,
            width: 120,
          ),
        ],
      ),
      actions: [
        Consumer(
          builder: (context, ref, child) {
            final model = ref.watch(patientDashboardProvider);
            return IconButton(
              onPressed: () {
                model.setVisibility(false);
                Scaffold.of(context).openEndDrawer();
              },
              icon: SvgPicture.asset(
                "assets/icons/drawer_menu.svg",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                colorFilter: const ColorFilter.mode(
                  Colors.black,
                  BlendMode.srcIn,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(58);
}
