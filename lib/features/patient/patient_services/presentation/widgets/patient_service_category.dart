import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/pages/triage_member_selection_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_instructional_video_page.dart';
import 'package:eye_care_for_all/features/patient/patient_cataract_eye_scan/presentation/pages/patient_eyes_capture_page.dart';
import 'package:eye_care_for_all/features/patient/patient_services/data/data/local_source.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:flutter_miniapp_web_runner/presentation/pages/miniapp_display_page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../core/constants/api_constant.dart';
import '../../../../../core/constants/app_color.dart';
import '../../../../../core/services/persistent_auth_service.dart';
import '../../../../../main.dart';
import '../../domain/enum/mini_app.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp.dart' as miniappModel;

class PatientServiceCategory extends ConsumerWidget {
  const PatientServiceCategory({
    Key? key,
    required this.services,
    required this.title,
  }) : super(key: key);
  final List<MiniApp> services;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isUserBeta = PersistentAuthStateService.authState.isUserTypeBeta;

    logger.d("isUserBeta $isUserBeta");
    final loc = context.loc!;
    final displayServices = isUserBeta
        ? services
        : services.where((element) {
            return element != MiniApp.CATARACT_EYE_TEST &&
                element != MiniApp.RED_EYE_TEST;
          }).toList();
    return Container(
      margin: Responsive.isMobile(context)
          ? const EdgeInsets.only(bottom: AppSize.kl)
          : const EdgeInsets.only(bottom: AppSize.kl * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: applyFiraSansFont(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Responsive.isMobile(context)
              ? const SizedBox(height: AppSize.km)
              : const SizedBox(height: AppSize.kl),
          Wrap(
            runSpacing: Responsive.isMobile(context) ? 10 : 20,
            spacing: Responsive.isMobile(context) ? 10 : 20,
            alignment:
                !isUserBeta ? WrapAlignment.start : WrapAlignment.spaceAround,
            children: displayServices
                .map(
                  (miniapp) => InkWell(
                    onTap: () {
                      if (miniapp == MiniApp.VISUAL_ACUITY_TEST) {
                        ref.read(globalProvider).setVAMode =
                            VisionAcuityMode.STANDALONE;
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const VisualAcuityInstructionalVideoPage(),
                          ),
                        );
                      } else if (miniapp == MiniApp.EYE_ASSESSMENT) {
                        ref.read(globalProvider).setVAMode =
                            VisionAcuityMode.TRIAGE;
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const TriageMemberSelectionPage(),
                          ),
                        );
                      } else if (miniapp == MiniApp.IPLEDGE) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MiniAppDisplayPage(
                              onBack: () {
                                Navigator.of(context).pop(null);
                              },
                              token: PersistentAuthStateService
                                      .authState.accessToken ??
                                  "",
                              injectionModel: MiniAppInjectionModel(
                                action: MiniAppActionType.iPLEDGE,
                                mobileNumber: validateMobile(),
                                parentPatientId: _getPateintId(),
                                role: _getCurrentActiveRole(),
                                token: PersistentAuthStateService
                                    .authState.accessToken,
                                miniAppEnv:
                                    getMiniAppEnv(ApiConstant.appEnvironment),
                                // pincode: pincode??""
                              ),
                              miniapp: miniappModel.MiniApp(
                                id: "1",
                                version: "1",
                                name: "iPledge",
                                displayName: "iPledge",
                                sourceurl:
                                    "https://healthconnect.infosysapps.com/ipledge/",
                              ),
                            ),
                          ),
                        );
                      } else if (miniapp == MiniApp.CATARACT_EYE_TEST &&
                          isUserBeta) {
                        ref.read(globalProvider).setVAMode =
                            VisionAcuityMode.CATARACT;
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PatientEyeCapturePage(),
                          ),
                        );
                      } else if (miniapp == MiniApp.RED_EYE_TEST &&
                          isUserBeta) {
                        ref.read(globalProvider).setVAMode =
                            VisionAcuityMode.RED_EYE;
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PatientEyeCapturePage(),
                          ),
                        );
                      } else if (miniapp == MiniApp.APPOINTMENT) {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => WebSocket(),
                        //   ),
                        // );
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) =>
                        //         const PatientAppointmentPage(),
                        //   ),
                        // );
                        Fluttertoast.cancel();
                        Fluttertoast.showToast(
                          msg: "This feature is coming soon",
                        );
                      }
                    },
                    child: SizedBox(
                      // color: Colors.pink,
                      width: Responsive.isMobile(context) ? 80 : 100,
                      height: Responsive.isMobile(context) ? 80 : 100,
                      child: Column(
                        children: [
                          MINIAPP_LOGO_MAPPER[miniapp] != null
                              ? SvgPicture.asset(
                                  width: Responsive.isMobile(context) ? 24 : 34,
                                  MINIAPP_LOGO_MAPPER[miniapp]!,
                                  colorFilter: const ColorFilter.mode(
                                    AppColor.primary,
                                    BlendMode.srcIn,
                                  ),
                                )
                              : const CircleAvatar(),
                          const SizedBox(
                            height: AppSize.ks,
                          ),
                          AutoSizeText(
                            _getMiniAppText(miniapp, loc),
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: applyRobotoFont(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

String _getMiniAppText(
  MiniApp miniApp,
  AppLocalizations loc,
) =>
    {
      MiniApp.EYE_ASSESSMENT: loc.recentServicesEyeAssessment,
      MiniApp.VISUAL_ACUITY_TEST: loc.recentServicesVisualAcuityTest,
      MiniApp.IPLEDGE: "iPledge",
      MiniApp.CATARACT_EYE_TEST: loc.recentServicesCataractEyeTest,
      MiniApp.RED_EYE_TEST: loc.recentServicesRedEyeTest,
      MiniApp.APPOINTMENT: loc.bottomNavItemAppointment,
    }[miniApp] ??
    "App";

MiniAppEnv getMiniAppEnv(AppEnvironment activeEnv) {
  switch (activeEnv) {
    case AppEnvironment.production:
      return MiniAppEnv.PROD;
    case AppEnvironment.staging:
      return MiniAppEnv.STAGING;
    case AppEnvironment.development:
      return MiniAppEnv.DEV;
  }
}

MiniAppInjectionModelRole? _getCurrentActiveRole() {
  final role = PersistentAuthStateService.authState.activeRole;
  if (role == "ROLE_PATIENT") {
    return MiniAppInjectionModelRole.PATIENT;
  } else if (role == "ROLE_OPTOMETRITIAN") {
    return MiniAppInjectionModelRole.OPTOMETRITIAN;
  } else if (role == "ROLE_VISION_TECHNICIAN") {
    return MiniAppInjectionModelRole.VISION_TECHNICIAN;
  } else if (role == "ROLE_VISION_GUARDIAN") {
    return MiniAppInjectionModelRole.VISION_GUARDIAN;
  }
  return null;
}

String validateMobile() {
  if (PersistentAuthStateService.authState.activeRole != "ROLE_PATIENT") {
    return "";
  }

  final mobile = PersistentAuthStateService.authState.username;
  if (mobile == null) return "";
  final mobileNumber = mobile.substring(3);

  return mobileNumber;
}

_getPateintId() {
  final role = PersistentAuthStateService.authState.activeRole;
  return role == "ROLE_PATIENT"
      ? PersistentAuthStateService.authState.userId
      : null;
}
