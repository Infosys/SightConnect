/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/models/triage_response_dto.dart';

import '../../domain/models/assessment_timeline_view_model.dart';

abstract class AssessmentTimelineRepository {
  Future<List<AssessmentTimelineViewModel>> getAssessmentTimeline(
      int encounterId);

  Future<List<Encounter>> getEncounters(int patientId);
  // Future<TriageReportDetailedEntity> getTriageDetailedReport(int reportId);
}
