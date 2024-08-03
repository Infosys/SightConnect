import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/widgets/helpline_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/widgets/my_connections_list.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/widgets/patient_footer.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/widgets/patient_header.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/widgets/patient_home_page_app_bar.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/widgets/triage_test_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/widgets/volunteer_invitee_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_language_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/pages/register_volunteer_page.dart';
import 'package:eye_care_for_all/shared/widgets/app_drawer.dart';
import 'package:eye_care_for_all/shared/widgets/app_upgrader.dart';
import 'package:eye_care_for_all/shared/widgets/text_scale_pop_up.dart';
import 'package:eye_care_for_all/shared/widgets/translation_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../services/app_info_service.dart';

class PatientHomePage extends ConsumerWidget {
  const PatientHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
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
        body: AppUpgrader(
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
                  const PatientHeader(),

                  const SizedBox(height: AppSize.km),
                  const TriageTestCard(),
                  const SizedBox(height: AppSize.kl),
                  HelplineCard(helpLine: AppInfoService.tollFreeNumber),
                  const SizedBox(height: AppSize.km),

                  const MyConnectionsList(),

                  // const RecentServicesCardList(),
                  const SizedBox(height: AppSize.km),
                  const PatientFooter(),
                  const SizedBox(height: AppSize.km),
                  VolunteerInviteeCard(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const RegisterVolunteerPage(),
                        ),
                      );
                    },
                    btnText:
                        loc.patientHomePageVolunteerInviteeCardJoinUsNowButton,
                    color: AppColor.altGreen,
                    backgroundColor: AppColor.altGreen.withOpacity(0.1),
                    svgImagePath: "assets/images/triage_card_bg.svg",
                    title: loc.patientHomePageVolunteerInviteeCardTitle,
                    description: [
                      loc.patientHomePageVolunteerInviteeCardDescription1,
                      loc.patientHomePageVolunteerInviteeCardDescription2,
                      loc.patientHomePageVolunteerInviteeCardDescription3,
                    ],
                  ),

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
