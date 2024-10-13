/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_response_model.dart';

import '../../../../../../../services/failure.dart';

abstract class VTPreliminaryAssessmentRepository {
  Future<Either<Failure, TriageResponseModel>> saveTriage();
}
