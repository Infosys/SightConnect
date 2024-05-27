import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/features/common_features/referral/presentation/modals/referral_collect_sheet.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/helpline_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/my_connections_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/patient_footer.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/patient_header.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/patient_home_page_app_bar.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/triage_test_card.dart';
import 'package:eye_care_for_all/shared/widgets/app_drawer.dart';
import 'package:eye_care_for_all/shared/widgets/text_scale_pop_up.dart';
import 'package:eye_care_for_all/shared/widgets/translation_pop_up.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:upgrader/upgrader.dart';

import '../../../../../core/services/app_info_service.dart';
import '../../../../../main.dart';

class PatientHomePage extends ConsumerWidget {
  const PatientHomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch(appUpdateServiceProvider).checkForUpdate();
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        endDrawer: AppDrawer(
          onAccessibilityChange: () {
            TextScalePopupMenu.show(context, ref);
          },
          onLanguageChange: () {
            final currentLocaleCode =
                ref.read(globalLanguageProvider).currentLocale;
            showBottomSheet(
              enableDrag: false,
              context: context,
              builder: (context) => TranslationPopUp(
                locale: currentLocaleCode,
              ),
            );
          },
        ),
        appBar: const PatientHomePageAppBar(),
        body: UpgradeAlert(
          dialogStyle: UpgradeDialogStyle.cupertino,
          showIgnore: kDebugMode ? true : false,
          showLater: kDebugMode ? true : false,
          shouldPopScope: () => kDebugMode ? true : false,
          canDismissDialog: kDebugMode ? true : false,
          onUpdate: () {
            return true;
          },
          upgrader: Upgrader(
            durationUntilAlertAgain: const Duration(milliseconds: 800),
            willDisplayUpgrade: (
                {appStoreVersion,
                required display,
                installedVersion,
                minAppVersion}) {
              logger.d("display : $display");
              logger.d("appStoreVersion : $appStoreVersion");
              logger.d("installedVersion : $installedVersion");
            },
          ),
          child: Container(
            height: AppSize.height(context),
            width: AppSize.width(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppImages.scaffoldBg,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              controller: ref.read(patientDashboardProvider).scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: AppSize.kl * 3),

                  // const SizedBox(height: AppSize.km),
                  // PriorityNotificationList(),
                  InkWell(
                      onTap: () {
                        showReferralCollectSheet(context);
                      },
                      child: const PatientHeader()),

                  const SizedBox(height: AppSize.km),
                  const TriageTestCard(),
                  const SizedBox(height: AppSize.kl),
                  const HelplineCard(helpLine: AppInfoService.tollFreeNumber),
                  const SizedBox(height: AppSize.km),

                  const MyConnectionsList(),

                  // const RecentServicesCardList(),
                  const SizedBox(height: AppSize.km),
                  const PatientFooter(),
                  // const NearbyVisionCentersList(),
                  // const SizedBox(height: AppSize.km),

                  // InviteCard(
                  //   onPressed: () {
                  //     Share.share(
                  //       context.loc?.smsContent ?? "",
                  //       subject: context.loc?.emailSubject ?? "",
                  //     );
                  //   },
                  // ),
                  // const EyeCampsCardList(),
                  // const SizedBox(height: AppSize.km),
                  // const GoodToKnowCardList(),
                  // const SizedBox(height: AppSize.km),
                  // const CampaginsList(),
                  // const PartnerCard(),
                  const SizedBox(height: AppSize.kl * 3),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
