import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_add_patient_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_patient_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianFloatingAddPatientAction extends ConsumerWidget {
  const VisionGuardianFloatingAddPatientAction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        ref.read(addPatientEventProvider).setPatientSearchQuery("");

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const VisionGuardianAddPatient(
              triageMode: TriageMode.STANDALONE,
            ),
          ),
        );
      },
      child: Container(
        width: AppSize.width(context) * 0.35,
        height: AppSize.height(context) * 0.06,
        padding: const EdgeInsets.only(bottom: AppSize.ksheight - 1),
        margin: const EdgeInsets.only(bottom: AppSize.klheight),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.yellow,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: AppColor.grey,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: '+ ',
                    style: applyRobotoFont(
                        fontSize: 24,
                        color: AppColor.black,
                        fontWeight: FontWeight.w400)),
                TextSpan(
                  text: 'Add Patient',
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.black,
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
