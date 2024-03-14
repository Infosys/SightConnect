import 'dart:io';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/assessments_table.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_header.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/presentation/pages/vt_profile_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_search_page/presentation/pages/vision_technician_search_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:upgrader/upgrader.dart';

import '../../../../../main.dart';

class VisionTechnicianHomePage extends ConsumerWidget {
  const VisionTechnicianHomePage({super.key});

  static const routeName = '/vision-technician-home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isMobile = Responsive.isMobile(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Responsive.isMobile(context)
            ? const Size.fromHeight(60)
            : const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: AppColor.primary,
          centerTitle: false,
          actions: [
            isMobile
                ? const SizedBox(width: AppSize.ks)
                : const SizedBox(width: AppSize.kl),
            Image.asset(
              AppImages.logo,
              width: Responsive.isMobile(context) ? 150 : 250,
              colorBlendMode: BlendMode.srcIn,
              color: AppColor.white,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VisionTechnicianSearchPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                color: AppColor.white,
              ),
            ),
            isMobile
                ? const SizedBox(width: AppSize.ks)
                : const SizedBox(width: AppSize.kl),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VTProfilePage(),
                  ),
                );
              },
              child: AppNameAvatar(
                name: ref.watch(globalVTProvider).name,
                radius: 20,
              ),
            ),
            isMobile
                ? const SizedBox(width: AppSize.ks)
                : const SizedBox(width: AppSize.kl),
          ],
        ),
      ),
      body: UpgradeAlert(
        dialogStyle: Platform.isIOS
            ? UpgradeDialogStyle.cupertino
            : UpgradeDialogStyle.material,
        showIgnore: kDebugMode ? true : false,
        showLater: kDebugMode ? true : false,
        shouldPopScope: () => kDebugMode ? true : false,
        canDismissDialog: kDebugMode ? true : false,
        onUpdate: () {
          return true;
        },
        upgrader: Upgrader(
          durationUntilAlertAgain: const Duration(milliseconds: 800),
          willDisplayUpgrade: ({
            appStoreVersion,
            required display,
            installedVersion,
            minAppVersion,
          }) {
            logger.d({
              "display : $display",
              "appStoreVersion : $appStoreVersion",
              "installedVersion : $installedVersion",
            });
          },
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Stack(
                  children: [
                    Container(
                      height: AppSize.kl * 6,
                      decoration: const BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(AppSize.kl),
                          bottomRight: Radius.circular(AppSize.kl),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, AppSize.ks),
                      child: const VTHeader(),
                    )
                  ],
                ),
              ),
              //TODO: Logic for showing the assessment table
              const AssessmentTable(),
            ],
          ),
        ),
      ),
    );
  }
}
