import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_eye_scan/presentation/provider/patient_result_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_eye_scan/presentation/provider/patient_triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_eye_scan/presentation/widgets/assessment_result_cards.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_eye_scan/presentation/widgets/eye_centre_details_cards.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_eye_scan/presentation/widgets/result_page_bottom_cards.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_eye_scan/presentation/widgets/result_page_top_card.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/presentation/provider/patient_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/presentation/providers/patient_triage_steps_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_tumbling_test/presentation/providers/tumbling_test_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientAssessmentResultPage extends ConsumerWidget {
  const PatientAssessmentResultPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(resultStateProvider);

    resetTraige() {
      ref.invalidate(patientTriageQuestionnaireProvider);
      ref.invalidate(patientTriageEyeScanProvider);
      ref.invalidate(tumblingTestProvider);
      ref.invalidate(patientTriageStepsProvider);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Assessment Result"),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(patientTriageStepsProvider).getTriageDetails();
            },
            icon: const Icon(
              Icons.download_outlined,
              color: AppColor.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              color: AppColor.grey,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: AppSize.kmheight),
              const ResultPageTopCard(),
              const SizedBox(height: AppSize.kmheight),
              const AssessmentResultCards(),
              const SizedBox(height: AppSize.kmheight),
              Container(
                padding: const EdgeInsets.all(AppSize.kspadding),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(
                        2,
                        10,
                      ),
                      color: AppColor.primary.withOpacity(0.1),
                      blurRadius: 20,
                      spreadRadius: 5,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(AppSize.ksradius),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.primary.withOpacity(0.1),
                      child: SvgPicture.asset(
                        AppIcon.report,
                        height: 16,
                      ),
                    ),
                    SizedBox(
                      width: AppSize.width(context) * 0.05,
                    ),
                    Text(
                      "Eye Assessment Report",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.chevron_right_sharp),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.klheight),
              Text(
                'Visit the nearest vision center for more details. Call the toll-free number to speak to our vision technician.',
                textAlign: TextAlign.left,
                softWrap: true,
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: AppSize.klheight),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nearby Vision Centres",
                    style: applyFiraSansFont(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColor.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.kmheight),
              const EyeCentreDetailsCards(),
              const SizedBox(height: AppSize.kmheight),
              const ResultPageBottomCards(),
            ],
          ),
        ),
      ),
    );
  }
}
