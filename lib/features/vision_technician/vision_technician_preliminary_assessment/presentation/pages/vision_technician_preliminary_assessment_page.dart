import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/eye_scan_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_ivr_call.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_questions.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_recommendation.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_vision_center.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_visual_acuity.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianPreliminaryAssessmentPage extends HookConsumerWidget {
  const VisionTechnicianPreliminaryAssessmentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedOption = useState("Yes");
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: ElevatedButton(
          onPressed: () async {},
          child: Text(
            "Submit",
            style: applyRobotoFont(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColor.white,
            ),
          ),
        ),
      ),
      appBar: const CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: Text('Preliminary Assessment'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            children: [
              // const PreliminaryAssessmentCard(),

              // const PreliminaryAssessmentIvrCard(),
              const SizedBox(height: AppSize.klheight),
              PreliminaryAssessmentIvrCall(
                onSelectedOptionChanged: (value) {
                  selectedOption.value = value;
                },
                intialValue: selectedOption.value,
              ),
              if (selectedOption.value == "No")
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: AppSize.klheight),
                    PreliminaryAssessmentQuestions(),
                    SizedBox(height: AppSize.klheight),
                    EyeScanCard(),
                    SizedBox(height: AppSize.klheight),
                    PreliminaryAssessmentVisualAcuity(),
                  ],
                ),
              // const PreliminaryAssessmentRecommendation(),
              const SizedBox(height: AppSize.klheight),
              const PreliminaryAssessmentVisionCenter(),

              const SizedBox(height: AppSize.klheight * 3),
            ],
          ),
        ),
      ),
    );
  }
}
