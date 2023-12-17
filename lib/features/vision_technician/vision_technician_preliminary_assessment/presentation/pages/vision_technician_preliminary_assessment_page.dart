import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/eye_scan_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_dashboard/presentation/provider/vision_technician_dashboard_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_ivr_call.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_ivr_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_questions.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_vision_center.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/preliminary_assessment_recommendation.dart';

class VisionTechnicianPreliminaryAssessmentPage extends ConsumerStatefulWidget {
  const VisionTechnicianPreliminaryAssessmentPage({super.key});

  @override
  ConsumerState<VisionTechnicianPreliminaryAssessmentPage> createState() =>
      _VisionTechnicianPreliminaryAssessmentPageState();
}

class _VisionTechnicianPreliminaryAssessmentPageState
    extends ConsumerState<VisionTechnicianPreliminaryAssessmentPage> {
  final _formKey = GlobalKey<FormState>();
  String selectedOption = "Yes";
  bool isWidgetVisible = true;
  void updateVisibility(String selectedOptionNew) {
    setState(
      () {
        selectedOption = selectedOptionNew;
        isWidgetVisible = (selectedOption == "Yes") ? true : false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
      appBar: CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: const Text('Preliminary Assessment'),
        leadingIcon: IconButton(
          onPressed: () {
            ref.read(visionTechnicianDashboardProvider).changeIndex(0);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.kmpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // const PreliminaryAssessmentCard(),
                const SizedBox(height: AppSize.klheight),
                const PreliminaryAssessmentIvrCard(),
                const SizedBox(height: AppSize.klheight),
                PreliminaryAssessmentIvrCall(
                  selectedOption: selectedOption,
                  onSelectedOptionChanged: updateVisibility,
                ),
                const PreliminaryAssessmentQuestions(),
                const SizedBox(height: AppSize.klheight),
                const EyeScanCard(),
                const SizedBox(height: AppSize.klheight),
                const PreliminaryAssessmentRecommendation(),
                const SizedBox(height: AppSize.klheight),
                const PreliminaryAssessmentVisionCenter(),
                const SizedBox(height: AppSize.klheight)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
