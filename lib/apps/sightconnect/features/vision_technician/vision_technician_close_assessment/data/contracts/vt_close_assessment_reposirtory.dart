/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/data/models/vt_close_assessment_model.dart';

abstract class VTCloseAssessmentRepository {
  Future<void> submitCloseAssessmentInfo(CloseAssessmentDto patientDetails);
}
