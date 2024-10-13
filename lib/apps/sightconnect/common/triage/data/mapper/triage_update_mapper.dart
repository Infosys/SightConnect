/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_response_model.dart';

class TriageUpdateMapper {
  TriageUpdateMapper();

  static TriageResponseModel toResponseModel(Map<String, dynamic> map) {
    return TriageResponseModel(
      assessmentCode: map['assessmentCode'],
      assessmentVersion: map['assessmentVersion'],
      cummulativeScore: map['cummulativeScore'],
      encounterId: map['encounterId'],
      imagingSelection: map['imagingSelection'],
      incompleteSection: map['incompleteSection'],
      issued: map['issued'],
      observations: map['observations'],
      organizationCode: map['organizationCode'],
      tenantCode: map['tenantCode'],
      patientId: map['patientId'],
      performer: map['performer'],
      questionResponse: map['questionResponse'],
      score: map['score'],
      source: map['source'],
      serviceType: map['serviceType'],
      sourceVersion: map['sourceVersion'],
      userStartDate: map['userStartDate'],
    );
  }
}
