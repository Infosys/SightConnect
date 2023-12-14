import 'package:flutter/material.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

var preliminaryAssessmentViewModelProvider =
    ChangeNotifierProvider<PreliminaryAssessmentViewModel>((ref) =>
        PreliminaryAssessmentViewModel(
            ref.read(preliminaryAssessmentHelperProvider)));

class PreliminaryAssessmentViewModel extends ChangeNotifier {
  final PreliminaryAssessmentHelperNotifier
      _preliminaryAssessmentHelperNotifier;
  PreliminaryAssessmentViewModel(this._preliminaryAssessmentHelperNotifier);
}
