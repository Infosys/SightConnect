import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_add_patient_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_create_event_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/pages/vg_eye_assessment_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/data/models/vg_service_items.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianServicesCard extends ConsumerWidget {
  const VisionGuardianServicesCard({Key? key, required this.service})
      : super(key: key);
  final VGServiceItem service;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSize.km),
      child: SizedBox(
        width:
            Responsive.isMobile(context) ? AppSize.width(context) / 3.7 : 100,
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: () {
            if (service.id == VGServiceId.create_event) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VisionGuardianEventPage(),
                ),
              );
            } else if (service.id == VGServiceId.register_patient) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  // builder: (context) => const PatientRegistrationMiniappPage(
                  //   actionType: MiniAppActionType.REGISTER,
                  //   displayName: "Patient Registration",
                  // ),
                  builder: (context) => const VisionGuardianAddPatient(
                    triageMode: TriageMode.STANDALONE,
                  ),
                ),
              );
            } else if (service.id == VGServiceId.eye_assessment) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VisionGuardianEyeAssessmentPage(),
                ),
              );
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.km),
              color: service.color,
              boxShadow: applycustomShadow(),
            ),
            padding: const EdgeInsets.symmetric(vertical: AppSize.km),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                service.id == VGServiceId.eye_assessment
                    ? SvgPicture.asset(
                        service.icon,
                        height: AppSize.kl,
                        width: AppSize.kl,
                        colorFilter: const ColorFilter.mode(
                          AppColor.black,
                          BlendMode.srcIn,
                        ),
                      )
                    : Icon(service.icon),
                const SizedBox(height: AppSize.ks),
                Text(
                  // '${data["textPrefix"]}\n${data["text"]}',
                  service.text,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: applyFiraSansFont(
                    fontSize: 10,
                    color: AppColor.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
