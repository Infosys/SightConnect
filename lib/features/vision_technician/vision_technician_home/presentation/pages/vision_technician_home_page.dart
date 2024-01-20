import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_search_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/assessments_table.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_search_bar.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_header.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/presentation/pages/vt_profile_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
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
        backgroundColor: AppColor.primary,
        title: Row(
          children: [
            Image.asset(
              AppImages.logo,
              height: 80,
              width: 120,
              colorBlendMode: BlendMode.srcIn,
              color: AppColor.white,
            ),
            isMobile
                ? const Spacer()
                : const SizedBox(
                    width: AppSize.klwidth,
                  ),
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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VTProfilePage()),
              );
            },
            child: AppNameAvatar(
              name: ref.watch(globalVTProvider).name,
            ),
          ),
          isMobile
              ? const SizedBox(width: AppSize.kswidth)
              : const SizedBox(width: AppSize.klwidth),
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
                  Transform.translate(
                    offset: const Offset(0, AppSize.klheight * 1.5),
                    child: const VTHeader(),
                  )
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
