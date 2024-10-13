/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_appointments/data/models/uhi_search_model.dart';

abstract class PatientAppointmentRepository {
  Future<bool> sendAppointmentDetails(UhiSearchModel uhiSearchModel);
}
