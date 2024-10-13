/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';

abstract class VTRegistrationRepository {
  Future<List<VisionGuardianEventPatientResponseModel>> getPatientByNumber(
      String query);
}
