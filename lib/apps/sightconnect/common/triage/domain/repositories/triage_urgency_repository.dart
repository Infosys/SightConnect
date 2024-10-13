/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';

import '../models/enums/triage_enums.dart';

abstract class TriageUrgencyRepository {
  double totalTriageUrgency(
    double quessionnaireUrgency,
    double visualAcuityUrgency,
    double eyeScanUrgency,
  );
  TriageUrgency maxTotalUrgency(
    double quessionnaireUrgency,
    double visualAcuityUrgency,
    double eyeScanUrgency,
  );
  double questionnaireUrgency(
    List<PostTriageQuestionModel> questionnaireResponse,
  );
  double visualAcuityUrgency(
    List<PostTriageObservationsModel> visionAcuityResponse,
  );

  double eyeScanUrgency(
    List<PostTriageImagingSelectionModel> eyeScanResponse,
  );
  TriageUrgency mapScoreToUrgency(double score);
  double mapUrgencyToScore(TriageUrgency urgency);
}
