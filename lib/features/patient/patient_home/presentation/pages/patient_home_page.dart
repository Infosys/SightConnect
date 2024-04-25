import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/core/services/geocoding_service.dart';
import 'package:eye_care_for_all/core/services/location_service.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/helpline_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/invite_others_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/nearby_vision_centers_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/partner_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/patient_header.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/patient_home_page_app_bar.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/triage_test_card.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/app_drawer.dart';
import 'package:eye_care_for_all/shared/widgets/text_scale_pop_up.dart';
import 'package:eye_care_for_all/shared/widgets/translation_pop_up.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:upgrader/upgrader.dart';

import '../../../../../core/models/patient_response_model.dart';
import '../../../../../core/services/app_info_service.dart';
import '../../../../../main.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../../../../../shared/widgets/blur_overlay.dart';
import '../../../../common_features/initialization/pages/patient_registeration_miniapp_page.dart';

class PatientHomePage extends ConsumerStatefulWidget {
  const PatientHomePage({super.key});
  @override
  ConsumerState<PatientHomePage> createState() => _PatientHomePageState();
}

class _PatientHomePageState extends ConsumerState<PatientHomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final PatientResponseModel? data =
          ref.watch(globalPatientProvider).activeUser;
      final loc = context.loc!;
      if (data!.profile!.patient!.address!.first.pincode == null ||
          data.profile!.patient!.address!.first.pincode!.isEmpty) {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => PopScope(
                  canPop: false,
                  child: BlurDialogBox(
                      title: Center(
                        child: Text(
                          'Please Provide your pincode',
                          style: applyFiraSansFont(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      content: Text(
                        'We need your pincode so that we can accurately suggest you the nearest vision center. Please provide your pincode by clicking on the Proceed Button',
                        style: applyRobotoFont(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      actions: [
                        Center(
                          child: TextButton(
                              onPressed: () async {
                                int selectedPatientId =
                                    data.profile!.patient!.patientId!;

                                String? pinCode;
                                if (await LocationService
                                        .checkLocationPermission() ==
                                    true) {
                                  if (context.mounted &&
                                      await LocationService.enableLocation(
                                              context) ==
                                          true) {
                                    pinCode = await GeocodingService
                                        .getPincodeFromLocation();
                                  }
                                }

                                logger.f("pincode is : $pinCode");

                                if (context.mounted) {
                                  await Navigator.of(context)
                                      .push<bool?>(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          PatientRegistrationMiniappPage(
                                        actionType: MiniAppActionType.UPDATE,
                                        displayName: loc.patientUpdateProfile,
                                        parentPatientId:
                                            selectedPatientId.toString(),
                                        pinCode: pinCode,
                                      ),
                                    ),
                                  )
                                      .then((value) {
                                    logger.d(
                                        {"Profile Page Update Miniapp": value});

                                    if (value == null || value == false) {
                                      Fluttertoast.showToast(
                                          msg: loc.patientProfileNotUpdated);
                                    } else if (value) {
                                      Fluttertoast.showToast(
                                          msg: loc.patientProfileUpdated);

                                      ref.invalidate(getPatientProfileProvider);

                                      ref.invalidate(
                                          getPatientProfileByIdProvider(
                                              selectedPatientId));

                                      if (context.mounted) {
                                        Navigator.pop(context);
                                      }
                                    }
                                  });
                                }
                              },
                              child: const Text("Proceed")),
                        )
                      ]),
                ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ref.watch(appUpdateServiceProvider).checkForUpdate();
    return Scaffold(
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
                const SizedBox(height: AppSize.kl * 4),
                const PatientHeader(),
                // const SizedBox(height: AppSize.km),
                // PriorityNotificationList(),
                // const SizedBox(height: AppSize.km),
                // const MyConnectionsList(),
                const SizedBox(height: AppSize.km),
                const TriageTestCard(),
                const SizedBox(height: AppSize.km),
                const HelplineCard(helpLine: AppInfoService.tollFreeNumber),
                const SizedBox(height: AppSize.km),

                // const RecentServicesCardList(),

                const NearbyVisionCentersList(),
                const SizedBox(height: AppSize.km),

                InviteCard(
                  onPressed: () {
                    Share.share(
                      context.loc?.smsContent ?? "",
                      subject: context.loc?.emailSubject ?? "",
                    );
                  },
                ),
                // const EyeCampsCardList(),
                // const SizedBox(height: AppSize.km),
                // const GoodToKnowCardList(),
                // const SizedBox(height: AppSize.km),
                // const CampaginsList(),
                const PartnerCard(),
                const SizedBox(height: AppSize.kl * 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
