import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_add_patient_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_create_event_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/pages/vg_eye_assessment_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianServicesCard extends ConsumerWidget {
  const VisionGuardianServicesCard({Key? key, required this.data})
      : super(key: key);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSize.kmheight),
      child: SizedBox(
        width:
            Responsive.isMobile(context) ? AppSize.width(context) / 3.7 : 100,
        child: InkWell(
          onTap: () {
            if (data["text"] == "Event") {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VisionGuardianEventPage(),
                ),
              );
            } else if (data["text"] == "New Patient") {
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
            } else if (data["text"] == "Assessment") {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VisionGuardianEyeAssessmentPage(),
                ),
              );
            }
          },
          borderRadius: BorderRadius.circular(AppSize.ksradius),
          child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.ksradius),
            ),
            color: data["color"],
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppSize.kmpadding,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  data["textPrefix"] == "Eye"
                      ? SvgPicture.asset(
                          data["icon"],
                          height: AppSize.klpadding,
                          width: AppSize.klpadding,
                          colorFilter: const ColorFilter.mode(
                            AppColor.black,
                            BlendMode.srcIn,
                          ),
                        )
                      : Icon(data["icon"]),
                  const SizedBox(height: AppSize.ksheight),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      '${data["textPrefix"]}\n${data["text"]}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: applyFiraSansFont(
                        fontSize: 10,
                        color: AppColor.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
