import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_search_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/assessments_table.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_search_bar.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_header.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianHomePage extends ConsumerWidget {
  const VisionTechnicianHomePage({super.key});

  static const routeName = '/vision-technician-home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isMobile = Responsive.isMobile(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(
            top: AppSize.kspadding,
            left: AppSize.kmpadding,
          ),
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.white,
          ),
          child: Image.asset(
            AppIcon.logo,
            height: 30,
            width: 30,
          ),
        ),
        backgroundColor: AppColor.primary,
        title: Row(
          children: [
            Text(
              AppText.appName,
              style: applyFiraSansFont(
                color: AppColor.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: AppSize.klwidth),
            isMobile ? const Spacer() : const SizedBox(),
            isMobile
                ? IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const VisionTechnicianSearchPage(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.search, color: AppColor.white),
                  )
                : const Expanded(
                    child: VTSearchBar(readOnly: true),
                  ),
          ],
        ),
        centerTitle: false,
        actions: [
          AppNameAvatar(
            name: ref.watch(globalVTProvider).name,
            color: AppColor.white,
            fontColor: AppColor.primary,
          ),
          isMobile
              ? const SizedBox(width: AppSize.kswidth)
              : const SizedBox(width: AppSize.klwidth),
          IconButton(
            onPressed: () {
              final navigator = Navigator.of(context);
              ref.read(initializationProvider).logout().then((value) async {
                navigator.pushNamedAndRemoveUntil(
                  LoginPage.routeName,
                  (route) => false,
                );
                ref.invalidate(initializationProvider);
              }).catchError((e) {
                Fluttertoast.showToast(
                  msg: e.toString(),
                );
              });
            },
            icon: const Icon(
              Icons.logout_rounded,
              color: AppColor.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Stack(
                children: [
                  Container(
                    height: AppSize.klheight * 8,
                    decoration: const BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(AppSize.klradius),
                        bottomRight: Radius.circular(AppSize.klradius),
                      ),
                    ),
                  ),
                  const VTHeader()
                ],
              ),
            ),
            const AssessmentTable(),
          ],
        ),
      ),
    );
  }
}
