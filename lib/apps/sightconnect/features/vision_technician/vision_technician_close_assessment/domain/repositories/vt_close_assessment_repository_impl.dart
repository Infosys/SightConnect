/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/data/contracts/vt_close_assessment_reposirtory.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/data/models/vt_close_assessment_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/data/source/vt_close_assessment_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtCloseAssessmentRepository = Provider((ref) =>
    VTCloseAssessmentRepositoryImpl(ref.watch(vtCloseAssessmentRemoteSource)));

class VTCloseAssessmentRepositoryImpl extends VTCloseAssessmentRepository {
  VTCloseAssessmentRemoteSource remoteDataSource;
  VTCloseAssessmentRepositoryImpl(this.remoteDataSource);

  @override
  Future<void> submitCloseAssessmentInfo(CloseAssessmentDto patientDetails) {
    return remoteDataSource.submitCloseAssessmentInfo(patientDetails);
  }
}
