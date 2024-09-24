import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_create_event_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_list_details.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_services_cards_list.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_upgrader.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../shared/constants/app_color.dart';
import '../../../../../../../shared/constants/app_size.dart';
import '../../../vision_guardian_add_event/presentation/providers/vg_user_data_provider.dart';

class VisionGuardianHomePage extends ConsumerWidget {
  const VisionGuardianHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    var name = ref.watch(vgUserDataProvider).getName ?? "";

    return Scaffold(
      backgroundColor: AppColor.scaffold,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: Image.asset(
          AppImages.logo,
          height: 40,
          width: 140,
          colorBlendMode: BlendMode.srcIn,
          color: AppColor.white,
        ),
        actions: const [],
      ),
      body: AppUpgrader(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: Responsive.isMobile(context)
                    ? AppSize.height(context) * 0.1
                    : AppSize.height(context) * 0.3,
                decoration: const BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppSize.km),
                    bottomRight: Radius.circular(AppSize.km),
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        "${loc.vgWelcome}  ${name}",
                        style: applyFiraSansFont(
                          color: AppColor.scaffold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    // Transform.translate(
                    //   offset: Offset(0, AppSize.height(context) * 0.07),
                    //   child: SizedBox(
                    //     child: ref.watch(getAnalyticsProvider).when(
                    //       data: (data) {
                    //         return VGCarousel(data: data);
                    //       },
                    //       error: (error, stackTrace) {
                    //         return const Center(
                    //           child: Text("Failed to load data"),
                    //         );
                    //       },
                    //       loading: () {
                    //         return Container();
                    //       },
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loc.vgServices,
                      style: applyFiraSansFont(
                        fontSize: 18,
                      ),
                    ),
                    const VisionGuardianServicesCardList(),
                    const SizedBox(height: AppSize.km),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          loc.vgEvents,
                          style: applyFiraSansFont(
                            fontSize: 18,
                            color: AppColor.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Consumer(
                          builder: (context, ref, child) {
                            return TextButton(
                              child: Text(
                                loc.vgViewAll,
                                style: applyFiraSansFont(
                                  fontSize: 14,
                                  color: AppColor.primary,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onPressed: () async {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const VisionGuardianEventPage(),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    const VisionEventListDetails(
                      eventType: "default",
                    ),
                    const SizedBox(height: AppSize.kl * 4)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
