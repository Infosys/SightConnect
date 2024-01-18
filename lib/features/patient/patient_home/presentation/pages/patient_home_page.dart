import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/helpline_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/invite_others_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/nearby_vision_centers_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/partner_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/patient_header.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/patient_home_page_app_bar.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/triage_test_card.dart';
import 'package:eye_care_for_all/shared/widgets/app_drawer.dart';
import 'package:eye_care_for_all/shared/widgets/text_scale_pop_up.dart';
import 'package:eye_care_for_all/shared/widgets/translation_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';

class PatientHomePage extends ConsumerWidget {
  const PatientHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: AppDrawer(
        onAccessibilityChange: () {
          TextScalePopupMenu.show(context, ref);
        },
        onLanguageChange: () {
          final currentLocaleCode =
              ref.read(globalLanguageProvider).currentLocale.toString();
          showBottomSheet(
            enableDrag: false,
            context: context,
            builder: (context) => TranslationPopUp(
              currentLocaleCode: currentLocaleCode,
            ),
          );
        },
      ),
      appBar: const PatientHomePageAppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.scaffoldBg,
            ),
            alignment: Alignment.topRight,
          ),
        ),
        child: SingleChildScrollView(
          controller: ref.read(patientDashboardProvider).scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: AppSize.klheight * 4.5),
              const PatientHeader(),
              // const SizedBox(height: AppSize.kmheight),
              // PriorityNotificationList(),
              // const SizedBox(height: AppSize.kmheight),
              // const MyConnectionsList(),
              const SizedBox(height: AppSize.kmheight),
              const TriageTestCard(),
              const SizedBox(height: AppSize.kmheight),
              const HelplineCard(helpLine: AppText.tollFreeNumber),
              const SizedBox(height: AppSize.kmheight),

              // const RecentServicesCardList(),

              const NearbyVisionCentersList(),
              const SizedBox(height: AppSize.kmheight),

              InviteCard(
                onPressed: () {
                  Share.share(
                    'check out my website https://example.com',
                    subject: 'Look what I made!',
                  );
                },
              ),
              // const EyeCampsCardList(),
              // const SizedBox(height: AppSize.kmheight),
              // const GoodToKnowCardList(),
              // const SizedBox(height: AppSize.kmheight),
              // const CampaginsList(),
              const PartnerCard(),
              const SizedBox(height: AppSize.klheight * 3.2),
            ],
          ),
        ),
      ),
    );
  }
}
